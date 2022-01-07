; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_schedule_creator.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_schedule_creator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue = type { i64, i32, %struct.uthread*, i64, i32 }
%struct.uthread = type { %struct.TYPE_8__, %struct.workqueue* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32 }

@WORKQ_THREADREQ_CAN_CREATE_THREADS = common dso_local global i32 0, align 4
@TURNSTILE_INHERITOR_NULL = common dso_local global %struct.workqueue* null, align 8
@WORKQ_THREADREQ_CREATOR_SYNC_UPDATE = common dso_local global i32 0, align 4
@WORKQ_THREADREQ_CREATOR_TRANSFER = common dso_local global i32 0, align 4
@TURNSTILE_INHERITOR_WORKQ = common dso_local global i32 0, align 4
@TRACE_wq_creator_select = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@TURNSTILE_INHERITOR_THREAD = common dso_local global i32 0, align 4
@wq_max_threads = common dso_local global i64 0, align 8
@WORKQ_THREADREQ_SET_AST_ON_FAILURE = common dso_local global i32 0, align 4
@AST_KEVENT_REDRIVE_THREADREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.workqueue*, i32)* @workq_schedule_creator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @workq_schedule_creator(i64 %0, %struct.workqueue* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.workqueue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.uthread*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.workqueue* %1, %struct.workqueue** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %10 = call i32 @workq_lock_held(%struct.workqueue* %9)
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @WORKQ_THREADREQ_CAN_CREATE_THREADS, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br label %18

18:                                               ; preds = %13, %3
  %19 = phi i1 [ true, %3 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  br label %22

22:                                               ; preds = %170, %18
  %23 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %24 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %23, i32 0, i32 2
  %25 = load %struct.uthread*, %struct.uthread** %24, align 8
  store %struct.uthread* %25, %struct.uthread** %8, align 8
  %26 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %27 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %22
  %31 = load %struct.uthread*, %struct.uthread** %8, align 8
  %32 = icmp eq %struct.uthread* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %35 = load %struct.workqueue*, %struct.workqueue** @TURNSTILE_INHERITOR_NULL, align 8
  %36 = call i32 @workq_turnstile_update_inheritor(%struct.workqueue* %34, %struct.workqueue* %35, i32 0)
  br label %37

37:                                               ; preds = %33, %30
  br label %187

38:                                               ; preds = %22
  %39 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %40 = call %struct.TYPE_9__* @workq_threadreq_select_for_creator(%struct.workqueue* %39)
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %7, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = icmp eq %struct.TYPE_9__* %41, null
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @WORKQ_THREADREQ_CREATOR_SYNC_UPDATE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @WORKQ_THREADREQ_CREATOR_TRANSFER, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  br label %60

55:                                               ; preds = %43
  %56 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %57 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %58 = load i32, i32* @TURNSTILE_INHERITOR_WORKQ, align 4
  %59 = call i32 @workq_turnstile_update_inheritor(%struct.workqueue* %56, %struct.workqueue* %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %48
  br label %187

61:                                               ; preds = %38
  %62 = load %struct.uthread*, %struct.uthread** %8, align 8
  %63 = icmp ne %struct.uthread* %62, null
  br i1 %63, label %64, label %87

64:                                               ; preds = %61
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = load %struct.uthread*, %struct.uthread** %8, align 8
  %67 = call i64 @workq_thread_needs_priority_change(%struct.TYPE_9__* %65, %struct.uthread* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %64
  %70 = load i32, i32* @TRACE_wq_creator_select, align 4
  %71 = load i32, i32* @DBG_FUNC_NONE, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %74 = load %struct.uthread*, %struct.uthread** %8, align 8
  %75 = getelementptr inbounds %struct.uthread, %struct.uthread* %74, i32 0, i32 1
  %76 = load %struct.workqueue*, %struct.workqueue** %75, align 8
  %77 = call i32 @thread_tid(%struct.workqueue* %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @WQ_TRACE_WQ(i32 %72, %struct.workqueue* %73, i32 1, i32 %77, i32 %80, i32 0)
  %82 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %83 = load %struct.uthread*, %struct.uthread** %8, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %85 = call i32 @workq_thread_reset_pri(%struct.workqueue* %82, %struct.uthread* %83, %struct.TYPE_9__* %84)
  br label %86

86:                                               ; preds = %69, %64
  br label %187

87:                                               ; preds = %61
  %88 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %89 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %138

92:                                               ; preds = %87
  %93 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %94 = call %struct.uthread* @workq_pop_idle_thread(%struct.workqueue* %93)
  store %struct.uthread* %94, %struct.uthread** %8, align 8
  %95 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %96 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %95, i32 0, i32 2
  store %struct.uthread* %94, %struct.uthread** %96, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %98 = load %struct.uthread*, %struct.uthread** %8, align 8
  %99 = call i64 @workq_thread_needs_priority_change(%struct.TYPE_9__* %97, %struct.uthread* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %92
  %102 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %103 = load %struct.uthread*, %struct.uthread** %8, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %105 = call i32 @workq_thread_reset_pri(%struct.workqueue* %102, %struct.uthread* %103, %struct.TYPE_9__* %104)
  br label %106

106:                                              ; preds = %101, %92
  %107 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %108 = load %struct.uthread*, %struct.uthread** %8, align 8
  %109 = getelementptr inbounds %struct.uthread, %struct.uthread* %108, i32 0, i32 1
  %110 = load %struct.workqueue*, %struct.workqueue** %109, align 8
  %111 = load i32, i32* @TURNSTILE_INHERITOR_THREAD, align 4
  %112 = call i32 @workq_turnstile_update_inheritor(%struct.workqueue* %107, %struct.workqueue* %110, i32 %111)
  %113 = load i32, i32* @TRACE_wq_creator_select, align 4
  %114 = load i32, i32* @DBG_FUNC_NONE, align 4
  %115 = or i32 %113, %114
  %116 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %117 = load %struct.uthread*, %struct.uthread** %8, align 8
  %118 = getelementptr inbounds %struct.uthread, %struct.uthread* %117, i32 0, i32 1
  %119 = load %struct.workqueue*, %struct.workqueue** %118, align 8
  %120 = call i32 @thread_tid(%struct.workqueue* %119)
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @WQ_TRACE_WQ(i32 %115, %struct.workqueue* %116, i32 2, i32 %120, i32 %123, i32 0)
  %125 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %126 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.uthread*, %struct.uthread** %8, align 8
  %129 = getelementptr inbounds %struct.uthread, %struct.uthread* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  store i32 %127, i32* %131, align 8
  %132 = load %struct.uthread*, %struct.uthread** %8, align 8
  %133 = getelementptr inbounds %struct.uthread, %struct.uthread* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  store i64 0, i64* %135, align 8
  %136 = load %struct.uthread*, %struct.uthread** %8, align 8
  %137 = call i32 @workq_thread_wakeup(%struct.uthread* %136)
  br label %186

138:                                              ; preds = %87
  %139 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %140 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @wq_max_threads, align 8
  %143 = icmp sge i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = call i64 @__improbable(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  br label %177

148:                                              ; preds = %138
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @WORKQ_THREADREQ_SET_AST_ON_FAILURE, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = call i32 (...) @current_thread()
  %155 = load i32, i32* @AST_KEVENT_REDRIVE_THREADREQ, align 4
  %156 = call i32 @act_set_astkevent(i32 %154, i32 %155)
  br label %176

157:                                              ; preds = %148
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @WORKQ_THREADREQ_CAN_CREATE_THREADS, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %157
  %163 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %164 = call i32 @workq_schedule_immediate_thread_creation(%struct.workqueue* %163)
  br label %175

165:                                              ; preds = %157
  %166 = load i64, i64* %4, align 8
  %167 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %168 = call i64 @workq_add_new_idle_thread(i64 %166, %struct.workqueue* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %22

171:                                              ; preds = %165
  %172 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %173 = call i32 @workq_schedule_delayed_thread_creation(%struct.workqueue* %172, i32 0)
  br label %174

174:                                              ; preds = %171
  br label %175

175:                                              ; preds = %174, %162
  br label %176

176:                                              ; preds = %175, %153
  br label %177

177:                                              ; preds = %176, %147
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* @WORKQ_THREADREQ_CREATOR_TRANSFER, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %184 = call i32 @workq_turnstile_update_inheritor(%struct.workqueue* %183, %struct.workqueue* null, i32 0)
  br label %185

185:                                              ; preds = %182, %177
  br label %186

186:                                              ; preds = %185, %106
  br label %187

187:                                              ; preds = %37, %60, %186, %86
  ret void
}

declare dso_local i32 @workq_lock_held(%struct.workqueue*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @workq_turnstile_update_inheritor(%struct.workqueue*, %struct.workqueue*, i32) #1

declare dso_local %struct.TYPE_9__* @workq_threadreq_select_for_creator(%struct.workqueue*) #1

declare dso_local i64 @workq_thread_needs_priority_change(%struct.TYPE_9__*, %struct.uthread*) #1

declare dso_local i32 @WQ_TRACE_WQ(i32, %struct.workqueue*, i32, i32, i32, i32) #1

declare dso_local i32 @thread_tid(%struct.workqueue*) #1

declare dso_local i32 @workq_thread_reset_pri(%struct.workqueue*, %struct.uthread*, %struct.TYPE_9__*) #1

declare dso_local %struct.uthread* @workq_pop_idle_thread(%struct.workqueue*) #1

declare dso_local i32 @workq_thread_wakeup(%struct.uthread*) #1

declare dso_local i64 @__improbable(i32) #1

declare dso_local i32 @act_set_astkevent(i32, i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @workq_schedule_immediate_thread_creation(%struct.workqueue*) #1

declare dso_local i64 @workq_add_new_idle_thread(i64, %struct.workqueue*) #1

declare dso_local i32 @workq_schedule_delayed_thread_creation(%struct.workqueue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
