; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_task_policy_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_task_policy_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TASK_APPTYPE_DAEMON_ADAPTIVE = common dso_local global i64 0, align 8
@TASK_APPTYPE_DAEMON_INTERACTIVE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@TASK_APPTYPE_DAEMON_BACKGROUND = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@IMP_UPDATE = common dso_local global i32 0, align 4
@IMP_UPDATE_TASK_CREATE = common dso_local global i32 0, align 4
@TASK_POLICY_TASK = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @task_policy_create(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  store i64 %8, i64* %11, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 10
  store i32 %15, i32* %18, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 9
  store i32 %22, i32* %25, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 8
  store i32 %29, i32* %32, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 7
  store i32 %36, i32* %39, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 6
  store i32 %43, i32* %46, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 5
  store i32 %50, i32* %53, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 4
  store i32 %57, i32* %60, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 3
  store i32 %64, i32* %67, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  store i32 %71, i32* %74, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @TASK_APPTYPE_DAEMON_ADAPTIVE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %108

81:                                               ; preds = %2
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %83 = call i32 @task_is_exec_copy(%struct.TYPE_14__* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %108, label %85

85:                                               ; preds = %81
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load i64, i64* @TASK_APPTYPE_DAEMON_INTERACTIVE, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  store i64 %92, i64* %95, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %97 = load i32, i32* @TRUE, align 4
  %98 = call i32 @task_importance_mark_donor(%struct.TYPE_14__* %96, i32 %97)
  br label %107

99:                                               ; preds = %85
  %100 = load i64, i64* @TASK_APPTYPE_DAEMON_BACKGROUND, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  store i64 %100, i64* %103, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %105 = load i32, i32* @FALSE, align 4
  %106 = call i32 @task_importance_mark_receiver(%struct.TYPE_14__* %104, i32 %105)
  br label %107

107:                                              ; preds = %99, %91
  br label %108

108:                                              ; preds = %107, %81, %2
  %109 = load i32, i32* @KDEBUG_TRACE, align 4
  %110 = load i32, i32* @IMP_UPDATE, align 4
  %111 = load i32, i32* @IMP_UPDATE_TASK_CREATE, align 4
  %112 = load i32, i32* @TASK_POLICY_TASK, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @IMPORTANCE_CODE(i32 %110, i32 %113)
  %115 = load i32, i32* @DBG_FUNC_START, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %118 = call i32 @task_pid(%struct.TYPE_14__* %117)
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %120 = call i32 @teffective_0(%struct.TYPE_14__* %119)
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %122 = call i32 @teffective_1(%struct.TYPE_14__* %121)
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %109, i32 %116, i32 %118, i32 %120, i32 %122, i32 %125, i32 0)
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %128 = load i32, i32* @TRUE, align 4
  %129 = call i32 @task_policy_update_internal_locked(%struct.TYPE_14__* %127, i32 %128, i32* null)
  %130 = load i32, i32* @KDEBUG_TRACE, align 4
  %131 = load i32, i32* @IMP_UPDATE, align 4
  %132 = load i32, i32* @IMP_UPDATE_TASK_CREATE, align 4
  %133 = load i32, i32* @TASK_POLICY_TASK, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @IMPORTANCE_CODE(i32 %131, i32 %134)
  %136 = load i32, i32* @DBG_FUNC_END, align 4
  %137 = or i32 %135, %136
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %139 = call i32 @task_pid(%struct.TYPE_14__* %138)
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %141 = call i32 @teffective_0(%struct.TYPE_14__* %140)
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %143 = call i32 @teffective_1(%struct.TYPE_14__* %142)
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %130, i32 %137, i32 %139, i32 %141, i32 %143, i32 %146, i32 0)
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %149 = call i32 @task_importance_update_live_donor(%struct.TYPE_14__* %148)
  ret void
}

declare dso_local i32 @task_is_exec_copy(%struct.TYPE_14__*) #1

declare dso_local i32 @task_importance_mark_donor(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @task_importance_mark_receiver(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IMPORTANCE_CODE(i32, i32) #1

declare dso_local i32 @task_pid(%struct.TYPE_14__*) #1

declare dso_local i32 @teffective_0(%struct.TYPE_14__*) #1

declare dso_local i32 @teffective_1(%struct.TYPE_14__*) #1

declare dso_local i32 @task_policy_update_internal_locked(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @task_importance_update_live_donor(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
