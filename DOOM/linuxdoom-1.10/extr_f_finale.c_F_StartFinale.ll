; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_f_finale.c_F_StartFinale.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_f_finale.c_F_StartFinale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ga_nothing = common dso_local global i32 0, align 4
@gameaction = common dso_local global i32 0, align 4
@GS_FINALE = common dso_local global i32 0, align 4
@gamestate = common dso_local global i32 0, align 4
@viewactive = common dso_local global i32 0, align 4
@automapactive = common dso_local global i32 0, align 4
@gamemode = common dso_local global i32 0, align 4
@mus_victor = common dso_local global i32 0, align 4
@gameepisode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"FLOOR4_8\00", align 1
@finaleflat = common dso_local global i8* null, align 8
@e1text = common dso_local global i32 0, align 4
@finaletext = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"SFLR6_1\00", align 1
@e2text = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"MFLR8_4\00", align 1
@e3text = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"MFLR8_3\00", align 1
@e4text = common dso_local global i32 0, align 4
@mus_read_m = common dso_local global i32 0, align 4
@gamemap = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"SLIME16\00", align 1
@c1text = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"RROCK14\00", align 1
@c2text = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"RROCK07\00", align 1
@c3text = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"RROCK17\00", align 1
@c4text = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"RROCK13\00", align 1
@c5text = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"RROCK19\00", align 1
@c6text = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"F_SKY1\00", align 1
@finalestage = common dso_local global i64 0, align 8
@finalecount = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @F_StartFinale() #0 {
  %1 = load i32, i32* @ga_nothing, align 4
  store i32 %1, i32* @gameaction, align 4
  %2 = load i32, i32* @GS_FINALE, align 4
  store i32 %2, i32* @gamestate, align 4
  store i32 0, i32* @viewactive, align 4
  store i32 0, i32* @automapactive, align 4
  %3 = load i32, i32* @gamemode, align 4
  switch i32 %3, label %36 [
    i32 128, label %4
    i32 130, label %4
    i32 129, label %4
    i32 131, label %18
  ]

4:                                                ; preds = %0, %0, %0
  %5 = load i32, i32* @mus_victor, align 4
  %6 = call i32 @S_ChangeMusic(i32 %5, i32 1)
  %7 = load i32, i32* @gameepisode, align 4
  switch i32 %7, label %16 [
    i32 1, label %8
    i32 2, label %10
    i32 3, label %12
    i32 4, label %14
  ]

8:                                                ; preds = %4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** @finaleflat, align 8
  %9 = load i32, i32* @e1text, align 4
  store i32 %9, i32* @finaletext, align 4
  br label %17

10:                                               ; preds = %4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** @finaleflat, align 8
  %11 = load i32, i32* @e2text, align 4
  store i32 %11, i32* @finaletext, align 4
  br label %17

12:                                               ; preds = %4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** @finaleflat, align 8
  %13 = load i32, i32* @e3text, align 4
  store i32 %13, i32* @finaletext, align 4
  br label %17

14:                                               ; preds = %4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** @finaleflat, align 8
  %15 = load i32, i32* @e4text, align 4
  store i32 %15, i32* @finaletext, align 4
  br label %17

16:                                               ; preds = %4
  br label %17

17:                                               ; preds = %16, %14, %12, %10, %8
  br label %40

18:                                               ; preds = %0
  %19 = load i32, i32* @mus_read_m, align 4
  %20 = call i32 @S_ChangeMusic(i32 %19, i32 1)
  %21 = load i32, i32* @gamemap, align 4
  switch i32 %21, label %34 [
    i32 6, label %22
    i32 11, label %24
    i32 20, label %26
    i32 30, label %28
    i32 15, label %30
    i32 31, label %32
  ]

22:                                               ; preds = %18
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** @finaleflat, align 8
  %23 = load i32, i32* @c1text, align 4
  store i32 %23, i32* @finaletext, align 4
  br label %35

24:                                               ; preds = %18
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** @finaleflat, align 8
  %25 = load i32, i32* @c2text, align 4
  store i32 %25, i32* @finaletext, align 4
  br label %35

26:                                               ; preds = %18
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** @finaleflat, align 8
  %27 = load i32, i32* @c3text, align 4
  store i32 %27, i32* @finaletext, align 4
  br label %35

28:                                               ; preds = %18
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** @finaleflat, align 8
  %29 = load i32, i32* @c4text, align 4
  store i32 %29, i32* @finaletext, align 4
  br label %35

30:                                               ; preds = %18
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** @finaleflat, align 8
  %31 = load i32, i32* @c5text, align 4
  store i32 %31, i32* @finaletext, align 4
  br label %35

32:                                               ; preds = %18
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** @finaleflat, align 8
  %33 = load i32, i32* @c6text, align 4
  store i32 %33, i32* @finaletext, align 4
  br label %35

34:                                               ; preds = %18
  br label %35

35:                                               ; preds = %34, %32, %30, %28, %26, %24, %22
  br label %40

36:                                               ; preds = %0
  %37 = load i32, i32* @mus_read_m, align 4
  %38 = call i32 @S_ChangeMusic(i32 %37, i32 1)
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** @finaleflat, align 8
  %39 = load i32, i32* @c1text, align 4
  store i32 %39, i32* @finaletext, align 4
  br label %40

40:                                               ; preds = %36, %35, %17
  store i64 0, i64* @finalestage, align 8
  store i64 0, i64* @finalecount, align 8
  ret void
}

declare dso_local i32 @S_ChangeMusic(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
