; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_TubeRecvSync.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_TubeRecvSync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@INFINITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @TubeRecvSync(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* null, i32** %8, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = icmp eq %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %89

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = call i32 @IsTubeConnected(%struct.TYPE_5__* %17)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32* null, i32** %3, align 8
  br label %89

21:                                               ; preds = %16
  %22 = call i64 (...) @Tick64()
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %5, align 8
  %25 = add nsw i64 %23, %24
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %21, %86
  %27 = call i64 (...) @Tick64()
  store i64 %27, i64* %9, align 8
  store i32* null, i32** %8, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = call i32 @IsTubeConnected(%struct.TYPE_5__* %28)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %87

32:                                               ; preds = %26
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @LockQueue(i32 %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32* @GetNext(i32 %39)
  store i32* %40, i32** %8, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @UnlockQueue(i32 %43)
  %45 = load i32*, i32** %8, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  br label %87

48:                                               ; preds = %32
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @INFINITE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32* null, i32** %3, align 8
  br label %89

57:                                               ; preds = %52, %48
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %9, align 8
  %60 = sub nsw i64 %58, %59
  store i64 %60, i64* %10, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = call i32* @GetTubeSockEvent(%struct.TYPE_5__* %61)
  store i32* %62, i32** %11, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @INFINITE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i64, i64* @INFINITE, align 8
  br label %70

68:                                               ; preds = %57
  %69 = load i64, i64* %10, align 8
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i64 [ %67, %66 ], [ %69, %68 ]
  store i64 %71, i64* %12, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* %12, align 8
  %79 = call i32 @Wait(i32 %77, i64 %78)
  br label %86

80:                                               ; preds = %70
  %81 = load i32*, i32** %11, align 8
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @WaitSockEvent(i32* %81, i64 %82)
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @ReleaseSockEvent(i32* %84)
  br label %86

86:                                               ; preds = %80, %74
  br label %26

87:                                               ; preds = %47, %31
  %88 = load i32*, i32** %8, align 8
  store i32* %88, i32** %3, align 8
  br label %89

89:                                               ; preds = %87, %56, %20, %15
  %90 = load i32*, i32** %3, align 8
  ret i32* %90
}

declare dso_local i32 @IsTubeConnected(%struct.TYPE_5__*) #1

declare dso_local i64 @Tick64(...) #1

declare dso_local i32 @LockQueue(i32) #1

declare dso_local i32* @GetNext(i32) #1

declare dso_local i32 @UnlockQueue(i32) #1

declare dso_local i32* @GetTubeSockEvent(%struct.TYPE_5__*) #1

declare dso_local i32 @Wait(i32, i64) #1

declare dso_local i32 @WaitSockEvent(i32*, i64) #1

declare dso_local i32 @ReleaseSockEvent(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
