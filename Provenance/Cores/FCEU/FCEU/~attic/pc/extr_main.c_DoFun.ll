; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_main.c_DoFun.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_main.c_DoFun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DoFun.fskipc = internal global i32 0, align 4
@DoFun.opause = internal global i32 0, align 4
@NoWaiting = common dso_local global i64 0, align 8
@frameskip = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DoFun() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = load i64, i64* @NoWaiting, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %7

7:                                                ; preds = %6, %0
  %8 = load i32, i32* @DoFun.fskipc, align 4
  %9 = call i32 @FCEUI_Emulate(i32** %1, i32** %2, i32* %3, i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @FCEUD_Update(i32* %10, i32* %11, i32 %12)
  %14 = load i32, i32* @DoFun.opause, align 4
  %15 = call i32 (...) @FCEUI_EmulationPaused()
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %7
  %18 = call i32 (...) @FCEUI_EmulationPaused()
  store i32 %18, i32* @DoFun.opause, align 4
  %19 = load i32, i32* @DoFun.opause, align 4
  %20 = call i32 @SilenceSound(i32 %19)
  br label %21

21:                                               ; preds = %17, %7
  ret void
}

declare dso_local i32 @FCEUI_Emulate(i32**, i32**, i32*, i32) #1

declare dso_local i32 @FCEUD_Update(i32*, i32*, i32) #1

declare dso_local i32 @FCEUI_EmulationPaused(...) #1

declare dso_local i32 @SilenceSound(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
