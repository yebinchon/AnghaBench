; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_thread_set_special_port.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_thread_set_special_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@IP_NULL = common dso_local global i32 0, align 4
@THREAD_NULL = common dso_local global %struct.TYPE_6__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_set_special_port(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @IP_NULL, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @THREAD_NULL, align 8
  %15 = icmp eq %struct.TYPE_6__* %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %17, i32* %4, align 4
  br label %50

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %23 [
    i32 128, label %20
  ]

20:                                               ; preds = %18
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i32* %22, i32** %9, align 8
  br label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %24, i32* %4, align 4
  br label %50

25:                                               ; preds = %20
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = call i32 @thread_mtx_lock(%struct.TYPE_6__* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  br label %39

37:                                               ; preds = %25
  %38 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %37, %32
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = call i32 @thread_mtx_unlock(%struct.TYPE_6__* %40)
  %42 = load i32, i32* %10, align 4
  %43 = call i64 @IP_VALID(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @ipc_port_release_send(i32 %46)
  br label %48

48:                                               ; preds = %45, %39
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %23, %16
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_6__*) #1

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_6__*) #1

declare dso_local i64 @IP_VALID(i32) #1

declare dso_local i32 @ipc_port_release_send(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
