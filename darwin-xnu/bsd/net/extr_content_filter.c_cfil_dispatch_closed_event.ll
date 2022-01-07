; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_dispatch_closed_event.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_dispatch_closed_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.socket = type { i32 }
%struct.cfil_info = type { %struct.TYPE_10__, i32, i32, i32, %struct.cfil_entry* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.cfil_entry = type { i32, %struct.content_filter*, %struct.TYPE_6__*, i32 }
%struct.content_filter = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.cfil_msg_sock_closed = type { %struct.TYPE_8__, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@cfil_lck_rw = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"so %llx kcunit %d\00", align 1
@CFF_FLOW_CONTROLLED = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i64 0, align 8
@CFEF_SENT_SOCK_CLOSED = common dso_local global i32 0, align 4
@CFEF_SENT_SOCK_ATTACHED = common dso_local global i32 0, align 4
@CFM_OP_SOCKET_CLOSED = common dso_local global i32 0, align 4
@CFM_VERSION_CURRENT = common dso_local global i32 0, align 4
@CFM_TYPE_EVENT = common dso_local global i32 0, align 4
@CFI_MAX_TIME_LOG_ENTRY = common dso_local global i32 0, align 4
@CTL_DATA_EOR = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ctl_enqueuedata() failed: %d\00", align 1
@cfil_stats = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@CFEF_FLOW_CONTROLLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfil_dispatch_closed_event(%struct.socket* %0, %struct.cfil_info* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.cfil_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfil_entry*, align 8
  %8 = alloca %struct.cfil_msg_sock_closed, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.content_filter*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.cfil_info* %1, %struct.cfil_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %9, align 8
  %11 = load %struct.socket*, %struct.socket** %4, align 8
  %12 = call i32 @socket_lock_assert_owned(%struct.socket* %11)
  %13 = call i32 @cfil_rw_lock_shared(i32* @cfil_lck_rw)
  %14 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %15 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %14, i32 0, i32 4
  %16 = load %struct.cfil_entry*, %struct.cfil_entry** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %16, i64 %19
  store %struct.cfil_entry* %20, %struct.cfil_entry** %7, align 8
  %21 = load %struct.cfil_entry*, %struct.cfil_entry** %7, align 8
  %22 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %21, i32 0, i32 1
  %23 = load %struct.content_filter*, %struct.content_filter** %22, align 8
  store %struct.content_filter* %23, %struct.content_filter** %10, align 8
  %24 = load %struct.content_filter*, %struct.content_filter** %10, align 8
  %25 = icmp eq %struct.content_filter* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %150

27:                                               ; preds = %3
  %28 = load i32, i32* @LOG_INFO, align 4
  %29 = load %struct.socket*, %struct.socket** %4, align 8
  %30 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %29)
  %31 = trunc i64 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i32, i8*, i64, ...) @CFIL_LOG(i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %32, i32 %33)
  %35 = load %struct.content_filter*, %struct.content_filter** %10, align 8
  %36 = getelementptr inbounds %struct.content_filter, %struct.content_filter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CFF_FLOW_CONTROLLED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load i64, i64* @ENOBUFS, align 8
  store i64 %42, i64* %9, align 8
  br label %150

43:                                               ; preds = %27
  %44 = load %struct.cfil_entry*, %struct.cfil_entry** %7, align 8
  %45 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @CFEF_SENT_SOCK_CLOSED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %150

51:                                               ; preds = %43
  %52 = load %struct.cfil_entry*, %struct.cfil_entry** %7, align 8
  %53 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @CFEF_SENT_SOCK_ATTACHED, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %150

59:                                               ; preds = %51
  %60 = load %struct.cfil_entry*, %struct.cfil_entry** %7, align 8
  %61 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %60, i32 0, i32 3
  %62 = call i32 @microuptime(i32* %61)
  %63 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %64 = load %struct.cfil_entry*, %struct.cfil_entry** %7, align 8
  %65 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %64, i32 0, i32 3
  %66 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %67 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %66, i32 0, i32 0
  %68 = load i32, i32* @CFM_OP_SOCKET_CLOSED, align 4
  %69 = call i32 @CFI_ADD_TIME_LOG(%struct.cfil_info* %63, i32* %65, %struct.TYPE_10__* %67, i32 %68)
  %70 = call i32 @bzero(%struct.cfil_msg_sock_closed* %8, i32 40)
  %71 = getelementptr inbounds %struct.cfil_msg_sock_closed, %struct.cfil_msg_sock_closed* %8, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store i32 40, i32* %72, align 4
  %73 = load i32, i32* @CFM_VERSION_CURRENT, align 4
  %74 = getelementptr inbounds %struct.cfil_msg_sock_closed, %struct.cfil_msg_sock_closed* %8, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @CFM_TYPE_EVENT, align 4
  %77 = getelementptr inbounds %struct.cfil_msg_sock_closed, %struct.cfil_msg_sock_closed* %8, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @CFM_OP_SOCKET_CLOSED, align 4
  %80 = getelementptr inbounds %struct.cfil_msg_sock_closed, %struct.cfil_msg_sock_closed* %8, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.cfil_entry*, %struct.cfil_entry** %7, align 8
  %83 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %82, i32 0, i32 2
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.cfil_msg_sock_closed, %struct.cfil_msg_sock_closed* %8, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %90 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.cfil_msg_sock_closed, %struct.cfil_msg_sock_closed* %8, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %96 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.cfil_msg_sock_closed, %struct.cfil_msg_sock_closed* %8, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = getelementptr inbounds %struct.cfil_msg_sock_closed, %struct.cfil_msg_sock_closed* %8, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %104 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @CFI_MAX_TIME_LOG_ENTRY, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 4, %107
  %109 = trunc i64 %108 to i32
  %110 = call i32 @memcpy(i32 %102, i32 %105, i32 %109)
  %111 = getelementptr inbounds %struct.cfil_msg_sock_closed, %struct.cfil_msg_sock_closed* %8, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %114 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @CFI_MAX_TIME_LOG_ENTRY, align 4
  %117 = sext i32 %116 to i64
  %118 = mul i64 1, %117
  %119 = trunc i64 %118 to i32
  %120 = call i32 @memcpy(i32 %112, i32 %115, i32 %119)
  %121 = load %struct.cfil_info*, %struct.cfil_info** %5, align 8
  %122 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = getelementptr inbounds %struct.cfil_msg_sock_closed, %struct.cfil_msg_sock_closed* %8, i32 0, i32 1
  store i32 %123, i32* %124, align 4
  %125 = load %struct.cfil_entry*, %struct.cfil_entry** %7, align 8
  %126 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %125, i32 0, i32 1
  %127 = load %struct.content_filter*, %struct.content_filter** %126, align 8
  %128 = getelementptr inbounds %struct.content_filter, %struct.content_filter* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.cfil_entry*, %struct.cfil_entry** %7, align 8
  %131 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %130, i32 0, i32 1
  %132 = load %struct.content_filter*, %struct.content_filter** %131, align 8
  %133 = getelementptr inbounds %struct.content_filter, %struct.content_filter* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @CTL_DATA_EOR, align 4
  %136 = call i64 @ctl_enqueuedata(i32 %129, i32 %134, %struct.cfil_msg_sock_closed* %8, i32 40, i32 %135)
  store i64 %136, i64* %9, align 8
  %137 = load i64, i64* %9, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %59
  %140 = load i32, i32* @LOG_ERR, align 4
  %141 = load i64, i64* %9, align 8
  %142 = call i32 (i32, i8*, i64, ...) @CFIL_LOG(i32 %140, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %141)
  br label %150

143:                                              ; preds = %59
  %144 = load i32, i32* @CFEF_SENT_SOCK_CLOSED, align 4
  %145 = load %struct.cfil_entry*, %struct.cfil_entry** %7, align 8
  %146 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cfil_stats, i32 0, i32 2))
  br label %150

150:                                              ; preds = %143, %139, %58, %50, %41, %26
  %151 = load i64, i64* %9, align 8
  %152 = load i64, i64* @ENOBUFS, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %172

154:                                              ; preds = %150
  %155 = load i32, i32* @CFEF_FLOW_CONTROLLED, align 4
  %156 = load %struct.cfil_entry*, %struct.cfil_entry** %7, align 8
  %157 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 8
  %160 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cfil_stats, i32 0, i32 1))
  %161 = call i32 @cfil_rw_lock_shared_to_exclusive(i32* @cfil_lck_rw)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %154
  %164 = call i32 @cfil_rw_lock_exclusive(i32* @cfil_lck_rw)
  br label %165

165:                                              ; preds = %163, %154
  %166 = load i32, i32* @CFF_FLOW_CONTROLLED, align 4
  %167 = load %struct.content_filter*, %struct.content_filter** %10, align 8
  %168 = getelementptr inbounds %struct.content_filter, %struct.content_filter* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  %171 = call i32 @cfil_rw_unlock_exclusive(i32* @cfil_lck_rw)
  br label %179

172:                                              ; preds = %150
  %173 = load i64, i64* %9, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %172
  %176 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cfil_stats, i32 0, i32 0))
  br label %177

177:                                              ; preds = %175, %172
  %178 = call i32 @cfil_rw_unlock_shared(i32* @cfil_lck_rw)
  br label %179

179:                                              ; preds = %177, %165
  %180 = load i64, i64* %9, align 8
  %181 = trunc i64 %180 to i32
  ret i32 %181
}

declare dso_local i32 @socket_lock_assert_owned(%struct.socket*) #1

declare dso_local i32 @cfil_rw_lock_shared(i32*) #1

declare dso_local i32 @CFIL_LOG(i32, i8*, i64, ...) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.socket*) #1

declare dso_local i32 @microuptime(i32*) #1

declare dso_local i32 @CFI_ADD_TIME_LOG(%struct.cfil_info*, i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @bzero(%struct.cfil_msg_sock_closed*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @ctl_enqueuedata(i32, i32, %struct.cfil_msg_sock_closed*, i32, i32) #1

declare dso_local i32 @OSIncrementAtomic(i32*) #1

declare dso_local i32 @cfil_rw_lock_shared_to_exclusive(i32*) #1

declare dso_local i32 @cfil_rw_lock_exclusive(i32*) #1

declare dso_local i32 @cfil_rw_unlock_exclusive(i32*) #1

declare dso_local i32 @cfil_rw_unlock_shared(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
