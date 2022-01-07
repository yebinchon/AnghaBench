; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_task_get_special_port.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_task_get_special_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@TASK_NULL = common dso_local global %struct.TYPE_6__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@IP_NULL = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_get_special_port(%struct.TYPE_6__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TASK_NULL, align 8
  %11 = icmp eq %struct.TYPE_6__* %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %13, i32* %4, align 4
  br label %73

14:                                               ; preds = %3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = call i32 @itk_lock(%struct.TYPE_6__* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IP_NULL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = call i32 @itk_unlock(%struct.TYPE_6__* %23)
  %25 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %25, i32* %4, align 4
  br label %73

26:                                               ; preds = %14
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %63 [
    i32 130, label %28
    i32 129, label %33
    i32 131, label %38
    i32 133, label %43
    i32 128, label %48
    i32 134, label %53
    i32 132, label %58
  ]

28:                                               ; preds = %26
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ipc_port_copy_send(i32 %31)
  store i32 %32, i32* %8, align 4
  br label %67

33:                                               ; preds = %26
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ipc_port_make_send(i32 %36)
  store i32 %37, i32* %8, align 4
  br label %67

38:                                               ; preds = %26
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ipc_port_copy_send(i32 %41)
  store i32 %42, i32* %8, align 4
  br label %67

43:                                               ; preds = %26
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ipc_port_copy_send(i32 %46)
  store i32 %47, i32* %8, align 4
  br label %67

48:                                               ; preds = %26
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ipc_port_copy_send(i32 %51)
  store i32 %52, i32* %8, align 4
  br label %67

53:                                               ; preds = %26
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ipc_port_copy_send(i32 %56)
  store i32 %57, i32* %8, align 4
  br label %67

58:                                               ; preds = %26
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ipc_port_copy_send(i32 %61)
  store i32 %62, i32* %8, align 4
  br label %67

63:                                               ; preds = %26
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = call i32 @itk_unlock(%struct.TYPE_6__* %64)
  %66 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %66, i32* %4, align 4
  br label %73

67:                                               ; preds = %58, %53, %48, %43, %38, %33, %28
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = call i32 @itk_unlock(%struct.TYPE_6__* %68)
  %70 = load i32, i32* %8, align 4
  %71 = load i32*, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %67, %63, %22, %12
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @itk_lock(%struct.TYPE_6__*) #1

declare dso_local i32 @itk_unlock(%struct.TYPE_6__*) #1

declare dso_local i32 @ipc_port_copy_send(i32) #1

declare dso_local i32 @ipc_port_make_send(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
