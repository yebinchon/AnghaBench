; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_main.c_D_DoomLoop.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_main.c_D_DoomLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@demorecording = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"-debugfile\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"debug%i.txt\00", align 1
@consoleplayer = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"debug output to: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@debugfile = common dso_local global i32 0, align 4
@singletics = common dso_local global i64 0, align 8
@netcmds = common dso_local global i32** null, align 8
@maketic = common dso_local global i64 0, align 8
@BACKUPTICS = common dso_local global i64 0, align 8
@advancedemo = common dso_local global i64 0, align 8
@gametic = common dso_local global i32 0, align 4
@players = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @D_DoomLoop() #0 {
  %1 = alloca [20 x i8], align 16
  %2 = load i64, i64* @demorecording, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (...) @G_BeginRecording()
  br label %6

6:                                                ; preds = %4, %0
  %7 = call i64 @M_CheckParm(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %11 = load i32, i32* @consoleplayer, align 4
  %12 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %14 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %13)
  %15 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %16 = call i32 @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 %16, i32* @debugfile, align 4
  br label %17

17:                                               ; preds = %9, %6
  %18 = call i32 (...) @I_InitGraphics()
  br label %19

19:                                               ; preds = %17, %49
  %20 = call i32 (...) @I_StartFrame()
  %21 = load i64, i64* @singletics, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = call i32 (...) @I_StartTic()
  %25 = call i32 (...) @D_ProcessEvents()
  %26 = load i32**, i32*** @netcmds, align 8
  %27 = load i32, i32* @consoleplayer, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @maketic, align 8
  %32 = load i64, i64* @BACKUPTICS, align 8
  %33 = urem i64 %31, %32
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = call i32 @G_BuildTiccmd(i32* %34)
  %36 = load i64, i64* @advancedemo, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = call i32 (...) @D_DoAdvanceDemo()
  br label %40

40:                                               ; preds = %38, %23
  %41 = call i32 (...) @M_Ticker()
  %42 = call i32 (...) @G_Ticker()
  %43 = load i32, i32* @gametic, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @gametic, align 4
  %45 = load i64, i64* @maketic, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* @maketic, align 8
  br label %49

47:                                               ; preds = %19
  %48 = call i32 (...) @TryRunTics()
  br label %49

49:                                               ; preds = %47, %40
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @players, align 8
  %51 = load i32, i32* @consoleplayer, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @S_UpdateSounds(i32 %55)
  %57 = call i32 (...) @D_Display()
  %58 = call i32 (...) @I_UpdateSound()
  %59 = call i32 (...) @I_SubmitSound()
  br label %19
}

declare dso_local i32 @G_BeginRecording(...) #1

declare dso_local i64 @M_CheckParm(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fopen(i8*, i8*) #1

declare dso_local i32 @I_InitGraphics(...) #1

declare dso_local i32 @I_StartFrame(...) #1

declare dso_local i32 @I_StartTic(...) #1

declare dso_local i32 @D_ProcessEvents(...) #1

declare dso_local i32 @G_BuildTiccmd(i32*) #1

declare dso_local i32 @D_DoAdvanceDemo(...) #1

declare dso_local i32 @M_Ticker(...) #1

declare dso_local i32 @G_Ticker(...) #1

declare dso_local i32 @TryRunTics(...) #1

declare dso_local i32 @S_UpdateSounds(i32) #1

declare dso_local i32 @D_Display(...) #1

declare dso_local i32 @I_UpdateSound(...) #1

declare dso_local i32 @I_SubmitSound(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
