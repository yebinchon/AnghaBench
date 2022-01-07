; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/titan/extr_titan.c_TitanInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/titan/extr_titan.c_TitanInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.PixelData**, %struct.PixelData**, %struct.PixelData* }
%struct.PixelData = type { i32 }
%struct.TYPE_4__ = type { i32*, i64* }

@tt_context = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@priority_thread_context = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@YAB_THREAD_VIDSOFT_PRIORITY_0 = common dso_local global i32 0, align 4
@VidsoftPriorityThread0 = common dso_local global i32 0, align 4
@YAB_THREAD_VIDSOFT_PRIORITY_1 = common dso_local global i32 0, align 4
@VidsoftPriorityThread1 = common dso_local global i32 0, align 4
@YAB_THREAD_VIDSOFT_PRIORITY_2 = common dso_local global i32 0, align 4
@VidsoftPriorityThread2 = common dso_local global i32 0, align 4
@YAB_THREAD_VIDSOFT_PRIORITY_3 = common dso_local global i32 0, align 4
@VidsoftPriorityThread3 = common dso_local global i32 0, align 4
@YAB_THREAD_VIDSOFT_PRIORITY_4 = common dso_local global i32 0, align 4
@VidsoftPriorityThread4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TitanInit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tt_context, i32 0, i32 0), align 8
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %76, label %5

5:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %19, %5
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 6
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = call i64 @calloc(i32 4, i32 180224)
  %11 = inttoptr i64 %10 to %struct.PixelData*
  %12 = load %struct.PixelData**, %struct.PixelData*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tt_context, i32 0, i32 2), align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.PixelData*, %struct.PixelData** %12, i64 %14
  store %struct.PixelData* %11, %struct.PixelData** %15, align 8
  %16 = icmp eq %struct.PixelData* %11, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  store i32 -1, i32* %1, align 4
  br label %105

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  br label %6

22:                                               ; preds = %6
  store i32 1, i32* %2, align 4
  br label %23

23:                                               ; preds = %36, %22
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = call i64 @calloc(i32 4, i32 512)
  %28 = inttoptr i64 %27 to %struct.PixelData*
  %29 = load %struct.PixelData**, %struct.PixelData*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tt_context, i32 0, i32 1), align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.PixelData*, %struct.PixelData** %29, i64 %31
  store %struct.PixelData* %28, %struct.PixelData** %32, align 8
  %33 = icmp eq %struct.PixelData* %28, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 -1, i32* %1, align 4
  br label %105

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %2, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %2, align 4
  br label %23

39:                                               ; preds = %23
  %40 = call i64 @calloc(i32 4, i32 360448)
  %41 = inttoptr i64 %40 to %struct.PixelData*
  store %struct.PixelData* %41, %struct.PixelData** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tt_context, i32 0, i32 3), align 8
  %42 = icmp eq %struct.PixelData* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 -1, i32* %1, align 4
  br label %105

44:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %57, %44
  %46 = load i32, i32* %2, align 4
  %47 = icmp slt i32 %46, 5
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @priority_thread_context, i32 0, i32 0), align 8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 1, i32* %52, align 4
  %53 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @priority_thread_context, i32 0, i32 1), align 8
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %2, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %2, align 4
  br label %45

60:                                               ; preds = %45
  %61 = load i32, i32* @YAB_THREAD_VIDSOFT_PRIORITY_0, align 4
  %62 = load i32, i32* @VidsoftPriorityThread0, align 4
  %63 = call i32 @YabThreadStart(i32 %61, i32 %62, i32* null)
  %64 = load i32, i32* @YAB_THREAD_VIDSOFT_PRIORITY_1, align 4
  %65 = load i32, i32* @VidsoftPriorityThread1, align 4
  %66 = call i32 @YabThreadStart(i32 %64, i32 %65, i32* null)
  %67 = load i32, i32* @YAB_THREAD_VIDSOFT_PRIORITY_2, align 4
  %68 = load i32, i32* @VidsoftPriorityThread2, align 4
  %69 = call i32 @YabThreadStart(i32 %67, i32 %68, i32* null)
  %70 = load i32, i32* @YAB_THREAD_VIDSOFT_PRIORITY_3, align 4
  %71 = load i32, i32* @VidsoftPriorityThread3, align 4
  %72 = call i32 @YabThreadStart(i32 %70, i32 %71, i32* null)
  %73 = load i32, i32* @YAB_THREAD_VIDSOFT_PRIORITY_4, align 4
  %74 = load i32, i32* @VidsoftPriorityThread4, align 4
  %75 = call i32 @YabThreadStart(i32 %73, i32 %74, i32* null)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tt_context, i32 0, i32 0), align 8
  br label %76

76:                                               ; preds = %60, %0
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %87, %76
  %78 = load i32, i32* %2, align 4
  %79 = icmp slt i32 %78, 6
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load %struct.PixelData**, %struct.PixelData*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tt_context, i32 0, i32 2), align 8
  %82 = load i32, i32* %2, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.PixelData*, %struct.PixelData** %81, i64 %83
  %85 = load %struct.PixelData*, %struct.PixelData** %84, align 8
  %86 = call i32 @memset(%struct.PixelData* %85, i32 0, i32 720896)
  br label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %2, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %2, align 4
  br label %77

90:                                               ; preds = %77
  store i32 1, i32* %2, align 4
  br label %91

91:                                               ; preds = %101, %90
  %92 = load i32, i32* %2, align 4
  %93 = icmp slt i32 %92, 4
  br i1 %93, label %94, label %104

94:                                               ; preds = %91
  %95 = load %struct.PixelData**, %struct.PixelData*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tt_context, i32 0, i32 1), align 8
  %96 = load i32, i32* %2, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.PixelData*, %struct.PixelData** %95, i64 %97
  %99 = load %struct.PixelData*, %struct.PixelData** %98, align 8
  %100 = call i32 @memset(%struct.PixelData* %99, i32 0, i32 2048)
  br label %101

101:                                              ; preds = %94
  %102 = load i32, i32* %2, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %2, align 4
  br label %91

104:                                              ; preds = %91
  store i32 0, i32* %1, align 4
  br label %105

105:                                              ; preds = %104, %43, %34, %17
  %106 = load i32, i32* %1, align 4
  ret i32 %106
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @YabThreadStart(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.PixelData*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
