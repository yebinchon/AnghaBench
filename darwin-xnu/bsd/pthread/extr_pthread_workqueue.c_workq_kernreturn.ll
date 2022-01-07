; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_kernreturn.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_kernreturn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i32 }
%struct.workq_kernreturn_args = type { i32, i32, i32 }
%struct.workqueue = type { i32 }
%struct.uthread = type { i32 }

@P_LREGISTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@_PTHREAD_PRIORITY_SCHED_PRI_FLAG = common dso_local global i32 0, align 4
@_PTHREAD_PRIORITY_SCHED_PRI_MASK = common dso_local global i32 0, align 4
@THREAD_QOS_MIN_TIER_IMPORTANCE = common dso_local global i32 0, align 4
@THREAD_QOS_UNSPECIFIED = common dso_local global i32 0, align 4
@_PTHREAD_PRIORITY_FLAGS_MASK = common dso_local global i32 0, align 4
@THREAD_TAG_WORKQUEUE = common dso_local global i32 0, align 4
@UT_WORKQ_DYING = common dso_local global i32 0, align 4
@UT_WORKQ_OVERCOMMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @workq_kernreturn(%struct.proc* %0, %struct.workq_kernreturn_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.workq_kernreturn_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.workqueue*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.uthread*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.workq_kernreturn_args* %1, %struct.workq_kernreturn_args** %6, align 8
  store i32* %2, i32** %7, align 8
  %21 = load %struct.workq_kernreturn_args*, %struct.workq_kernreturn_args** %6, align 8
  %22 = getelementptr inbounds %struct.workq_kernreturn_args, %struct.workq_kernreturn_args* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.workq_kernreturn_args*, %struct.workq_kernreturn_args** %6, align 8
  %25 = getelementptr inbounds %struct.workq_kernreturn_args, %struct.workq_kernreturn_args* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.workq_kernreturn_args*, %struct.workq_kernreturn_args** %6, align 8
  %28 = getelementptr inbounds %struct.workq_kernreturn_args, %struct.workq_kernreturn_args* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.proc*, %struct.proc** %5, align 8
  %31 = call %struct.workqueue* @proc_get_wqptr(%struct.proc* %30)
  store %struct.workqueue* %31, %struct.workqueue** %11, align 8
  store i32 0, i32* %12, align 4
  %32 = load %struct.proc*, %struct.proc** %5, align 8
  %33 = getelementptr inbounds %struct.proc, %struct.proc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @P_LREGISTER, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %4, align 4
  br label %162

40:                                               ; preds = %3
  %41 = load i32, i32* %8, align 4
  switch i32 %41, label %158 [
    i32 134, label %42
    i32 133, label %52
    i32 132, label %57
    i32 130, label %111
    i32 128, label %111
    i32 129, label %111
    i32 131, label %116
  ]

42:                                               ; preds = %40
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.proc*, %struct.proc** %5, align 8
  %51 = getelementptr inbounds %struct.proc, %struct.proc* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %160

52:                                               ; preds = %40
  %53 = load %struct.proc*, %struct.proc** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @workq_reqthreads(%struct.proc* %53, i32 %54, i32 %55)
  store i32 %56, i32* %12, align 4
  br label %160

57:                                               ; preds = %40
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %14, align 4
  %59 = load %struct.workqueue*, %struct.workqueue** %11, align 8
  %60 = icmp eq %struct.workqueue* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %12, align 4
  br label %160

63:                                               ; preds = %57
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @_PTHREAD_PRIORITY_SCHED_PRI_FLAG, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32, i32* @_PTHREAD_PRIORITY_SCHED_PRI_MASK, align 4
  %70 = load i32, i32* @_PTHREAD_PRIORITY_SCHED_PRI_FLAG, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %14, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %14, align 4
  br label %96

74:                                               ; preds = %63
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @_pthread_priority_thread_qos(i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @_pthread_priority_relpri(i32 %77)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* @THREAD_QOS_MIN_TIER_IMPORTANCE, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85, %81, %74
  %90 = load i32, i32* @EINVAL, align 4
  store i32 %90, i32* %12, align 4
  br label %160

91:                                               ; preds = %85
  %92 = load i32, i32* @_PTHREAD_PRIORITY_FLAGS_MASK, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %14, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %14, align 4
  br label %96

96:                                               ; preds = %91, %68
  %97 = load %struct.workqueue*, %struct.workqueue** %11, align 8
  %98 = call i32 @workq_lock_spin(%struct.workqueue* %97)
  %99 = load %struct.workqueue*, %struct.workqueue** %11, align 8
  %100 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %96
  %105 = load i32, i32* %14, align 4
  %106 = load %struct.workqueue*, %struct.workqueue** %11, align 8
  %107 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %104, %96
  %109 = load %struct.workqueue*, %struct.workqueue** %11, align 8
  %110 = call i32 @workq_unlock(%struct.workqueue* %109)
  br label %160

111:                                              ; preds = %40, %40, %40
  %112 = load %struct.proc*, %struct.proc** %5, align 8
  %113 = load %struct.workq_kernreturn_args*, %struct.workq_kernreturn_args** %6, align 8
  %114 = load %struct.workqueue*, %struct.workqueue** %11, align 8
  %115 = call i32 @workq_thread_return(%struct.proc* %112, %struct.workq_kernreturn_args* %113, %struct.workqueue* %114)
  store i32 %115, i32* %12, align 4
  br label %160

116:                                              ; preds = %40
  %117 = call i32 (...) @current_thread()
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* %17, align 4
  %119 = call %struct.uthread* @get_bsdthread_info(i32 %118)
  store %struct.uthread* %119, %struct.uthread** %18, align 8
  %120 = load i32, i32* %17, align 4
  %121 = call i32 @thread_get_tag(i32 %120)
  %122 = load i32, i32* @THREAD_TAG_WORKQUEUE, align 4
  %123 = and i32 %121, %122
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %116
  %126 = load %struct.uthread*, %struct.uthread** %18, align 8
  %127 = getelementptr inbounds %struct.uthread, %struct.uthread* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @UT_WORKQ_DYING, align 4
  %130 = load i32, i32* @UT_WORKQ_OVERCOMMIT, align 4
  %131 = or i32 %129, %130
  %132 = and i32 %128, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %125, %116
  %135 = load i32, i32* @EINVAL, align 4
  store i32 %135, i32* %12, align 4
  br label %160

136:                                              ; preds = %125
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @_pthread_priority_thread_qos(i32 %137)
  store i32 %138, i32* %19, align 4
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = load i32, i32* @EINVAL, align 4
  store i32 %143, i32* %12, align 4
  br label %160

144:                                              ; preds = %136
  %145 = load %struct.workqueue*, %struct.workqueue** %11, align 8
  %146 = call i32 @workq_lock_spin(%struct.workqueue* %145)
  %147 = load %struct.workqueue*, %struct.workqueue** %11, align 8
  %148 = load i32, i32* %19, align 4
  %149 = load %struct.uthread*, %struct.uthread** %18, align 8
  %150 = call i32 @workq_constrained_allowance(%struct.workqueue* %147, i32 %148, %struct.uthread* %149, i32 0)
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  store i32 %153, i32* %20, align 4
  %154 = load %struct.workqueue*, %struct.workqueue** %11, align 8
  %155 = call i32 @workq_unlock(%struct.workqueue* %154)
  %156 = load i32, i32* %20, align 4
  %157 = load i32*, i32** %7, align 8
  store i32 %156, i32* %157, align 4
  br label %160

158:                                              ; preds = %40
  %159 = load i32, i32* @EINVAL, align 4
  store i32 %159, i32* %12, align 4
  br label %160

160:                                              ; preds = %158, %144, %142, %134, %111, %108, %89, %61, %52, %48
  %161 = load i32, i32* %12, align 4
  store i32 %161, i32* %4, align 4
  br label %162

162:                                              ; preds = %160, %38
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local %struct.workqueue* @proc_get_wqptr(%struct.proc*) #1

declare dso_local i32 @workq_reqthreads(%struct.proc*, i32, i32) #1

declare dso_local i32 @_pthread_priority_thread_qos(i32) #1

declare dso_local i32 @_pthread_priority_relpri(i32) #1

declare dso_local i32 @workq_lock_spin(%struct.workqueue*) #1

declare dso_local i32 @workq_unlock(%struct.workqueue*) #1

declare dso_local i32 @workq_thread_return(%struct.proc*, %struct.workq_kernreturn_args*, %struct.workqueue*) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local %struct.uthread* @get_bsdthread_info(i32) #1

declare dso_local i32 @thread_get_tag(i32) #1

declare dso_local i32 @workq_constrained_allowance(%struct.workqueue*, i32, %struct.uthread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
