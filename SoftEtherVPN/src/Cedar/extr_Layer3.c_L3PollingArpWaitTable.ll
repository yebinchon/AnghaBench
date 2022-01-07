; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3PollingArpWaitTable.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Layer3.c_L3PollingArpWaitTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { i64, i64, i32 }

@ARP_REQUEST_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @L3PollingArpWaitTable(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32* null, i32** %4, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = icmp eq %struct.TYPE_9__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %86

10:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %57, %10
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @LIST_NUM(i32* %15)
  %17 = icmp slt i64 %12, %16
  br i1 %17, label %18, label %60

18:                                               ; preds = %11
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call %struct.TYPE_10__* @LIST_DATA(i32* %21, i64 %22)
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %5, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 (...) @Tick64()
  %28 = icmp sle i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %18
  %30 = load i32*, i32** %4, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32* @NewListFast(i32* null)
  store i32* %33, i32** %4, align 8
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = call i32 @Insert(i32* %35, %struct.TYPE_10__* %36)
  br label %56

38:                                               ; preds = %18
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ARP_REQUEST_TIMEOUT, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i64 (...) @Tick64()
  %45 = icmp sle i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = call i64 (...) @Tick64()
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @L3SendArpRequestNow(%struct.TYPE_9__* %50, i32 %53)
  br label %55

55:                                               ; preds = %46, %38
  br label %56

56:                                               ; preds = %55, %34
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %3, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %3, align 8
  br label %11

60:                                               ; preds = %11
  %61 = load i32*, i32** %4, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %86

63:                                               ; preds = %60
  store i64 0, i64* %3, align 8
  br label %64

64:                                               ; preds = %80, %63
  %65 = load i64, i64* %3, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = call i64 @LIST_NUM(i32* %66)
  %68 = icmp slt i64 %65, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %64
  %70 = load i32*, i32** %4, align 8
  %71 = load i64, i64* %3, align 8
  %72 = call %struct.TYPE_10__* @LIST_DATA(i32* %70, i64 %71)
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %6, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %77 = call i32 @Delete(i32* %75, %struct.TYPE_10__* %76)
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = call i32 @Free(%struct.TYPE_10__* %78)
  br label %80

80:                                               ; preds = %69
  %81 = load i64, i64* %3, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %3, align 8
  br label %64

83:                                               ; preds = %64
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @ReleaseList(i32* %84)
  br label %86

86:                                               ; preds = %9, %83, %60
  ret void
}

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_10__* @LIST_DATA(i32*, i64) #1

declare dso_local i64 @Tick64(...) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @Insert(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @L3SendArpRequestNow(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @Delete(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @Free(%struct.TYPE_10__*) #1

declare dso_local i32 @ReleaseList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
