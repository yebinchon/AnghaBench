; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_task_apply_resource_actions.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_task_apply_resource_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8* }

@TASK_POLICY_RESOURCE_ATTRIBUTE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @task_apply_resource_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_apply_resource_actions(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @TASK_POLICY_RESOURCE_ATTRIBUTE_NONE, align 4
  store i32 %8, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %12 [
    i32 133, label %10
    i32 128, label %11
    i32 129, label %11
    i32 132, label %11
    i32 131, label %11
    i32 130, label %11
  ]

10:                                               ; preds = %2
  br label %13

11:                                               ; preds = %2, %2, %2, %2, %2
  store i32 0, i32* %3, align 4
  br label %51

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %51

13:                                               ; preds = %10
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = call i32 @task_lock(%struct.TYPE_5__* %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @TASK_POLICY_RESOURCE_ATTRIBUTE_NONE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %13
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  br label %34

30:                                               ; preds = %13
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %30, %21
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @TASK_POLICY_RESOURCE_ATTRIBUTE_NONE, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %7, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = call i32 @task_unlock(%struct.TYPE_5__* %42)
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @proc_apply_resource_actions(i8* %44, i32 133, i32 %45)
  br label %50

47:                                               ; preds = %34
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = call i32 @task_unlock(%struct.TYPE_5__* %48)
  br label %50

50:                                               ; preds = %47, %38
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %12, %11
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @task_lock(%struct.TYPE_5__*) #1

declare dso_local i32 @task_unlock(%struct.TYPE_5__*) #1

declare dso_local i32 @proc_apply_resource_actions(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
