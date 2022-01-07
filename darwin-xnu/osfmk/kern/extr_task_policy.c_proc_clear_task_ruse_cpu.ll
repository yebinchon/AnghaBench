; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_proc_clear_task_ruse_cpu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_proc_clear_task_ruse_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i8*, i8*, i8* }

@TASK_POLICY_RESOURCE_ATTRIBUTE_DEFAULT = common dso_local global i8* null, align 8
@TASK_POLICY_RESOURCE_ATTRIBUTE_NONE = common dso_local global i32 0, align 4
@TASK_POLICY_CPU_RESOURCE_USAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_clear_task_ruse_cpu(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i8* null, i8** %7, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = call i32 @task_lock(%struct.TYPE_7__* %8)
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = call %struct.TYPE_7__* (...) @current_task()
  %12 = icmp ne %struct.TYPE_7__* %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i8*, i8** @TASK_POLICY_RESOURCE_ATTRIBUTE_DEFAULT, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 4
  store i8* %14, i8** %16, align 8
  br label %21

17:                                               ; preds = %2
  %18 = load i8*, i8** @TASK_POLICY_RESOURCE_ATTRIBUTE_DEFAULT, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @task_clear_cpuusage_locked(%struct.TYPE_7__* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %56

28:                                               ; preds = %21
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %6, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TASK_POLICY_RESOURCE_ATTRIBUTE_NONE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load i32, i32* @TASK_POLICY_RESOURCE_ATTRIBUTE_NONE, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %28
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @TASK_POLICY_RESOURCE_ATTRIBUTE_NONE, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %7, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = call i32 @task_unlock(%struct.TYPE_7__* %49)
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* @TASK_POLICY_CPU_RESOURCE_USAGE, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @proc_restore_resource_actions(i8* %51, i32 %52, i32 %53)
  br label %59

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %27
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = call i32 @task_unlock(%struct.TYPE_7__* %57)
  br label %59

59:                                               ; preds = %56, %45
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @task_lock(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @current_task(...) #1

declare dso_local i32 @task_clear_cpuusage_locked(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @task_unlock(%struct.TYPE_7__*) #1

declare dso_local i32 @proc_restore_resource_actions(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
