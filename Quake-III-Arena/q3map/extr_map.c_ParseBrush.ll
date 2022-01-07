; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_map.c_ParseBrush.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_map.c_ParseBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, i32, i64 }

@buildBrush = common dso_local global %struct.TYPE_5__* null, align 8
@num_entities = common dso_local global i64 0, align 8
@entitySourceBrushes = common dso_local global i32 0, align 4
@nodetail = common dso_local global i64 0, align 8
@CONTENTS_DETAIL = common dso_local global i32 0, align 4
@nowater = common dso_local global i64 0, align 8
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_WATER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ParseBrush() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 (...) @ParseRawBrush()
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @buildBrush, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  store i32 -1, i32* %6, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @buildBrush, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 -1, i32* %10, align 4
  %11 = load i64, i64* @num_entities, align 8
  %12 = sub nsw i64 %11, 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @buildBrush, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  store i64 %12, i64* %14, align 8
  %15 = load i32, i32* @entitySourceBrushes, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @buildBrush, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @buildBrush, align 8
  %19 = call i32 @RemoveDuplicateBrushPlanes(%struct.TYPE_5__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %0
  br label %59

22:                                               ; preds = %0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @buildBrush, align 8
  %24 = call i32 @SetBrushContents(%struct.TYPE_5__* %23)
  %25 = load i64, i64* @nodetail, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @buildBrush, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CONTENTS_DETAIL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @buildBrush, align 8
  %36 = call i32 @FreeBrush(%struct.TYPE_5__* %35)
  br label %59

37:                                               ; preds = %27, %22
  %38 = load i64, i64* @nowater, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @buildBrush, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @CONTENTS_LAVA, align 4
  %45 = load i32, i32* @CONTENTS_SLIME, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @CONTENTS_WATER, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %43, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @buildBrush, align 8
  %53 = call i32 @FreeBrush(%struct.TYPE_5__* %52)
  br label %59

54:                                               ; preds = %40, %37
  %55 = call i32* (...) @FinishBrush()
  store i32* %55, i32** %1, align 8
  %56 = load i32*, i32** %1, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %21, %34, %51, %58, %54
  ret void
}

declare dso_local i32 @ParseRawBrush(...) #1

declare dso_local i32 @RemoveDuplicateBrushPlanes(%struct.TYPE_5__*) #1

declare dso_local i32 @SetBrushContents(%struct.TYPE_5__*) #1

declare dso_local i32 @FreeBrush(%struct.TYPE_5__*) #1

declare dso_local i32* @FinishBrush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
