; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_main.c_D_DoAdvanceDemo.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_main.c_D_DoAdvanceDemo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PST_LIVE = common dso_local global i32 0, align 4
@players = common dso_local global %struct.TYPE_2__* null, align 8
@consoleplayer = common dso_local global i64 0, align 8
@advancedemo = common dso_local global i32 0, align 4
@usergame = common dso_local global i32 0, align 4
@paused = common dso_local global i32 0, align 4
@ga_nothing = common dso_local global i32 0, align 4
@gameaction = common dso_local global i32 0, align 4
@gamemode = common dso_local global i64 0, align 8
@retail = common dso_local global i64 0, align 8
@demosequence = common dso_local global i32 0, align 4
@commercial = common dso_local global i64 0, align 8
@pagetic = common dso_local global i32 0, align 4
@GS_DEMOSCREEN = common dso_local global i32 0, align 4
@gamestate = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"TITLEPIC\00", align 1
@pagename = common dso_local global i8* null, align 8
@mus_dm2ttl = common dso_local global i32 0, align 4
@mus_intro = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"demo1\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CREDIT\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"demo2\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"HELP2\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"demo3\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"demo4\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @D_DoAdvanceDemo() #0 {
  %1 = load i32, i32* @PST_LIVE, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @players, align 8
  %3 = load i64, i64* @consoleplayer, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i64 %3
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store i32 %1, i32* %5, align 4
  store i32 0, i32* @advancedemo, align 4
  store i32 0, i32* @usergame, align 4
  store i32 0, i32* @paused, align 4
  %6 = load i32, i32* @ga_nothing, align 4
  store i32 %6, i32* @gameaction, align 4
  %7 = load i64, i64* @gamemode, align 8
  %8 = load i64, i64* @retail, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load i32, i32* @demosequence, align 4
  %12 = add nsw i32 %11, 1
  %13 = srem i32 %12, 7
  store i32 %13, i32* @demosequence, align 4
  br label %18

14:                                               ; preds = %0
  %15 = load i32, i32* @demosequence, align 4
  %16 = add nsw i32 %15, 1
  %17 = srem i32 %16, 6
  store i32 %17, i32* @demosequence, align 4
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i32, i32* @demosequence, align 4
  switch i32 %19, label %64 [
    i32 0, label %20
    i32 1, label %38
    i32 2, label %40
    i32 3, label %42
    i32 4, label %44
    i32 5, label %60
    i32 6, label %62
  ]

20:                                               ; preds = %18
  %21 = load i64, i64* @gamemode, align 8
  %22 = load i64, i64* @commercial, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 385, i32* @pagetic, align 4
  br label %26

25:                                               ; preds = %20
  store i32 170, i32* @pagetic, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* @GS_DEMOSCREEN, align 4
  store i32 %27, i32* @gamestate, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** @pagename, align 8
  %28 = load i64, i64* @gamemode, align 8
  %29 = load i64, i64* @commercial, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @mus_dm2ttl, align 4
  %33 = call i32 @S_StartMusic(i32 %32)
  br label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @mus_intro, align 4
  %36 = call i32 @S_StartMusic(i32 %35)
  br label %37

37:                                               ; preds = %34, %31
  br label %64

38:                                               ; preds = %18
  %39 = call i32 @G_DeferedPlayDemo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %64

40:                                               ; preds = %18
  store i32 200, i32* @pagetic, align 4
  %41 = load i32, i32* @GS_DEMOSCREEN, align 4
  store i32 %41, i32* @gamestate, align 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** @pagename, align 8
  br label %64

42:                                               ; preds = %18
  %43 = call i32 @G_DeferedPlayDemo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %64

44:                                               ; preds = %18
  %45 = load i32, i32* @GS_DEMOSCREEN, align 4
  store i32 %45, i32* @gamestate, align 4
  %46 = load i64, i64* @gamemode, align 8
  %47 = load i64, i64* @commercial, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  store i32 385, i32* @pagetic, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** @pagename, align 8
  %50 = load i32, i32* @mus_dm2ttl, align 4
  %51 = call i32 @S_StartMusic(i32 %50)
  br label %59

52:                                               ; preds = %44
  store i32 200, i32* @pagetic, align 4
  %53 = load i64, i64* @gamemode, align 8
  %54 = load i64, i64* @retail, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** @pagename, align 8
  br label %58

57:                                               ; preds = %52
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** @pagename, align 8
  br label %58

58:                                               ; preds = %57, %56
  br label %59

59:                                               ; preds = %58, %49
  br label %64

60:                                               ; preds = %18
  %61 = call i32 @G_DeferedPlayDemo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %64

62:                                               ; preds = %18
  %63 = call i32 @G_DeferedPlayDemo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %64

64:                                               ; preds = %18, %62, %60, %59, %42, %40, %38, %37
  ret void
}

declare dso_local i32 @S_StartMusic(i32) #1

declare dso_local i32 @G_DeferedPlayDemo(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
