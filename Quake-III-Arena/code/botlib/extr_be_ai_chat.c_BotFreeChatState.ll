; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_chat.c_BotFreeChatState.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_chat.c_BotFreeChatState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*, i32)* }

@MAX_CLIENTS = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PRT_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"chat state handle %d out of range\0A\00", align 1
@botchatstates = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid chat state %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"bot_reloadcharacters\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotFreeChatState(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp sle i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @MAX_CLIENTS, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %8, %1
  %13 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botimport, i32 0, i32 0), align 8
  %14 = load i32, i32* @PRT_FATAL, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 %13(i32 %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %64

17:                                               ; preds = %8
  %18 = load i32**, i32*** @botchatstates, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @botimport, i32 0, i32 0), align 8
  %26 = load i32, i32* @PRT_FATAL, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call i32 %25(i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %64

29:                                               ; preds = %17
  %30 = load i32**, i32*** @botchatstates, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %3, align 8
  %35 = call i64 @LibVarGetValue(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @BotFreeChatFile(i32 %38)
  br label %40

40:                                               ; preds = %37, %29
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @BotNextConsoleMessage(i32 %41, i32* %4)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %50, %40
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @BotRemoveConsoleMessage(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @BotNextConsoleMessage(i32 %51, i32* %4)
  store i32 %52, i32* %5, align 4
  br label %43

53:                                               ; preds = %43
  %54 = load i32**, i32*** @botchatstates, align 8
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @FreeMemory(i32* %58)
  %60 = load i32**, i32*** @botchatstates, align 8
  %61 = load i32, i32* %2, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %53, %24, %12
  ret void
}

declare dso_local i64 @LibVarGetValue(i8*) #1

declare dso_local i32 @BotFreeChatFile(i32) #1

declare dso_local i32 @BotNextConsoleMessage(i32, i32*) #1

declare dso_local i32 @BotRemoveConsoleMessage(i32, i32) #1

declare dso_local i32 @FreeMemory(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
