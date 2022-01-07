; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pokey.c_POKEY_StateSave.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pokey.c_POKEY_StateSave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POKEY_KBCODE = common dso_local global i32 0, align 4
@POKEY_IRQST = common dso_local global i32 0, align 4
@POKEY_IRQEN = common dso_local global i32 0, align 4
@POKEY_SKCTL = common dso_local global i32 0, align 4
@POKEY_DELAYED_SERIN_IRQ = common dso_local global i32 0, align 4
@POKEY_DELAYED_SEROUT_IRQ = common dso_local global i32 0, align 4
@POKEY_DELAYED_XMTDONE_IRQ = common dso_local global i32 0, align 4
@POKEY_AUDF = common dso_local global i32* null, align 8
@POKEY_AUDC = common dso_local global i32* null, align 8
@POKEY_AUDCTL = common dso_local global i32* null, align 8
@POKEY_DivNIRQ = common dso_local global i32* null, align 8
@POKEY_DivNMax = common dso_local global i32* null, align 8
@POKEY_Base_mult = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @POKEY_StateSave() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %3 = call i32 @StateSav_SaveUBYTE(i32* @POKEY_KBCODE, i32 1)
  %4 = call i32 @StateSav_SaveUBYTE(i32* @POKEY_IRQST, i32 1)
  %5 = call i32 @StateSav_SaveUBYTE(i32* @POKEY_IRQEN, i32 1)
  %6 = call i32 @StateSav_SaveUBYTE(i32* @POKEY_SKCTL, i32 1)
  %7 = call i32 @StateSav_SaveINT(i32* %1, i32 1)
  %8 = call i32 @StateSav_SaveINT(i32* %2, i32 1)
  %9 = call i32 @StateSav_SaveINT(i32* @POKEY_DELAYED_SERIN_IRQ, i32 1)
  %10 = call i32 @StateSav_SaveINT(i32* @POKEY_DELAYED_SEROUT_IRQ, i32 1)
  %11 = call i32 @StateSav_SaveINT(i32* @POKEY_DELAYED_XMTDONE_IRQ, i32 1)
  %12 = load i32*, i32** @POKEY_AUDF, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = call i32 @StateSav_SaveUBYTE(i32* %13, i32 4)
  %15 = load i32*, i32** @POKEY_AUDC, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = call i32 @StateSav_SaveUBYTE(i32* %16, i32 4)
  %18 = load i32*, i32** @POKEY_AUDCTL, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = call i32 @StateSav_SaveUBYTE(i32* %19, i32 1)
  %21 = load i32*, i32** @POKEY_DivNIRQ, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = call i32 @StateSav_SaveINT(i32* %22, i32 4)
  %24 = load i32*, i32** @POKEY_DivNMax, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = call i32 @StateSav_SaveINT(i32* %25, i32 4)
  %27 = load i32*, i32** @POKEY_Base_mult, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = call i32 @StateSav_SaveINT(i32* %28, i32 1)
  ret void
}

declare dso_local i32 @StateSav_SaveUBYTE(i32*, i32) #1

declare dso_local i32 @StateSav_SaveINT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
