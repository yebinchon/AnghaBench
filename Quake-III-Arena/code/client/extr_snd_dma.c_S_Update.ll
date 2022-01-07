; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_dma.c_S_Update.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_dma.c_S_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_5__ = type { i32 }

@s_soundStarted = common dso_local global i32 0, align 4
@s_soundMuted = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"not started or muted\0A\00", align 1
@s_show = common dso_local global %struct.TYPE_7__* null, align 8
@s_channels = common dso_local global %struct.TYPE_6__* null, align 8
@MAX_CHANNELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%f %f %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"----(%i)---- painted: %i\0A\00", align 1
@s_paintedtime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_Update() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = load i32, i32* @s_soundStarted, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i64, i64* @s_soundMuted, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6, %0
  %10 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %67

11:                                               ; preds = %6
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @s_show, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %64

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @s_channels, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %55, %16
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @MAX_CHANNELS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %60

22:                                               ; preds = %18
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %54

27:                                               ; preds = %22
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %32, %27
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, i32, i32, ...) @Com_Printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %45, i32 %50)
  %52 = load i32, i32* %2, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %37, %32, %22
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %1, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 1
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %3, align 8
  br label %18

60:                                               ; preds = %18
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* @s_paintedtime, align 4
  %63 = call i32 (i8*, i32, i32, ...) @Com_Printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %11
  %65 = call i32 (...) @S_UpdateBackgroundTrack()
  %66 = call i32 (...) @S_Update_()
  br label %67

67:                                               ; preds = %64, %9
  ret void
}

declare dso_local i32 @Com_DPrintf(i8*) #1

declare dso_local i32 @Com_Printf(i8*, i32, i32, ...) #1

declare dso_local i32 @S_UpdateBackgroundTrack(...) #1

declare dso_local i32 @S_Update_(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
