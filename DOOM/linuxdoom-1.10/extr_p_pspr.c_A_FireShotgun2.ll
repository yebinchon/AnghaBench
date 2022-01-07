; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_pspr.c_A_FireShotgun2.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_pspr.c_A_FireShotgun2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32*, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@sfx_dshtgn = common dso_local global i32 0, align 4
@S_PLAY_ATK2 = common dso_local global i32 0, align 4
@weaponinfo = common dso_local global %struct.TYPE_10__* null, align 8
@ps_flash = common dso_local global i32 0, align 4
@MISSILERANGE = common dso_local global i32 0, align 4
@bulletslope = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @A_FireShotgun2(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = load i32, i32* @sfx_dshtgn, align 4
  %12 = call i32 @S_StartSound(%struct.TYPE_11__* %10, i32 %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = load i32, i32* @S_PLAY_ATK2, align 4
  %17 = call i32 @P_SetMobjState(%struct.TYPE_11__* %15, i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** @weaponinfo, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %20, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 2
  store i32 %30, i32* %28, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = load i32, i32* @ps_flash, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** @weaponinfo, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @P_SetPsprite(%struct.TYPE_9__* %31, i32 %32, i32 %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = call i32 @P_BulletSlope(%struct.TYPE_11__* %43)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %78, %2
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 20
  br i1 %47, label %48, label %81

48:                                               ; preds = %45
  %49 = call i32 (...) @P_Random()
  %50 = srem i32 %49, 3
  %51 = add nsw i32 %50, 1
  %52 = mul nsw i32 5, %51
  store i32 %52, i32* %7, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %6, align 4
  %58 = call i32 (...) @P_Random()
  %59 = call i32 (...) @P_Random()
  %60 = sub nsw i32 %58, %59
  %61 = shl i32 %60, 19
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @MISSILERANGE, align 4
  %69 = load i64, i64* @bulletslope, align 8
  %70 = call i32 (...) @P_Random()
  %71 = call i32 (...) @P_Random()
  %72 = sub nsw i32 %70, %71
  %73 = shl i32 %72, 5
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %69, %74
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @P_LineAttack(%struct.TYPE_11__* %66, i32 %67, i32 %68, i64 %75, i32 %76)
  br label %78

78:                                               ; preds = %48
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %45

81:                                               ; preds = %45
  ret void
}

declare dso_local i32 @S_StartSound(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @P_SetMobjState(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @P_SetPsprite(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @P_BulletSlope(%struct.TYPE_11__*) #1

declare dso_local i32 @P_Random(...) #1

declare dso_local i32 @P_LineAttack(%struct.TYPE_11__*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
