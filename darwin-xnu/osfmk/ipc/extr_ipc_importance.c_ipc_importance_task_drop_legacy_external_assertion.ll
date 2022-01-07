; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_importance.c_ipc_importance_task_drop_legacy_external_assertion.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_importance.c_ipc_importance_task_drop_legacy_external_assertion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i64, i64, i64, i64, %struct.TYPE_11__* }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@IIT_UPDATE_DROP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@TASK_NULL = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [115 x i8] c"BUG in process %s[%d]: over-released legacy external boost assertions (%d total, %d external, %d legacy-external)\0A\00", align 1
@DBG_FUNC_END = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@IMP_ASSERTION = common dso_local global i32 0, align 4
@IMP_DROP = common dso_local global i32 0, align 4
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@TASK_POLICY_EXTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_importance_task_drop_legacy_external_assertion(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %15, i32* %3, align 4
  br label %123

16:                                               ; preds = %2
  %17 = call i32 (...) @ipc_importance_lock()
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = call i32 @IIT_LEGACY_EXTERN(%struct.TYPE_12__* %22)
  %24 = icmp sgt i32 %21, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %16
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = call i32 @IIT_EXTERN(%struct.TYPE_12__* %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = call i32 @IIT_LEGACY_EXTERN(%struct.TYPE_12__* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %33, i32* %6, align 4
  br label %101

34:                                               ; preds = %16
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = call i32 @ipc_importance_task_is_any_receiver_type(%struct.TYPE_12__* %35)
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = call i32 @IIT_EXTERN(%struct.TYPE_12__* %38)
  %40 = load i32, i32* %5, align 4
  %41 = icmp sge i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, %51
  store i64 %55, i64* %53, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = call i32 @IIT_LEGACY_EXTERN(%struct.TYPE_12__* %56)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %88

59:                                               ; preds = %34
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %61 = call i32 @IIT_EXTERN(%struct.TYPE_12__* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %69, %66
  store i64 %70, i64* %68, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %76, %73
  store i64 %77, i64* %75, align 8
  br label %83

78:                                               ; preds = %59
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 4
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %78, %63
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %83, %34
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = load i32, i32* @IIT_UPDATE_DROP, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i64 @ipc_importance_task_check_transition(%struct.TYPE_12__* %89, i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %88
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %96 = load i32, i32* @IIT_UPDATE_DROP, align 4
  %97 = load i32, i32* @TRUE, align 4
  %98 = call i32 @ipc_importance_task_propagate_assertion_locked(%struct.TYPE_12__* %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %94, %88
  %100 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %99, %25
  %102 = call i32 (...) @ipc_importance_unlock()
  %103 = load i32, i32* @KERN_FAILURE, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %101
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** @TASK_NULL, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %109 = icmp ne %struct.TYPE_11__* %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %106
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @proc_name_address(i32 %113)
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %116 = call i32 @task_pid(%struct.TYPE_11__* %115)
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @printf(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str, i64 0, i64 0), i8* %114, i32 %116, i32 %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %110, %106, %101
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %121, %14
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @ipc_importance_lock(...) #1

declare dso_local i32 @IIT_LEGACY_EXTERN(%struct.TYPE_12__*) #1

declare dso_local i32 @IIT_EXTERN(%struct.TYPE_12__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ipc_importance_task_is_any_receiver_type(%struct.TYPE_12__*) #1

declare dso_local i64 @ipc_importance_task_check_transition(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ipc_importance_task_propagate_assertion_locked(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ipc_importance_unlock(...) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @proc_name_address(i32) #1

declare dso_local i32 @task_pid(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
