; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_weapons.c_CG_DrawWeaponSelect.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_weapons.c_CG_DrawWeaponSelect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_11__*, i64, i32, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32*, i32* }
%struct.TYPE_9__ = type { i64* }
%struct.TYPE_15__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@cg = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@STAT_HEALTH = common dso_local global i64 0, align 8
@WEAPON_SELECT_TIME = common dso_local global i32 0, align 4
@STAT_WEAPONS = common dso_local global i64 0, align 8
@cg_weapons = common dso_local global %struct.TYPE_15__* null, align 8
@cgs = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@BIGCHAR_WIDTH = common dso_local global i32 0, align 4
@SCREEN_WIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_DrawWeaponSelect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca float*, align 8
  %9 = load i64*, i64** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 4, i32 0), align 8
  %10 = load i64, i64* @STAT_HEALTH, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp sle i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  br label %142

15:                                               ; preds = %0
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 3), align 8
  %17 = load i32, i32* @WEAPON_SELECT_TIME, align 4
  %18 = call float* @CG_FadeColor(i32 %16, i32 %17)
  store float* %18, float** %8, align 8
  %19 = load float*, float** %8, align 8
  %20 = icmp ne float* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %142

22:                                               ; preds = %15
  %23 = load float*, float** %8, align 8
  %24 = call i32 @trap_R_SetColor(float* %23)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 2), align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 1), align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @STAT_WEAPONS, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %1, align 4
  br label %32

32:                                               ; preds = %45, %22
  %33 = load i32, i32* %1, align 4
  %34 = icmp slt i32 %33, 16
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* %1, align 4
  %38 = shl i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %41, %35
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  br label %32

48:                                               ; preds = %32
  %49 = load i32, i32* %3, align 4
  %50 = mul nsw i32 %49, 20
  %51 = sub nsw i32 320, %50
  store i32 %51, i32* %4, align 4
  store i32 380, i32* %5, align 4
  store i32 1, i32* %1, align 4
  br label %52

52:                                               ; preds = %102, %48
  %53 = load i32, i32* %1, align 4
  %54 = icmp slt i32 %53, 16
  br i1 %54, label %55, label %105

55:                                               ; preds = %52
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* %1, align 4
  %58 = shl i32 1, %57
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  br label %102

62:                                               ; preds = %55
  %63 = load i32, i32* %1, align 4
  %64 = call i32 @CG_RegisterWeapon(i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cg_weapons, align 8
  %68 = load i32, i32* %1, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @CG_DrawPic(i32 %65, i32 %66, i32 32, i32 32, i32 %72)
  %74 = load i32, i32* %1, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 0), align 8
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %62
  %78 = load i32, i32* %4, align 4
  %79 = sub nsw i32 %78, 4
  %80 = load i32, i32* %5, align 4
  %81 = sub nsw i32 %80, 4
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 0, i32 1), align 4
  %83 = call i32 @CG_DrawPic(i32 %79, i32 %81, i32 40, i32 40, i32 %82)
  br label %84

84:                                               ; preds = %77, %62
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 1), align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %1, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %84
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 0, i32 0), align 4
  %98 = call i32 @CG_DrawPic(i32 %95, i32 %96, i32 32, i32 32, i32 %97)
  br label %99

99:                                               ; preds = %94, %84
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 40
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %99, %61
  %103 = load i32, i32* %1, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %1, align 4
  br label %52

105:                                              ; preds = %52
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cg_weapons, align 8
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 0), align 8
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = icmp ne %struct.TYPE_13__* %111, null
  br i1 %112, label %113, label %140

113:                                              ; preds = %105
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cg_weapons, align 8
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 0), align 8
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  store i8* %121, i8** %7, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %139

124:                                              ; preds = %113
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 @CG_DrawStrlen(i8* %125)
  %127 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %128 = mul nsw i32 %126, %127
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* @SCREEN_WIDTH, align 4
  %130 = load i32, i32* %6, align 4
  %131 = sub nsw i32 %129, %130
  %132 = sdiv i32 %131, 2
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* %5, align 4
  %135 = sub nsw i32 %134, 22
  %136 = load i8*, i8** %7, align 8
  %137 = load float*, float** %8, align 8
  %138 = call i32 @CG_DrawBigStringColor(i32 %133, i32 %135, i8* %136, float* %137)
  br label %139

139:                                              ; preds = %124, %113
  br label %140

140:                                              ; preds = %139, %105
  %141 = call i32 @trap_R_SetColor(float* null)
  br label %142

142:                                              ; preds = %140, %21, %14
  ret void
}

declare dso_local float* @CG_FadeColor(i32, i32) #1

declare dso_local i32 @trap_R_SetColor(float*) #1

declare dso_local i32 @CG_RegisterWeapon(i32) #1

declare dso_local i32 @CG_DrawPic(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CG_DrawStrlen(i8*) #1

declare dso_local i32 @CG_DrawBigStringColor(i32, i32, i8*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
