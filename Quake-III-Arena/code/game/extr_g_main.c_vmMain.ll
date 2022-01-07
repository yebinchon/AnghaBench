; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_main.c_vmMain.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_main.c_vmMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmMain(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 %0, i32* %15, align 4
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  %28 = load i32, i32* %15, align 4
  switch i32 %28, label %66 [
    i32 130, label %29
    i32 128, label %34
    i32 135, label %37
    i32 133, label %43
    i32 132, label %46
    i32 134, label %49
    i32 137, label %52
    i32 136, label %55
    i32 129, label %58
    i32 131, label %61
    i32 138, label %63
  ]

29:                                               ; preds = %13
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* %18, align 4
  %33 = call i32 @G_InitGame(i32 %30, i32 %31, i32 %32)
  store i32 0, i32* %14, align 4
  br label %67

34:                                               ; preds = %13
  %35 = load i32, i32* %16, align 4
  %36 = call i32 @G_ShutdownGame(i32 %35)
  store i32 0, i32* %14, align 4
  br label %67

37:                                               ; preds = %13
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %18, align 4
  %41 = call i64 @ClientConnect(i32 %38, i32 %39, i32 %40)
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %14, align 4
  br label %67

43:                                               ; preds = %13
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @ClientThink(i32 %44)
  store i32 0, i32* %14, align 4
  br label %67

46:                                               ; preds = %13
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @ClientUserinfoChanged(i32 %47)
  store i32 0, i32* %14, align 4
  br label %67

49:                                               ; preds = %13
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @ClientDisconnect(i32 %50)
  store i32 0, i32* %14, align 4
  br label %67

52:                                               ; preds = %13
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @ClientBegin(i32 %53)
  store i32 0, i32* %14, align 4
  br label %67

55:                                               ; preds = %13
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @ClientCommand(i32 %56)
  store i32 0, i32* %14, align 4
  br label %67

58:                                               ; preds = %13
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @G_RunFrame(i32 %59)
  store i32 0, i32* %14, align 4
  br label %67

61:                                               ; preds = %13
  %62 = call i32 (...) @ConsoleCommand()
  store i32 %62, i32* %14, align 4
  br label %67

63:                                               ; preds = %13
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @BotAIStartFrame(i32 %64)
  store i32 %65, i32* %14, align 4
  br label %67

66:                                               ; preds = %13
  store i32 -1, i32* %14, align 4
  br label %67

67:                                               ; preds = %66, %63, %61, %58, %55, %52, %49, %46, %43, %37, %34, %29
  %68 = load i32, i32* %14, align 4
  ret i32 %68
}

declare dso_local i32 @G_InitGame(i32, i32, i32) #1

declare dso_local i32 @G_ShutdownGame(i32) #1

declare dso_local i64 @ClientConnect(i32, i32, i32) #1

declare dso_local i32 @ClientThink(i32) #1

declare dso_local i32 @ClientUserinfoChanged(i32) #1

declare dso_local i32 @ClientDisconnect(i32) #1

declare dso_local i32 @ClientBegin(i32) #1

declare dso_local i32 @ClientCommand(i32) #1

declare dso_local i32 @G_RunFrame(i32) #1

declare dso_local i32 @ConsoleCommand(...) #1

declare dso_local i32 @BotAIStartFrame(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
