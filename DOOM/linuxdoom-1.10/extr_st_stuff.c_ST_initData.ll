; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_st_stuff.c_ST_initData.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_st_stuff.c_ST_initData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@st_firsttime = common dso_local global i32 0, align 4
@players = common dso_local global %struct.TYPE_3__* null, align 8
@consoleplayer = common dso_local global i64 0, align 8
@plyr = common dso_local global %struct.TYPE_3__* null, align 8
@st_clock = common dso_local global i64 0, align 8
@StartChatState = common dso_local global i32 0, align 4
@st_chatstate = common dso_local global i32 0, align 4
@FirstPersonState = common dso_local global i32 0, align 4
@st_gamestate = common dso_local global i32 0, align 4
@st_statusbaron = common dso_local global i32 0, align 4
@st_chat = common dso_local global i32 0, align 4
@st_oldchat = common dso_local global i32 0, align 4
@st_cursoron = common dso_local global i32 0, align 4
@st_faceindex = common dso_local global i64 0, align 8
@st_palette = common dso_local global i32 0, align 4
@st_oldhealth = common dso_local global i32 0, align 4
@NUMWEAPONS = common dso_local global i32 0, align 4
@oldweaponsowned = common dso_local global i32* null, align 8
@keyboxes = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ST_initData() #0 {
  %1 = alloca i32, align 4
  store i32 1, i32* @st_firsttime, align 4
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** @players, align 8
  %3 = load i64, i64* @consoleplayer, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i64 %3
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** @plyr, align 8
  store i64 0, i64* @st_clock, align 8
  %5 = load i32, i32* @StartChatState, align 4
  store i32 %5, i32* @st_chatstate, align 4
  %6 = load i32, i32* @FirstPersonState, align 4
  store i32 %6, i32* @st_gamestate, align 4
  store i32 1, i32* @st_statusbaron, align 4
  store i32 0, i32* @st_chat, align 4
  store i32 0, i32* @st_oldchat, align 4
  store i32 0, i32* @st_cursoron, align 4
  store i64 0, i64* @st_faceindex, align 8
  store i32 -1, i32* @st_palette, align 4
  store i32 -1, i32* @st_oldhealth, align 4
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %23, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @NUMWEAPONS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @plyr, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** @oldweaponsowned, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 %18, i32* %22, align 4
  br label %23

23:                                               ; preds = %11
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %7

26:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %27

27:                                               ; preds = %35, %26
  %28 = load i32, i32* %1, align 4
  %29 = icmp slt i32 %28, 3
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32*, i32** @keyboxes, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 -1, i32* %34, align 4
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %1, align 4
  br label %27

38:                                               ; preds = %27
  %39 = call i32 (...) @STlib_init()
  ret void
}

declare dso_local i32 @STlib_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
