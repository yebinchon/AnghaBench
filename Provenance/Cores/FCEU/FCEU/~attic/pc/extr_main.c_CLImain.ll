; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_main.c_CLImain.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_main.c_CLImain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DrBaseDirectory = common dso_local global i32 0, align 4
@ntsccol = common dso_local global i32 0, align 4
@ntsctint = common dso_local global i32 0, align 4
@ntschue = common dso_local global i32 0, align 4
@cpalette = common dso_local global i64 0, align 8
@CurGame = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CLImain(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i32 (...) @FCEUI_Initialize()
  store i32 %7, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

10:                                               ; preds = %2
  %11 = call i32 (...) @GetBaseDirectory()
  store i32 %11, i32* @DrBaseDirectory, align 4
  %12 = load i32, i32* @DrBaseDirectory, align 4
  %13 = call i32 @FCEUI_SetBaseDirectory(i32 %12)
  %14 = call i32 (...) @CreateDirs()
  %15 = load i32, i32* %4, align 4
  %16 = icmp sle i32 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @ShowUsage(i8* %20)
  store i32 0, i32* %3, align 4
  br label %58

22:                                               ; preds = %10
  %23 = call i32 (...) @LoadConfig()
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 %24, 2
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = call i32 @DoArgs(i32 %25, i8** %27)
  %29 = load i32, i32* @ntsccol, align 4
  %30 = load i32, i32* @ntsctint, align 4
  %31 = load i32, i32* @ntschue, align 4
  %32 = call i32 @FCEUI_SetNTSCTH(i32 %29, i32 %30, i32 %31)
  %33 = load i64, i64* @cpalette, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = call i32 (...) @LoadCPalette()
  br label %37

37:                                               ; preds = %35, %22
  %38 = load i8**, i8*** %5, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %38, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @LoadGame(i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %37
  %47 = call i32 (...) @DriverKill()
  store i32 0, i32* %3, align 4
  br label %58

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %52, %48
  %50 = load i64, i64* @CurGame, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 (...) @DoFun()
  br label %49

54:                                               ; preds = %49
  %55 = call i32 (...) @CloseGame()
  %56 = call i32 (...) @SaveConfig()
  %57 = call i32 (...) @FCEUI_Kill()
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %46, %17, %9
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @FCEUI_Initialize(...) #1

declare dso_local i32 @GetBaseDirectory(...) #1

declare dso_local i32 @FCEUI_SetBaseDirectory(i32) #1

declare dso_local i32 @CreateDirs(...) #1

declare dso_local i32 @ShowUsage(i8*) #1

declare dso_local i32 @LoadConfig(...) #1

declare dso_local i32 @DoArgs(i32, i8**) #1

declare dso_local i32 @FCEUI_SetNTSCTH(i32, i32, i32) #1

declare dso_local i32 @LoadCPalette(...) #1

declare dso_local i32 @LoadGame(i8*) #1

declare dso_local i32 @DriverKill(...) #1

declare dso_local i32 @DoFun(...) #1

declare dso_local i32 @CloseGame(...) #1

declare dso_local i32 @SaveConfig(...) #1

declare dso_local i32 @FCEUI_Kill(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
