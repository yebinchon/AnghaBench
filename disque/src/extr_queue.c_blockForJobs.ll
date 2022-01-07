; ModuleID = '/home/carl/AnghaBench/disque/src/extr_queue.c_blockForJobs.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_queue.c_blockForJobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32* }

@DICT_OK = common dso_local global i64 0, align 8
@BLOCKED_GETJOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blockForJobs(%struct.TYPE_11__* %0, i32** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %76, %5
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %79

25:                                               ; preds = %21
  %26 = load i32**, i32*** %7, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = call %struct.TYPE_10__* @lookupQueue(i32* %30)
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %12, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %33 = icmp ne %struct.TYPE_10__* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %25
  %35 = load i32**, i32*** %7, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = call %struct.TYPE_10__* @createQueue(i32* %39)
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %12, align 8
  br label %41

41:                                               ; preds = %34, %25
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32**, i32*** %7, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = call i64 @dictAdd(i32 %45, i32* %50, i32* null)
  %52 = load i64, i64* @DICT_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %76

55:                                               ; preds = %41
  %56 = load i32**, i32*** %7, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @incrRefCount(i32* %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %55
  %67 = call i32* (...) @listCreate()
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i32* %67, i32** %69, align 8
  br label %70

70:                                               ; preds = %66, %55
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = call i32 @listAddNodeTail(i32* %73, %struct.TYPE_11__* %74)
  br label %76

76:                                               ; preds = %70, %54
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %21

79:                                               ; preds = %21
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = load i32, i32* @BLOCKED_GETJOB, align 4
  %82 = call i32 @blockClient(%struct.TYPE_11__* %80, i32 %81)
  ret void
}

declare dso_local %struct.TYPE_10__* @lookupQueue(i32*) #1

declare dso_local %struct.TYPE_10__* @createQueue(i32*) #1

declare dso_local i64 @dictAdd(i32, i32*, i32*) #1

declare dso_local i32 @incrRefCount(i32*) #1

declare dso_local i32* @listCreate(...) #1

declare dso_local i32 @listAddNodeTail(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @blockClient(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
