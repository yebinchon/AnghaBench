; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_hu_stuff.c_HU_Start.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_hu_stuff.c_HU_Start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@headsupactive = common dso_local global i32 0, align 4
@players = common dso_local global i32* null, align 8
@consoleplayer = common dso_local global i64 0, align 8
@plr = common dso_local global i32* null, align 8
@message_on = common dso_local global i32 0, align 4
@message_dontfuckwithme = common dso_local global i32 0, align 4
@message_nottobefuckedwith = common dso_local global i32 0, align 4
@chat_on = common dso_local global i32 0, align 4
@w_message = common dso_local global i32 0, align 4
@HU_MSGX = common dso_local global i32 0, align 4
@HU_MSGY = common dso_local global i32 0, align 4
@HU_MSGHEIGHT = common dso_local global i32 0, align 4
@hu_font = common dso_local global i32 0, align 4
@HU_FONTSTART = common dso_local global i32 0, align 4
@w_title = common dso_local global i32 0, align 4
@HU_TITLEX = common dso_local global i32 0, align 4
@HU_TITLEY = common dso_local global i32 0, align 4
@gamemode = common dso_local global i32 0, align 4
@HU_TITLE = common dso_local global i8* null, align 8
@HU_TITLE2 = common dso_local global i8* null, align 8
@w_chat = common dso_local global i32 0, align 4
@HU_INPUTX = common dso_local global i32 0, align 4
@HU_INPUTY = common dso_local global i32 0, align 4
@MAXPLAYERS = common dso_local global i32 0, align 4
@w_inputbuffer = common dso_local global i32* null, align 8
@always_off = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HU_Start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @headsupactive, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 (...) @HU_Stop()
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i32*, i32** @players, align 8
  %9 = load i64, i64* @consoleplayer, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  store i32* %10, i32** @plr, align 8
  store i32 0, i32* @message_on, align 4
  store i32 0, i32* @message_dontfuckwithme, align 4
  store i32 0, i32* @message_nottobefuckedwith, align 4
  store i32 0, i32* @chat_on, align 4
  %11 = load i32, i32* @HU_MSGX, align 4
  %12 = load i32, i32* @HU_MSGY, align 4
  %13 = load i32, i32* @HU_MSGHEIGHT, align 4
  %14 = load i32, i32* @hu_font, align 4
  %15 = load i32, i32* @HU_FONTSTART, align 4
  %16 = call i32 @HUlib_initSText(i32* @w_message, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32* @message_on)
  %17 = load i32, i32* @HU_TITLEX, align 4
  %18 = load i32, i32* @HU_TITLEY, align 4
  %19 = load i32, i32* @hu_font, align 4
  %20 = load i32, i32* @HU_FONTSTART, align 4
  %21 = call i32 @HUlib_initTextLine(i32* @w_title, i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* @gamemode, align 4
  switch i32 %22, label %26 [
    i32 128, label %23
    i32 130, label %23
    i32 129, label %23
    i32 131, label %25
  ]

23:                                               ; preds = %7, %7, %7
  %24 = load i8*, i8** @HU_TITLE, align 8
  store i8* %24, i8** %2, align 8
  br label %28

25:                                               ; preds = %7
  br label %26

26:                                               ; preds = %7, %25
  %27 = load i8*, i8** @HU_TITLE2, align 8
  store i8* %27, i8** %2, align 8
  br label %28

28:                                               ; preds = %26, %23
  br label %29

29:                                               ; preds = %33, %28
  %30 = load i8*, i8** %2, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i8*, i8** %2, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %2, align 8
  %36 = load i8, i8* %34, align 1
  %37 = sext i8 %36 to i32
  %38 = call i32 @HUlib_addCharToTextLine(i32* @w_title, i32 %37)
  br label %29

39:                                               ; preds = %29
  %40 = load i32, i32* @HU_INPUTX, align 4
  %41 = load i32, i32* @HU_INPUTY, align 4
  %42 = load i32, i32* @hu_font, align 4
  %43 = load i32, i32* @HU_FONTSTART, align 4
  %44 = call i32 @HUlib_initIText(i32* @w_chat, i32 %40, i32 %41, i32 %42, i32 %43, i32* @chat_on)
  store i32 0, i32* %1, align 4
  br label %45

45:                                               ; preds = %55, %39
  %46 = load i32, i32* %1, align 4
  %47 = load i32, i32* @MAXPLAYERS, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load i32*, i32** @w_inputbuffer, align 8
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = call i32 @HUlib_initIText(i32* %53, i32 0, i32 0, i32 0, i32 0, i32* @always_off)
  br label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %1, align 4
  br label %45

58:                                               ; preds = %45
  store i32 1, i32* @headsupactive, align 4
  ret void
}

declare dso_local i32 @HU_Stop(...) #1

declare dso_local i32 @HUlib_initSText(i32*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @HUlib_initTextLine(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @HUlib_addCharToTextLine(i32*, i32) #1

declare dso_local i32 @HUlib_initIText(i32*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
