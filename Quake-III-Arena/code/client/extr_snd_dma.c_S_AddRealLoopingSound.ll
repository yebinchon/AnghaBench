; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_dma.c_S_AddRealLoopingSound.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_dma.c_S_AddRealLoopingSound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i32, %struct.TYPE_5__*, i32, i32 }

@s_soundStarted = common dso_local global i32 0, align 4
@s_soundMuted = common dso_local global i64 0, align 8
@s_numSfx = common dso_local global i64 0, align 8
@S_COLOR_YELLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"S_AddRealLoopingSound: handle %i out of range\0A\00", align 1
@s_knownSfx = common dso_local global %struct.TYPE_5__* null, align 8
@qfalse = common dso_local global i64 0, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%s has length 0\00", align 1
@loopSounds = common dso_local global %struct.TYPE_6__* null, align 8
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_AddRealLoopingSound(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* @s_soundStarted, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i64, i64* @s_soundMuted, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %4
  br label %91

16:                                               ; preds = %12
  %17 = load i64, i64* %8, align 8
  %18 = icmp ult i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @s_numSfx, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19, %16
  %24 = load i32, i32* @S_COLOR_YELLOW, align 4
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @Com_Printf(i32 %24, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %25)
  br label %91

27:                                               ; preds = %19
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_knownSfx, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %29
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %9, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @qfalse, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %38 = call i32 @S_memoryLoad(%struct.TYPE_5__* %37)
  br label %39

39:                                               ; preds = %36, %27
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ERR_DROP, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @Com_Error(i32 %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @loopSounds, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @VectorCopy(i32 %51, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @loopSounds, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @VectorCopy(i32 %59, i32 %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @loopSounds, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** %72, align 8
  %73 = load i32, i32* @qtrue, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** @loopSounds, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  store i32 %73, i32* %78, align 8
  %79 = load i64, i64* @qfalse, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** @loopSounds, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  store i64 %79, i64* %84, align 8
  %85 = load i64, i64* @qfalse, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** @loopSounds, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i64 %85, i64* %90, align 8
  br label %91

91:                                               ; preds = %50, %23, %15
  ret void
}

declare dso_local i32 @Com_Printf(i32, i8*, i64) #1

declare dso_local i32 @S_memoryLoad(%struct.TYPE_5__*) #1

declare dso_local i32 @Com_Error(i32, i8*, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
