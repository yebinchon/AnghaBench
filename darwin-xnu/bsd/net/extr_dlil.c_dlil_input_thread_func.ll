; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_input_thread_func.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_input_thread_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlil_threading_info = type { i64, i32, i32, i64, i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i8*, i32 }
%struct.mbuf = type { i32 }

@MAXTHREADNAMESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"dlil_input_%s\00", align 1
@dlil_main_input_thread = common dso_local global %struct.dlil_threading_info* null, align 8
@IFEF_RXPOLL = common dso_local global i32 0, align 4
@net_rxpoll = common dso_local global i32 0, align 4
@IFNET_MODEL_INPUT_POLL_OFF = common dso_local global i64 0, align 8
@DLIL_INPUT_RUNNING = common dso_local global i32 0, align 4
@PZERO = common dso_local global i32 0, align 4
@PSPIN = common dso_local global i32 0, align 4
@DLIL_INPUT_WAITING = common dso_local global i32 0, align 4
@DLIL_PROTO_WAITING = common dso_local global i32 0, align 4
@DLIL_PROTO_REGISTER = common dso_local global i32 0, align 4
@DLIL_INPUT_TERMINATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @dlil_input_thread_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlil_input_thread_func(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dlil_threading_info*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @MAXTHREADNAMESIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = bitcast i8* %15 to %struct.dlil_threading_info*
  store %struct.dlil_threading_info* %16, %struct.dlil_threading_info** %7, align 8
  %17 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %7, align 8
  %18 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %17, i32 0, i32 7
  %19 = load %struct.ifnet*, %struct.ifnet** %18, align 8
  store %struct.ifnet* %19, %struct.ifnet** %8, align 8
  %20 = trunc i64 %12 to i32
  %21 = call i32 @bzero(i8* %14, i32 %20)
  %22 = trunc i64 %12 to i32
  %23 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %24 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @snprintf(i8* %14, i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %7, align 8
  %28 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @thread_set_thread_name(i32 %29, i8* %14)
  %31 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %7, align 8
  %32 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** @dlil_main_input_thread, align 8
  %33 = icmp ne %struct.dlil_threading_info* %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @VERIFY(i32 %34)
  %36 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %37 = icmp ne %struct.ifnet* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @VERIFY(i32 %38)
  %40 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IFEF_RXPOLL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %2
  %47 = load i32, i32* @net_rxpoll, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br label %50

50:                                               ; preds = %46, %2
  %51 = phi i1 [ true, %2 ], [ %49, %46 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @VERIFY(i32 %52)
  %54 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %7, align 8
  %55 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IFNET_MODEL_INPUT_POLL_OFF, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @VERIFY(i32 %59)
  br label %61

61:                                               ; preds = %160, %50
  br label %62

62:                                               ; preds = %61
  store %struct.mbuf* null, %struct.mbuf** %9, align 8
  %63 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %7, align 8
  %64 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %63, i32 0, i32 2
  %65 = call i32 @lck_mtx_lock_spin(i32* %64)
  br label %66

66:                                               ; preds = %75, %62
  %67 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %7, align 8
  %68 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @DLIL_INPUT_RUNNING, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br i1 %74, label %75, label %94

75:                                               ; preds = %66
  %76 = load i32, i32* @DLIL_INPUT_RUNNING, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %7, align 8
  %79 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %7, align 8
  %83 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %82, i32 0, i32 1
  %84 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %7, align 8
  %85 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %84, i32 0, i32 2
  %86 = load i32, i32* @PZERO, align 4
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* @PSPIN, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %7, align 8
  %91 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @msleep(i32* %83, i32* %85, i32 %89, i32 %92, i32* null)
  br label %66

94:                                               ; preds = %66
  %95 = load i32, i32* @DLIL_INPUT_RUNNING, align 4
  %96 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %7, align 8
  %97 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load i32, i32* @DLIL_INPUT_WAITING, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %7, align 8
  %103 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %7, align 8
  %107 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @DLIL_PROTO_WAITING, align 4
  %110 = load i32, i32* @DLIL_PROTO_REGISTER, align 4
  %111 = or i32 %109, %110
  %112 = and i32 %108, %111
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i32 @VERIFY(i32 %115)
  %117 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %7, align 8
  %118 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %117, i32 0, i32 4
  %119 = call i32 @qlen(i32* %118)
  store i32 %119, i32* %10, align 4
  %120 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %7, align 8
  %121 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %120, i32 0, i32 4
  %122 = call %struct.mbuf* @_getq_all(i32* %121, i32* null, i32* null, i32* null)
  store %struct.mbuf* %122, %struct.mbuf** %9, align 8
  %123 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %7, align 8
  %124 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @DLIL_INPUT_TERMINATE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %94
  %130 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %7, align 8
  %131 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %130, i32 0, i32 2
  %132 = call i32 @lck_mtx_unlock(i32* %131)
  %133 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %134 = icmp ne %struct.mbuf* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %137 = call i32 @mbuf_freem_list(%struct.mbuf* %136)
  br label %138

138:                                              ; preds = %135, %129
  %139 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %7, align 8
  %140 = call i32 @dlil_terminate_input_thread(%struct.dlil_threading_info* %139)
  %141 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %141)
  ret void

142:                                              ; preds = %94
  %143 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %7, align 8
  %144 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %143, i32 0, i32 3
  store i64 0, i64* %144, align 8
  %145 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %146 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %7, align 8
  %147 = call i32 @dlil_input_stats_sync(%struct.ifnet* %145, %struct.dlil_threading_info* %146)
  %148 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %7, align 8
  %149 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %148, i32 0, i32 2
  %150 = call i32 @lck_mtx_unlock(i32* %149)
  %151 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %152 = icmp ne %struct.mbuf* %151, null
  br i1 %152, label %153, label %160

153:                                              ; preds = %142
  %154 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %7, align 8
  %157 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @dlil_input_packet_list_extended(i32* null, %struct.mbuf* %154, i32 %155, i64 %158)
  br label %160

160:                                              ; preds = %153, %142
  br label %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bzero(i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @thread_set_thread_name(i32, i8*) #2

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i32 @lck_mtx_lock_spin(i32*) #2

declare dso_local i32 @msleep(i32*, i32*, i32, i32, i32*) #2

declare dso_local i32 @qlen(i32*) #2

declare dso_local %struct.mbuf* @_getq_all(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @lck_mtx_unlock(i32*) #2

declare dso_local i32 @mbuf_freem_list(%struct.mbuf*) #2

declare dso_local i32 @dlil_terminate_input_thread(%struct.dlil_threading_info*) #2

declare dso_local i32 @dlil_input_stats_sync(%struct.ifnet*, %struct.dlil_threading_info*) #2

declare dso_local i32 @dlil_input_packet_list_extended(i32*, %struct.mbuf*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
