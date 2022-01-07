; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_mqueue.c_ipc_mqueue_receive_results.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_mqueue.c_ipc_mqueue_receive_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@MACH_RCV_TIMED_OUT = common dso_local global i32 0, align 4
@MACH_RCV_INTERRUPTED = common dso_local global i32 0, align 4
@MACH_RCV_PORT_CHANGED = common dso_local global i32 0, align 4
@MACH_RCV_LARGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"ipc_mqueue_receive_results: strange ith_state\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"ipc_mqueue_receive_results: strange wait_result\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_mqueue_receive_results(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call %struct.TYPE_3__* (...) @current_thread()
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %2, align 4
  switch i32 %9, label %37 [
    i32 128, label %10
    i32 130, label %14
    i32 129, label %18
    i32 131, label %22
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @MACH_RCV_TIMED_OUT, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  br label %39

14:                                               ; preds = %1
  %15 = load i32, i32* @MACH_RCV_INTERRUPTED, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  br label %39

18:                                               ; preds = %1
  %19 = load i32, i32* @MACH_RCV_PORT_CHANGED, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  br label %39

22:                                               ; preds = %1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %34 [
    i32 133, label %26
    i32 132, label %26
    i32 135, label %33
    i32 134, label %33
  ]

26:                                               ; preds = %22, %22
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @MACH_RCV_LARGE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %39

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %22, %22, %32
  br label %39

34:                                               ; preds = %22
  %35 = call i32 @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %1, %36
  %38 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %10, %14, %18, %31, %33, %37
  ret void
}

declare dso_local %struct.TYPE_3__* @current_thread(...) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
