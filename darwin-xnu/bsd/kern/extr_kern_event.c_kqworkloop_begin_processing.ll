; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkloop_begin_processing.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkloop_begin_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqworkloop = type { i32, i64, i32*, %struct.kqueue, %struct.kqrequest }
%struct.kqueue = type { i32 }
%struct.kqrequest = type { i64, i32, i32, i32 }

@THREAD_QOS_UNSPECIFIED = common dso_local global i64 0, align 8
@KQWL_UTQ_NONE = common dso_local global i32 0, align 4
@BSD_KEVENT_KQWL_PROCESS_BEGIN = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@KQ_PROCESSING = common dso_local global i32 0, align 4
@KQWL_UTQ_RESET_WAKEUP_OVERRIDE = common dso_local global i32 0, align 4
@KEVENT_FLAG_PARKING = common dso_local global i32 0, align 4
@KQR_THOVERCOMMIT = common dso_local global i32 0, align 4
@KQWL_UTQ_PARKING = common dso_local global i32 0, align 4
@KQWL_UTQ_UNBINDING = common dso_local global i32 0, align 4
@KQUEUE_CANT_BE_LAST_REF = common dso_local global i32 0, align 4
@KQWL_BUCKET_STAYACTIVE = common dso_local global i64 0, align 8
@KQR_WAKEUP = common dso_local global i32 0, align 4
@KQWL_STAYACTIVE_FIRED_BIT = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kqworkloop*, i32)* @kqworkloop_begin_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kqworkloop_begin_processing(%struct.kqworkloop* %0, i32 %1) #0 {
  %3 = alloca %struct.kqworkloop*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kqrequest*, align 8
  %6 = alloca %struct.kqueue*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kqworkloop* %0, %struct.kqworkloop** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %13 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %12, i32 0, i32 4
  store %struct.kqrequest* %13, %struct.kqrequest** %5, align 8
  %14 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %15 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %14, i32 0, i32 3
  store %struct.kqueue* %15, %struct.kqueue** %6, align 8
  %16 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %18 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load i32, i32* @KQWL_UTQ_NONE, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %22 = call i32 @kqlock_held(%struct.kqueue* %21)
  %23 = load i32, i32* @BSD_KEVENT_KQWL_PROCESS_BEGIN, align 4
  %24 = call i32 @KEV_EVTID(i32 %23)
  %25 = load i32, i32* @DBG_FUNC_START, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %28 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @KDBG_FILTERED(i32 %26, i32 %29, i32 0, i32 0)
  %31 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %32 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @KQ_PROCESSING, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* @KQ_PROCESSING, align 4
  %40 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %41 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %45 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %44, i32 0, i32 3
  %46 = call i32 @TAILQ_EMPTY(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %2
  %49 = load i32, i32* @KQWL_UTQ_RESET_WAKEUP_OVERRIDE, align 4
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %48, %2
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @KEVENT_FLAG_PARKING, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %57 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @KQR_THOVERCOMMIT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @KQWL_UTQ_PARKING, align 4
  store i32 %63, i32* %11, align 4
  br label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @KQWL_UTQ_UNBINDING, align 4
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %64, %62
  br label %67

67:                                               ; preds = %66, %50
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @KQWL_UTQ_NONE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %165

72:                                               ; preds = %67
  %73 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %74 = call i64 @kqworkloop_acknowledge_events(%struct.kqworkloop* %73)
  store i64 %74, i64* %8, align 8
  %75 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %76 = call i32 @kq_req_lock(%struct.kqworkloop* %75)
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @KQWL_UTQ_UNBINDING, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %72
  %81 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %82 = load i64, i64* %9, align 8
  %83 = call i64 @kqworkloop_unbind_locked(%struct.kqworkloop* %81, i64 %82)
  store i64 %83, i64* %7, align 8
  %84 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %85 = load i32, i32* @KQUEUE_CANT_BE_LAST_REF, align 4
  %86 = call i32 @kqueue_release(%struct.kqworkloop* %84, i32 %85)
  br label %87

87:                                               ; preds = %80, %72
  %88 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @kqworkloop_update_threads_qos(%struct.kqworkloop* %88, i32 %89, i64 %90)
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @KQWL_UTQ_PARKING, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %125

95:                                               ; preds = %87
  %96 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %97 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @KQWL_BUCKET_STAYACTIVE, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = call i32 @TAILQ_EMPTY(i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %95
  br label %124

104:                                              ; preds = %95
  %105 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %106 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @KQR_WAKEUP, align 4
  %109 = and i32 %107, %108
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %104
  %112 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %113 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %111, %104
  %117 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %118 = load i64, i64* %9, align 8
  %119 = call i64 @kqworkloop_unbind_locked(%struct.kqworkloop* %117, i64 %118)
  store i64 %119, i64* %7, align 8
  %120 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %121 = load i32, i32* @KQUEUE_CANT_BE_LAST_REF, align 4
  %122 = call i32 @kqueue_release(%struct.kqworkloop* %120, i32 %121)
  store i32 -1, i32* %10, align 4
  br label %123

123:                                              ; preds = %116, %111
  br label %124

124:                                              ; preds = %123, %103
  br label %139

125:                                              ; preds = %87
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @KQWL_UTQ_UNBINDING, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %125
  %130 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %131 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %9, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %137

136:                                              ; preds = %129
  store i32 -1, i32* %10, align 4
  br label %137

137:                                              ; preds = %136, %135
  br label %138

138:                                              ; preds = %137, %125
  br label %139

139:                                              ; preds = %138, %124
  %140 = load i32, i32* %10, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %139
  %143 = load i32, i32* @KQWL_STAYACTIVE_FIRED_BIT, align 4
  %144 = xor i32 %143, -1
  %145 = load %struct.kqrequest*, %struct.kqrequest** %5, align 8
  %146 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, %144
  store i32 %148, i32* %146, align 4
  br label %156

149:                                              ; preds = %139
  %150 = load i32, i32* @KQ_PROCESSING, align 4
  %151 = xor i32 %150, -1
  %152 = load %struct.kqueue*, %struct.kqueue** %6, align 8
  %153 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %149, %142
  %157 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %158 = call i32 @kq_req_unlock(%struct.kqworkloop* %157)
  %159 = load i64, i64* %7, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i64, i64* %9, align 8
  %163 = call i32 @thread_drop_ipc_override(i64 %162)
  br label %164

164:                                              ; preds = %161, %156
  br label %165

165:                                              ; preds = %164, %71
  %166 = load i32, i32* @BSD_KEVENT_KQWL_PROCESS_BEGIN, align 4
  %167 = call i32 @KEV_EVTID(i32 %166)
  %168 = load i32, i32* @DBG_FUNC_END, align 4
  %169 = or i32 %167, %168
  %170 = load %struct.kqworkloop*, %struct.kqworkloop** %3, align 8
  %171 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @KDBG_FILTERED(i32 %169, i32 %172, i32 0, i32 0)
  %174 = load i32, i32* %10, align 4
  ret i32 %174
}

declare dso_local i32 @kqlock_held(%struct.kqueue*) #1

declare dso_local i32 @KDBG_FILTERED(i32, i32, i32, i32) #1

declare dso_local i32 @KEV_EVTID(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i64 @kqworkloop_acknowledge_events(%struct.kqworkloop*) #1

declare dso_local i32 @kq_req_lock(%struct.kqworkloop*) #1

declare dso_local i64 @kqworkloop_unbind_locked(%struct.kqworkloop*, i64) #1

declare dso_local i32 @kqueue_release(%struct.kqworkloop*, i32) #1

declare dso_local i32 @kqworkloop_update_threads_qos(%struct.kqworkloop*, i32, i64) #1

declare dso_local i32 @kq_req_unlock(%struct.kqworkloop*) #1

declare dso_local i32 @thread_drop_ipc_override(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
