; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_main_input_thread_func.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_main_input_thread_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlil_threading_info = type { i64, i32, i32, i64, i32, i32, i32* }
%struct.dlil_main_threading_info = type { i32 }
%struct.mbuf = type { i32 }

@dlil_main_input_thread = common dso_local global %struct.dlil_threading_info* null, align 8
@IFNET_MODEL_INPUT_POLL_OFF = common dso_local global i64 0, align 8
@DLIL_INPUT_RUNNING = common dso_local global i32 0, align 4
@PZERO = common dso_local global i32 0, align 4
@PSPIN = common dso_local global i32 0, align 4
@DLIL_INPUT_WAITING = common dso_local global i32 0, align 4
@DLIL_INPUT_TERMINATE = common dso_local global i32 0, align 4
@DLIL_PROTO_WAITING = common dso_local global i32 0, align 4
@DLIL_PROTO_REGISTER = common dso_local global i32 0, align 4
@lo_ifp = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @dlil_main_input_thread_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline noreturn nounwind optnone uwtable
define internal void @dlil_main_input_thread_func(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dlil_main_threading_info*, align 8
  %6 = alloca %struct.dlil_threading_info*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.dlil_main_threading_info*
  store %struct.dlil_main_threading_info* %13, %struct.dlil_main_threading_info** %5, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.dlil_threading_info*
  store %struct.dlil_threading_info* %15, %struct.dlil_threading_info** %6, align 8
  %16 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %17 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** @dlil_main_input_thread, align 8
  %18 = icmp eq %struct.dlil_threading_info* %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @VERIFY(i32 %19)
  %21 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %22 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %21, i32 0, i32 6
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @VERIFY(i32 %25)
  %27 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %28 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IFNET_MODEL_INPUT_POLL_OFF, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @VERIFY(i32 %32)
  br label %34

34:                                               ; preds = %2, %136
  store %struct.mbuf* null, %struct.mbuf** %7, align 8
  store %struct.mbuf* null, %struct.mbuf** %8, align 8
  %35 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %36 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %35, i32 0, i32 2
  %37 = call i32 @lck_mtx_lock_spin(i32* %36)
  br label %38

38:                                               ; preds = %47, %34
  %39 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %40 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DLIL_INPUT_RUNNING, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %66

47:                                               ; preds = %38
  %48 = load i32, i32* @DLIL_INPUT_RUNNING, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %51 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %55 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %54, i32 0, i32 1
  %56 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %57 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %56, i32 0, i32 2
  %58 = load i32, i32* @PZERO, align 4
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* @PSPIN, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %63 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @msleep(i32* %55, i32* %57, i32 %61, i32 %64, i32* null)
  br label %38

66:                                               ; preds = %38
  %67 = load i32, i32* @DLIL_INPUT_RUNNING, align 4
  %68 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %69 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load i32, i32* @DLIL_INPUT_WAITING, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %75 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %79 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @DLIL_INPUT_TERMINATE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @VERIFY(i32 %85)
  %87 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %88 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @DLIL_PROTO_WAITING, align 4
  %91 = load i32, i32* @DLIL_PROTO_REGISTER, align 4
  %92 = or i32 %90, %91
  %93 = and i32 %89, %92
  store i32 %93, i32* %11, align 4
  %94 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %95 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %94, i32 0, i32 4
  %96 = call i32 @qlen(i32* %95)
  store i32 %96, i32* %9, align 4
  %97 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %98 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %97, i32 0, i32 4
  %99 = call %struct.mbuf* @_getq_all(i32* %98, i32* null, i32* null, i32* null)
  store %struct.mbuf* %99, %struct.mbuf** %7, align 8
  %100 = load %struct.dlil_main_threading_info*, %struct.dlil_main_threading_info** %5, align 8
  %101 = getelementptr inbounds %struct.dlil_main_threading_info, %struct.dlil_main_threading_info* %100, i32 0, i32 0
  %102 = call i32 @qlen(i32* %101)
  store i32 %102, i32* %10, align 4
  %103 = load %struct.dlil_main_threading_info*, %struct.dlil_main_threading_info** %5, align 8
  %104 = getelementptr inbounds %struct.dlil_main_threading_info, %struct.dlil_main_threading_info* %103, i32 0, i32 0
  %105 = call %struct.mbuf* @_getq_all(i32* %104, i32* null, i32* null, i32* null)
  store %struct.mbuf* %105, %struct.mbuf** %8, align 8
  %106 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %107 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %106, i32 0, i32 3
  store i64 0, i64* %107, align 8
  %108 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %109 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %108, i32 0, i32 2
  %110 = call i32 @lck_mtx_unlock(i32* %109)
  %111 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %112 = icmp ne %struct.mbuf* %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %66
  %114 = load i32*, i32** @lo_ifp, align 8
  %115 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %118 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @dlil_input_packet_list_extended(i32* %114, %struct.mbuf* %115, i32 %116, i64 %119)
  br label %121

121:                                              ; preds = %113, %66
  %122 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %123 = icmp ne %struct.mbuf* %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %6, align 8
  %128 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @dlil_input_packet_list_extended(i32* null, %struct.mbuf* %125, i32 %126, i64 %129)
  br label %131

131:                                              ; preds = %124, %121
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = call i32 (...) @proto_input_run()
  br label %136

136:                                              ; preds = %134, %131
  br label %34
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @qlen(i32*) #1

declare dso_local %struct.mbuf* @_getq_all(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @dlil_input_packet_list_extended(i32*, %struct.mbuf*, i32, i64) #1

declare dso_local i32 @proto_input_run(...) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
