; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_task_set_special_port.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_task_set_special_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32, i32 }

@TASK_NULL = common dso_local global %struct.TYPE_6__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@IP_NULL = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@KERN_NO_ACCESS = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_set_special_port(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TASK_NULL, align 8
  %12 = icmp eq %struct.TYPE_6__* %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %14, i32* %4, align 4
  br label %79

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %35 [
    i32 129, label %17
    i32 130, label %20
    i32 132, label %23
    i32 128, label %26
    i32 133, label %29
    i32 131, label %32
  ]

17:                                               ; preds = %15
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 6
  store i32* %19, i32** %8, align 8
  br label %37

20:                                               ; preds = %15
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 5
  store i32* %22, i32** %8, align 8
  br label %37

23:                                               ; preds = %15
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 4
  store i32* %25, i32** %8, align 8
  br label %37

26:                                               ; preds = %15
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  store i32* %28, i32** %8, align 8
  br label %37

29:                                               ; preds = %15
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  store i32* %31, i32** %8, align 8
  br label %37

32:                                               ; preds = %15
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32* %34, i32** %8, align 8
  br label %37

35:                                               ; preds = %15
  %36 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %36, i32* %4, align 4
  br label %79

37:                                               ; preds = %32, %29, %26, %23, %20, %17
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = call i32 @itk_lock(%struct.TYPE_6__* %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IP_NULL, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = call i32 @itk_unlock(%struct.TYPE_6__* %46)
  %48 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %48, i32* %4, align 4
  br label %79

49:                                               ; preds = %37
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 128, %50
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 133, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %52, %49
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @IP_VALID(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = call i32 @itk_unlock(%struct.TYPE_6__* %61)
  %63 = load i32, i32* @KERN_NO_ACCESS, align 4
  store i32 %63, i32* %4, align 4
  br label %79

64:                                               ; preds = %55, %52
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32*, i32** %8, align 8
  store i32 %67, i32* %68, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = call i32 @itk_unlock(%struct.TYPE_6__* %69)
  %71 = load i32, i32* %9, align 4
  %72 = call i64 @IP_VALID(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @ipc_port_release_send(i32 %75)
  br label %77

77:                                               ; preds = %74, %64
  %78 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %60, %45, %35, %13
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @itk_lock(%struct.TYPE_6__*) #1

declare dso_local i32 @itk_unlock(%struct.TYPE_6__*) #1

declare dso_local i64 @IP_VALID(i32) #1

declare dso_local i32 @ipc_port_release_send(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
