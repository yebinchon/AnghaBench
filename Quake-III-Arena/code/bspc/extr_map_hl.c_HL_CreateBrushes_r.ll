; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_hl.c_HL_CreateBrushes_r.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_hl.c_HL_CreateBrushes_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_13__*, i32 }

@hl_dleafs = common dso_local global %struct.TYPE_12__* null, align 8
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@CONTENTS_WATER = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"HL_CreateBrushes_r: unknown contents %d in Half-Life BSP\00", align 1
@hl_dnodes = common dso_local global %struct.TYPE_15__* null, align 8
@hl_dplanes = common dso_local global %struct.TYPE_14__* null, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"HL_CreateBrushes_r: WARNING node not splitting brush\0A\00", align 1
@hl_numbrushes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @HL_CreateBrushes_r(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %56

12:                                               ; preds = %2
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** @hl_dleafs, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 0, %14
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i64 %17
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %9, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 135
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23, %12
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %51 [
    i32 135, label %28
    i32 130, label %31
    i32 132, label %31
    i32 128, label %36
    i32 131, label %41
    i32 134, label %46
  ]

28:                                               ; preds = %24
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = call i32 @FreeBrush(%struct.TYPE_13__* %29)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %139

31:                                               ; preds = %24, %24
  %32 = load i32, i32* @CONTENTS_SOLID, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %3, align 8
  br label %139

36:                                               ; preds = %24
  %37 = load i32, i32* @CONTENTS_WATER, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %3, align 8
  br label %139

41:                                               ; preds = %24
  %42 = load i32, i32* @CONTENTS_SLIME, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %3, align 8
  br label %139

46:                                               ; preds = %24
  %47 = load i32, i32* @CONTENTS_LAVA, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %50, %struct.TYPE_13__** %3, align 8
  br label %139

51:                                               ; preds = %24
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @Error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %54)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %139

56:                                               ; preds = %2
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** @hl_dnodes, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %6, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hl_dplanes, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** @hl_dplanes, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @FindFloatPlane(i32 %68, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @HL_SplitBrush(%struct.TYPE_13__* %76, i32 %77, i32 %78, %struct.TYPE_13__** %7, %struct.TYPE_13__** %8)
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = call i32 @FreeBrush(%struct.TYPE_13__* %80)
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %83 = icmp ne %struct.TYPE_13__* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %56
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %86 = icmp ne %struct.TYPE_13__* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %84, %56
  %88 = call i32 @Log_Print(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %84
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %91 = icmp ne %struct.TYPE_13__* %90, null
  br i1 %91, label %92, label %103

92:                                               ; preds = %89
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** @hl_dnodes, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = call %struct.TYPE_13__* @HL_CreateBrushes_r(%struct.TYPE_13__* %93, i32 %101)
  store %struct.TYPE_13__* %102, %struct.TYPE_13__** %7, align 8
  br label %103

103:                                              ; preds = %92, %89
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %105 = icmp ne %struct.TYPE_13__* %104, null
  br i1 %105, label %106, label %117

106:                                              ; preds = %103
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** @hl_dnodes, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = call %struct.TYPE_13__* @HL_CreateBrushes_r(%struct.TYPE_13__* %107, i32 %115)
  store %struct.TYPE_13__* %116, %struct.TYPE_13__** %8, align 8
  br label %117

117:                                              ; preds = %106, %103
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %119 = icmp ne %struct.TYPE_13__* %118, null
  br i1 %119, label %120, label %137

120:                                              ; preds = %117
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %121, %struct.TYPE_13__** %4, align 8
  br label %122

122:                                              ; preds = %128, %120
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %124, align 8
  %126 = icmp ne %struct.TYPE_13__* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %130, align 8
  store %struct.TYPE_13__* %131, %struct.TYPE_13__** %4, align 8
  br label %122

132:                                              ; preds = %122
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  store %struct.TYPE_13__* %133, %struct.TYPE_13__** %135, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %136, %struct.TYPE_13__** %3, align 8
  br label %139

137:                                              ; preds = %117
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %138, %struct.TYPE_13__** %3, align 8
  br label %139

139:                                              ; preds = %137, %132, %51, %46, %41, %36, %31, %28
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %140
}

declare dso_local i32 @FreeBrush(%struct.TYPE_13__*) #1

declare dso_local i32 @Error(i8*, i32) #1

declare dso_local i32 @FindFloatPlane(i32, i32) #1

declare dso_local i32 @HL_SplitBrush(%struct.TYPE_13__*, i32, i32, %struct.TYPE_13__**, %struct.TYPE_13__**) #1

declare dso_local i32 @Log_Print(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
