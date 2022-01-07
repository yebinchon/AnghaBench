; ModuleID = '/home/carl/AnghaBench/disque/src/extr_queue.c_receiveNeedJobs.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_queue.c_receiveNeedJobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@QUEUE_FLAG_PAUSED_OUT = common dso_local global i32 0, align 4
@NEEDJOBS_MAX_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @receiveNeedJobs(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call %struct.TYPE_11__* @lookupQueue(i32* %14)
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %7, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %17 = call i64 @queueLength(%struct.TYPE_11__* %16)
  store i64 %17, i64* %8, align 8
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i64, i64* %8, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = call i64 @getQueueImportRate(%struct.TYPE_11__* %22)
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %3
  br label %101

26:                                               ; preds = %21
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @QUEUE_FLAG_PAUSED_OUT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %101

34:                                               ; preds = %26
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i64, i64* %8, align 8
  %42 = udiv i64 %41, 2
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %40, %34
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 1, i32* %9, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* @NEEDJOBS_MAX_REQUEST, align 4
  %50 = zext i32 %49 to i64
  %51 = call i8* @llvm.stacksave()
  store i8* %51, i8** %11, align 8
  %52 = alloca %struct.TYPE_12__*, i64 %50, align 16
  store i64 %50, i64* %12, align 8
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %70, %48
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %59 = call %struct.TYPE_12__* @queueFetchJob(%struct.TYPE_11__* %58, i32* null)
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %52, i64 %61
  store %struct.TYPE_12__* %59, %struct.TYPE_12__** %62, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %52, i64 %64
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = icmp ne %struct.TYPE_12__* %66, null
  %68 = zext i1 %67 to i32
  %69 = call i32 @serverAssert(i32 %68)
  br label %70

70:                                               ; preds = %57
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %53

73:                                               ; preds = %53
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @clusterSendYourJobs(i32* %74, %struct.TYPE_12__** %52, i32 %75)
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %96, %73
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %77
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %52, i64 %83
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  store %struct.TYPE_12__* %85, %struct.TYPE_12__** %13, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %81
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %92 = call i32 @unregisterJob(%struct.TYPE_12__* %91)
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %94 = call i32 @freeJob(%struct.TYPE_12__* %93)
  br label %95

95:                                               ; preds = %90, %81
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %77

99:                                               ; preds = %77
  %100 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %100)
  br label %101

101:                                              ; preds = %99, %33, %25
  ret void
}

declare dso_local %struct.TYPE_11__* @lookupQueue(i32*) #1

declare dso_local i64 @queueLength(%struct.TYPE_11__*) #1

declare dso_local i64 @getQueueImportRate(%struct.TYPE_11__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_12__* @queueFetchJob(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @clusterSendYourJobs(i32*, %struct.TYPE_12__**, i32) #1

declare dso_local i32 @unregisterJob(%struct.TYPE_12__*) #1

declare dso_local i32 @freeJob(%struct.TYPE_12__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
