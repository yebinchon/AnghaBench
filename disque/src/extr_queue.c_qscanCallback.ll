; ModuleID = '/home/carl/AnghaBench/disque/src/extr_queue.c_qscanCallback.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_queue.c_qscanCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qscanFilter = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qscanCallback(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.qscanFilter*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to i8**
  store i8** %11, i8*** %5, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %6, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = bitcast i8* %18 to %struct.qscanFilter*
  store %struct.qscanFilter* %19, %struct.qscanFilter** %7, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call %struct.TYPE_5__* @dictGetVal(i32* %20)
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %8, align 8
  %22 = load %struct.qscanFilter*, %struct.qscanFilter** %7, align 8
  %23 = getelementptr inbounds %struct.qscanFilter, %struct.qscanFilter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load %struct.qscanFilter*, %struct.qscanFilter** %7, align 8
  %28 = getelementptr inbounds %struct.qscanFilter, %struct.qscanFilter* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = call i64 @queueLength(%struct.TYPE_5__* %32)
  br label %35

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i64 [ %33, %31 ], [ 0, %34 ]
  store i64 %36, i64* %9, align 8
  %37 = load %struct.qscanFilter*, %struct.qscanFilter** %7, align 8
  %38 = getelementptr inbounds %struct.qscanFilter, %struct.qscanFilter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.qscanFilter*, %struct.qscanFilter** %7, align 8
  %44 = getelementptr inbounds %struct.qscanFilter, %struct.qscanFilter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %42, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %85

49:                                               ; preds = %41, %35
  %50 = load %struct.qscanFilter*, %struct.qscanFilter** %7, align 8
  %51 = getelementptr inbounds %struct.qscanFilter, %struct.qscanFilter* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.qscanFilter*, %struct.qscanFilter** %7, align 8
  %57 = getelementptr inbounds %struct.qscanFilter, %struct.qscanFilter* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp sgt i64 %55, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %85

62:                                               ; preds = %54, %49
  %63 = load %struct.qscanFilter*, %struct.qscanFilter** %7, align 8
  %64 = getelementptr inbounds %struct.qscanFilter, %struct.qscanFilter* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, -1
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = call i32 @getQueueImportRate(%struct.TYPE_5__* %68)
  %70 = load %struct.qscanFilter*, %struct.qscanFilter** %7, align 8
  %71 = getelementptr inbounds %struct.qscanFilter, %struct.qscanFilter* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %85

75:                                               ; preds = %67, %62
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @incrRefCount(i32 %78)
  %80 = load i32*, i32** %6, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @listAddNodeTail(i32* %80, i32 %83)
  br label %85

85:                                               ; preds = %75, %74, %61, %48
  ret void
}

declare dso_local %struct.TYPE_5__* @dictGetVal(i32*) #1

declare dso_local i64 @queueLength(%struct.TYPE_5__*) #1

declare dso_local i32 @getQueueImportRate(%struct.TYPE_5__*) #1

declare dso_local i32 @incrRefCount(i32) #1

declare dso_local i32 @listAddNodeTail(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
