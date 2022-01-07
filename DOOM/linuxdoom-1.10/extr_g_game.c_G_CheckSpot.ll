; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_g_game.c_G_CheckSpot.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_g_game.c_G_CheckSpot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@players = common dso_local global %struct.TYPE_13__* null, align 8
@FRACBITS = common dso_local global i32 0, align 4
@bodyqueslot = common dso_local global i64 0, align 8
@BODYQUESIZE = common dso_local global i64 0, align 8
@bodyque = common dso_local global %struct.TYPE_14__** null, align 8
@ANG45 = common dso_local global i32 0, align 4
@ANGLETOFINESHIFT = common dso_local global i32 0, align 4
@finecosine = common dso_local global i32* null, align 8
@finesine = common dso_local global i32* null, align 8
@MT_TFOG = common dso_local global i32 0, align 4
@consoleplayer = common dso_local global i64 0, align 8
@sfx_telept = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @G_CheckSpot(i32 %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** @players, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = icmp ne %struct.TYPE_14__* %17, null
  br i1 %18, label %60, label %19

19:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %56, %19
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %20
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** @players, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @FRACBITS, align 4
  %37 = shl i32 %35, %36
  %38 = icmp eq i32 %32, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %24
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** @players, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @FRACBITS, align 4
  %52 = shl i32 %50, %51
  %53 = icmp eq i32 %47, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %153

55:                                               ; preds = %39, %24
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %20

59:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %153

60:                                               ; preds = %2
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @FRACBITS, align 4
  %65 = shl i32 %63, %64
  store i32 %65, i32* %6, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @FRACBITS, align 4
  %70 = shl i32 %68, %69
  store i32 %70, i32* %7, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** @players, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @P_CheckPosition(%struct.TYPE_14__* %76, i32 %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %153

82:                                               ; preds = %60
  %83 = load i64, i64* @bodyqueslot, align 8
  %84 = load i64, i64* @BODYQUESIZE, align 8
  %85 = icmp uge i64 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @bodyque, align 8
  %88 = load i64, i64* @bodyqueslot, align 8
  %89 = load i64, i64* @BODYQUESIZE, align 8
  %90 = urem i64 %88, %89
  %91 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %87, i64 %90
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = call i32 @P_RemoveMobj(%struct.TYPE_14__* %92)
  br label %94

94:                                               ; preds = %86, %82
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** @players, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @bodyque, align 8
  %102 = load i64, i64* @bodyqueslot, align 8
  %103 = load i64, i64* @BODYQUESIZE, align 8
  %104 = urem i64 %102, %103
  %105 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %101, i64 %104
  store %struct.TYPE_14__* %100, %struct.TYPE_14__** %105, align 8
  %106 = load i64, i64* @bodyqueslot, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* @bodyqueslot, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call %struct.TYPE_11__* @R_PointInSubsector(i32 %108, i32 %109)
  store %struct.TYPE_11__* %110, %struct.TYPE_11__** %8, align 8
  %111 = load i32, i32* @ANG45, align 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = sdiv i32 %114, 45
  %116 = mul nsw i32 %111, %115
  %117 = load i32, i32* @ANGLETOFINESHIFT, align 4
  %118 = ashr i32 %116, %117
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load i32*, i32** @finecosine, align 8
  %121 = load i32, i32* %9, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 20, %124
  %126 = add nsw i32 %119, %125
  %127 = load i32, i32* %7, align 4
  %128 = load i32*, i32** @finesine, align 8
  %129 = load i32, i32* %9, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 20, %132
  %134 = add nsw i32 %127, %133
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @MT_TFOG, align 4
  %141 = call i32* @P_SpawnMobj(i32 %126, i32 %134, i32 %139, i32 %140)
  store i32* %141, i32** %10, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** @players, align 8
  %143 = load i64, i64* @consoleplayer, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 1
  br i1 %147, label %148, label %152

148:                                              ; preds = %94
  %149 = load i32*, i32** %10, align 8
  %150 = load i32, i32* @sfx_telept, align 4
  %151 = call i32 @S_StartSound(i32* %149, i32 %150)
  br label %152

152:                                              ; preds = %148, %94
  store i32 1, i32* %3, align 4
  br label %153

153:                                              ; preds = %152, %81, %59, %54
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @P_CheckPosition(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @P_RemoveMobj(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_11__* @R_PointInSubsector(i32, i32) #1

declare dso_local i32* @P_SpawnMobj(i32, i32, i32, i32) #1

declare dso_local i32 @S_StartSound(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
