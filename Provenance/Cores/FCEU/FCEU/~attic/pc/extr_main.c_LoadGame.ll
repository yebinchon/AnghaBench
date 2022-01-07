; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_main.c_LoadGame.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_main.c_LoadGame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CurGame = common dso_local global i32* null, align 8
@soundrecfn = common dso_local global i64 0, align 8
@isloaded = common dso_local global i32 0, align 4
@EO_AUTOHIDE = common dso_local global i32 0, align 4
@eoptions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LoadGame(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %5 = call i32 (...) @CloseGame()
  %6 = load i8*, i8** %3, align 8
  %7 = call i32* @FCEUI_LoadGame(i8* %6, i32 1)
  store i32* %7, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

10:                                               ; preds = %1
  %11 = load i32*, i32** %4, align 8
  store i32* %11, i32** @CurGame, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @ParseGI(i32* %12)
  %14 = call i32 (...) @RefreshThrottleFPS()
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @DriverInitialize(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %32

19:                                               ; preds = %10
  %20 = load i64, i64* @soundrecfn, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i64, i64* @soundrecfn, align 8
  %24 = call i32 @FCEUI_BeginWaveRecord(i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* @soundrecfn, align 8
  %28 = call i32 @free(i64 %27)
  store i64 0, i64* @soundrecfn, align 8
  br label %29

29:                                               ; preds = %26, %22
  br label %30

30:                                               ; preds = %29, %19
  store i32 1, i32* @isloaded, align 4
  %31 = call i32 (...) @FCEUD_NetworkConnect()
  store i32 1, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %18, %9
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @CloseGame(...) #1

declare dso_local i32* @FCEUI_LoadGame(i8*, i32) #1

declare dso_local i32 @ParseGI(i32*) #1

declare dso_local i32 @RefreshThrottleFPS(...) #1

declare dso_local i32 @DriverInitialize(i32*) #1

declare dso_local i32 @FCEUI_BeginWaveRecord(i64) #1

declare dso_local i32 @free(i64) #1

declare dso_local i32 @FCEUD_NetworkConnect(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
