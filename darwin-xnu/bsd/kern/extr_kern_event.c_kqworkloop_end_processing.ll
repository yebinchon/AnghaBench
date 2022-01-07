; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkloop_end_processing.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkloop_end_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqworkloop = type { i32, i32, i32*, %struct.kqrequest, %struct.kqueue }
%struct.kqrequest = type { i32, i32, i32 }
%struct.kqueue = type { i32 }

@THREAD_QOS_UNSPECIFIED = common dso_local global i64 0, align 8
@BSD_KEVENT_KQWL_PROCESS_END = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@KQ_PROCESSING = common dso_local global i32 0, align 4
@KQWL_BUCKET_STAYACTIVE = common dso_local global i64 0, align 8
@KQWL_UTQ_UPDATE_WAKEUP_QOS = common dso_local global i32 0, align 4
@KEVENT_FLAG_PARKING = common dso_local global i32 0, align 4
@KQWL_UTQ_PARKING = common dso_local global i32 0, align 4
@KQR_WAKEUP = common dso_local global i32 0, align 4
@KQWL_STAYACTIVE_FIRED_BIT = common dso_local global i32 0, align 4
@KQUEUE_CANT_BE_LAST_REF = common dso_local global i32 0, align 4
@KQR_R2K_NOTIF_ARMED = common dso_local global i32 0, align 4
@KQWL_UTQ_RECOMPUTE_WAKEUP_QOS = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kqworkloop*, i32, i32)* @kqworkloop_end_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kqworkloop_end_processing(%struct.kqworkloop* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kqworkloop*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kqueue*, align 8
  %8 = alloca %struct.kqrequest*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kqworkloop* %0, %struct.kqworkloop** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %14 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %13, i32 0, i32 4
  store %struct.kqueue* %14, %struct.kqueue** %7, align 8
  %15 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %16 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %15, i32 0, i32 3
  store %struct.kqrequest* %16, %struct.kqrequest** %8, align 8
  %17 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.kqrequest*, %struct.kqrequest** %8, align 8
  %19 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %22 = call i32 @kqlock_held(%struct.kqueue* %21)
  %23 = load i32, i32* @BSD_KEVENT_KQWL_PROCESS_END, align 4
  %24 = call i32 @KEV_EVTID(i32 %23)
  %25 = load i32, i32* @DBG_FUNC_START, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %28 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @KDBG_FILTERED(i32 %26, i32 %29, i32 0, i32 0)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @KQ_PROCESSING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %3
  %36 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %37 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @KQ_PROCESSING, align 4
  %40 = and i32 %38, %39
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %43 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @KQWL_BUCKET_STAYACTIVE, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = call i32 @TAILQ_EMPTY(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %35
  %50 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %51 = call i32 @kq_req_lock(%struct.kqworkloop* %50)
  %52 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %53 = load i32, i32* @KQWL_UTQ_UPDATE_WAKEUP_QOS, align 4
  %54 = load i64, i64* @KQWL_BUCKET_STAYACTIVE, align 8
  %55 = call i32 @kqworkloop_update_threads_qos(%struct.kqworkloop* %52, i32 %53, i64 %54)
  %56 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %57 = call i32 @kq_req_unlock(%struct.kqworkloop* %56)
  br label %58

58:                                               ; preds = %49, %35
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @KEVENT_FLAG_PARKING, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %65 = call i64 @kqworkloop_acknowledge_events(%struct.kqworkloop* %64)
  store i64 %65, i64* %10, align 8
  br label %66

66:                                               ; preds = %63, %58
  br label %67

67:                                               ; preds = %66, %3
  %68 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %69 = call i32 @kq_req_lock(%struct.kqworkloop* %68)
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @KEVENT_FLAG_PARKING, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %111

74:                                               ; preds = %67
  %75 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %76 = load i32, i32* @KQWL_UTQ_PARKING, align 4
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @kqworkloop_update_threads_qos(%struct.kqworkloop* %75, i32 %76, i64 %77)
  %79 = load %struct.kqrequest*, %struct.kqrequest** %8, align 8
  %80 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @KQR_WAKEUP, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %74
  %86 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %87 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* @KQWL_STAYACTIVE_FIRED_BIT, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.kqrequest*, %struct.kqrequest** %8, align 8
  %94 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 4
  store i32 -1, i32* %12, align 4
  br label %110

97:                                               ; preds = %85, %74
  %98 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i64 @kqworkloop_unbind_locked(%struct.kqworkloop* %98, i32 %99)
  store i64 %100, i64* %9, align 8
  %101 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %102 = load i32, i32* @KQUEUE_CANT_BE_LAST_REF, align 4
  %103 = call i32 @kqueue_release(%struct.kqworkloop* %101, i32 %102)
  %104 = load i32, i32* %5, align 4
  %105 = xor i32 %104, -1
  %106 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %107 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %97, %90
  br label %126

111:                                              ; preds = %67
  %112 = load i32, i32* %5, align 4
  %113 = xor i32 %112, -1
  %114 = load %struct.kqueue*, %struct.kqueue** %7, align 8
  %115 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* @KQR_R2K_NOTIF_ARMED, align 4
  %119 = load %struct.kqrequest*, %struct.kqrequest** %8, align 8
  %120 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  %123 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %124 = load i32, i32* @KQWL_UTQ_RECOMPUTE_WAKEUP_QOS, align 4
  %125 = call i32 @kqworkloop_update_threads_qos(%struct.kqworkloop* %123, i32 %124, i64 0)
  br label %126

126:                                              ; preds = %111, %110
  %127 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %128 = call i32 @kq_req_unlock(%struct.kqworkloop* %127)
  %129 = load i64, i64* %9, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @thread_drop_ipc_override(i32 %132)
  br label %134

134:                                              ; preds = %131, %126
  %135 = load i32, i32* @BSD_KEVENT_KQWL_PROCESS_END, align 4
  %136 = call i32 @KEV_EVTID(i32 %135)
  %137 = load i32, i32* @DBG_FUNC_END, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %140 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @KDBG_FILTERED(i32 %138, i32 %141, i32 0, i32 0)
  %143 = load i32, i32* %12, align 4
  ret i32 %143
}

declare dso_local i32 @kqlock_held(%struct.kqueue*) #1

declare dso_local i32 @KDBG_FILTERED(i32, i32, i32, i32) #1

declare dso_local i32 @KEV_EVTID(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @kq_req_lock(%struct.kqworkloop*) #1

declare dso_local i32 @kqworkloop_update_threads_qos(%struct.kqworkloop*, i32, i64) #1

declare dso_local i32 @kq_req_unlock(%struct.kqworkloop*) #1

declare dso_local i64 @kqworkloop_acknowledge_events(%struct.kqworkloop*) #1

declare dso_local i64 @kqworkloop_unbind_locked(%struct.kqworkloop*, i32) #1

declare dso_local i32 @kqueue_release(%struct.kqworkloop*, i32) #1

declare dso_local i32 @thread_drop_ipc_override(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
