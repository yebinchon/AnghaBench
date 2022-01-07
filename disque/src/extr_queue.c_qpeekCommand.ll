; ModuleID = '/home/carl/AnghaBench/disque/src/extr_queue.c_qpeekCommand.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_queue.c_qpeekCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_20__ = type { %struct.TYPE_19__*, %struct.TYPE_20__*, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_21__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_20__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_20__* }

@C_OK = common dso_local global i64 0, align 8
@shared = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@GETJOB_FLAG_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qpeekCommand(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  store i32 0, i32* %3, align 4
  store i64 0, i64* %5, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @getLongLongFromObjectOrReply(%struct.TYPE_22__* %10, i32 %15, i64* %4, i32* null)
  %17 = load i64, i64* @C_OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %105

20:                                               ; preds = %1
  %21 = load i64, i64* %4, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i64, i64* %4, align 8
  %25 = sub nsw i64 0, %24
  store i64 %25, i64* %4, align 8
  store i32 1, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %20
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %6, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.TYPE_21__* @lookupQueue(i32 %31)
  store %struct.TYPE_21__* %32, %struct.TYPE_21__** %7, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %34 = icmp ne %struct.TYPE_21__* %33, null
  br i1 %34, label %35, label %57

35:                                               ; preds = %26
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %42, align 8
  br label %55

44:                                               ; preds = %35
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %53, align 8
  br label %55

55:                                               ; preds = %44, %38
  %56 = phi %struct.TYPE_20__* [ %43, %38 ], [ %54, %44 ]
  store %struct.TYPE_20__* %56, %struct.TYPE_20__** %6, align 8
  br label %57

57:                                               ; preds = %55, %26
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %59 = icmp eq %struct.TYPE_20__* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @shared, i32 0, i32 0), align 4
  %63 = call i32 @addReply(%struct.TYPE_22__* %61, i32 %62)
  br label %105

64:                                               ; preds = %57
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %66 = call i8* @addDeferredMultiBulkLength(%struct.TYPE_22__* %65)
  store i8* %66, i8** %8, align 8
  br label %67

67:                                               ; preds = %99, %64
  %68 = load i64, i64* %4, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %4, align 8
  %70 = icmp ne i64 %68, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %73 = icmp ne %struct.TYPE_20__* %72, null
  br label %74

74:                                               ; preds = %71, %67
  %75 = phi i1 [ false, %67 ], [ %73, %71 ]
  br i1 %75, label %76, label %100

76:                                               ; preds = %74
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %9, align 8
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* @GETJOB_FLAG_NONE, align 4
  %83 = call i32 @addReplyJob(%struct.TYPE_22__* %80, i32* %81, i32 %82)
  %84 = load i64, i64* %5, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %5, align 8
  %86 = load i32, i32* %3, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %76
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %90, align 8
  store %struct.TYPE_20__* %91, %struct.TYPE_20__** %6, align 8
  br label %99

92:                                               ; preds = %76
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %97, align 8
  store %struct.TYPE_20__* %98, %struct.TYPE_20__** %6, align 8
  br label %99

99:                                               ; preds = %92, %88
  br label %67

100:                                              ; preds = %74
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = load i64, i64* %5, align 8
  %104 = call i32 @setDeferredMultiBulkLength(%struct.TYPE_22__* %101, i8* %102, i64 %103)
  br label %105

105:                                              ; preds = %100, %60, %19
  ret void
}

declare dso_local i64 @getLongLongFromObjectOrReply(%struct.TYPE_22__*, i32, i64*, i32*) #1

declare dso_local %struct.TYPE_21__* @lookupQueue(i32) #1

declare dso_local i32 @addReply(%struct.TYPE_22__*, i32) #1

declare dso_local i8* @addDeferredMultiBulkLength(%struct.TYPE_22__*) #1

declare dso_local i32 @addReplyJob(%struct.TYPE_22__*, i32*, i32) #1

declare dso_local i32 @setDeferredMultiBulkLength(%struct.TYPE_22__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
