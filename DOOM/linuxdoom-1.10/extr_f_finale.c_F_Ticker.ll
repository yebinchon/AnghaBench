; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_f_finale.c_F_Ticker.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_f_finale.c_F_Ticker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@gamemode = common dso_local global i64 0, align 8
@commercial = common dso_local global i64 0, align 8
@finalecount = common dso_local global i32 0, align 4
@MAXPLAYERS = common dso_local global i32 0, align 4
@players = common dso_local global %struct.TYPE_4__* null, align 8
@gamemap = common dso_local global i32 0, align 4
@ga_worlddone = common dso_local global i32 0, align 4
@gameaction = common dso_local global i32 0, align 4
@finalestage = common dso_local global i32 0, align 4
@finaletext = common dso_local global i32 0, align 4
@TEXTSPEED = common dso_local global i32 0, align 4
@TEXTWAIT = common dso_local global i32 0, align 4
@wipegamestate = common dso_local global i32 0, align 4
@gameepisode = common dso_local global i32 0, align 4
@mus_bunny = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @F_Ticker() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @gamemode, align 8
  %3 = load i64, i64* @commercial, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %40

5:                                                ; preds = %0
  %6 = load i32, i32* @finalecount, align 4
  %7 = icmp sgt i32 %6, 50
  br i1 %7, label %8, label %40

8:                                                ; preds = %5
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %24, %8
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @MAXPLAYERS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @players, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %27

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %9

27:                                               ; preds = %22, %9
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* @MAXPLAYERS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32, i32* @gamemap, align 4
  %33 = icmp eq i32 %32, 30
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 (...) @F_StartCast()
  br label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @ga_worlddone, align 4
  store i32 %37, i32* @gameaction, align 4
  br label %38

38:                                               ; preds = %36, %34
  br label %39

39:                                               ; preds = %38, %27
  br label %40

40:                                               ; preds = %39, %5, %0
  %41 = load i32, i32* @finalecount, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @finalecount, align 4
  %43 = load i32, i32* @finalestage, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 (...) @F_CastTicker()
  br label %71

47:                                               ; preds = %40
  %48 = load i64, i64* @gamemode, align 8
  %49 = load i64, i64* @commercial, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %71

52:                                               ; preds = %47
  %53 = load i32, i32* @finalestage, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @finalecount, align 4
  %57 = load i32, i32* @finaletext, align 4
  %58 = call i32 @strlen(i32 %57)
  %59 = load i32, i32* @TEXTSPEED, align 4
  %60 = mul nsw i32 %58, %59
  %61 = load i32, i32* @TEXTWAIT, align 4
  %62 = add nsw i32 %60, %61
  %63 = icmp sgt i32 %56, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %55
  store i32 0, i32* @finalecount, align 4
  store i32 1, i32* @finalestage, align 4
  store i32 -1, i32* @wipegamestate, align 4
  %65 = load i32, i32* @gameepisode, align 4
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* @mus_bunny, align 4
  %69 = call i32 @S_StartMusic(i32 %68)
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %45, %51, %70, %55, %52
  ret void
}

declare dso_local i32 @F_StartCast(...) #1

declare dso_local i32 @F_CastTicker(...) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @S_StartMusic(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
