; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_players.c_CG_HasteTrail.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_players.c_CG_HasteTrail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@cg = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@ANIM_TOGGLEBIT = common dso_local global i32 0, align 4
@LEGS_RUN = common dso_local global i32 0, align 4
@LEGS_BACK = common dso_local global i32 0, align 4
@vec3_origin = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@LE_SCALE_FADE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @CG_HasteTrail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_HasteTrail(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 0), align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %61

12:                                               ; preds = %1
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ANIM_TOGGLEBIT, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @LEGS_RUN, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %12
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @LEGS_BACK, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %61

29:                                               ; preds = %24, %12
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 100
  store i64 %33, i64* %31, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 0), align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 0), align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %39, %29
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @VectorCopy(i32 %46, i32* %47)
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 16
  store i32 %52, i32* %50, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* @vec3_origin, align 4
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg, i32 0, i32 0), align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cgs, i32 0, i32 0, i32 0), align 4
  %57 = call %struct.TYPE_13__* @CG_SmokePuff(i32* %53, i32 %54, i32 8, i32 1, i32 1, i32 1, i32 1, i32 500, i64 %55, i32 0, i32 0, i32 %56)
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %3, align 8
  %58 = load i32, i32* @LE_SCALE_FADE, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %43, %28, %11
  ret void
}

declare dso_local i32 @VectorCopy(i32, i32*) #1

declare dso_local %struct.TYPE_13__* @CG_SmokePuff(i32*, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
