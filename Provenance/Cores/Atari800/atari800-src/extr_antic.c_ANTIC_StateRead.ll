; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_antic.c_ANTIC_StateRead.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_antic.c_ANTIC_StateRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ANTIC_DMACTL = common dso_local global i32 0, align 4
@ANTIC_CHACTL = common dso_local global i32 0, align 4
@ANTIC_HSCROL = common dso_local global i32 0, align 4
@ANTIC_VSCROL = common dso_local global i32 0, align 4
@ANTIC_PMBASE = common dso_local global i32 0, align 4
@ANTIC_CHBASE = common dso_local global i32 0, align 4
@ANTIC_NMIEN = common dso_local global i32 0, align 4
@ANTIC_NMIST = common dso_local global i32 0, align 4
@IR = common dso_local global i32 0, align 4
@anticmode = common dso_local global i32 0, align 4
@dctr = common dso_local global i32 0, align 4
@lastline = common dso_local global i32 0, align 4
@need_dl = common dso_local global i32 0, align 4
@vscrol_off = common dso_local global i32 0, align 4
@ANTIC_dlist = common dso_local global i32 0, align 4
@screenaddr = common dso_local global i32 0, align 4
@ANTIC_xpos = common dso_local global i32 0, align 4
@ANTIC_xpos_limit = common dso_local global i32 0, align 4
@ANTIC_ypos = common dso_local global i32 0, align 4
@ANTIC_OFFSET_DMACTL = common dso_local global i32 0, align 4
@ANTIC_OFFSET_CHACTL = common dso_local global i32 0, align 4
@ANTIC_OFFSET_PMBASE = common dso_local global i32 0, align 4
@ANTIC_OFFSET_CHBASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ANTIC_StateRead() #0 {
  %1 = call i32 @StateSav_ReadUBYTE(i32* @ANTIC_DMACTL, i32 1)
  %2 = call i32 @StateSav_ReadUBYTE(i32* @ANTIC_CHACTL, i32 1)
  %3 = call i32 @StateSav_ReadUBYTE(i32* @ANTIC_HSCROL, i32 1)
  %4 = call i32 @StateSav_ReadUBYTE(i32* @ANTIC_VSCROL, i32 1)
  %5 = call i32 @StateSav_ReadUBYTE(i32* @ANTIC_PMBASE, i32 1)
  %6 = call i32 @StateSav_ReadUBYTE(i32* @ANTIC_CHBASE, i32 1)
  %7 = call i32 @StateSav_ReadUBYTE(i32* @ANTIC_NMIEN, i32 1)
  %8 = call i32 @StateSav_ReadUBYTE(i32* @ANTIC_NMIST, i32 1)
  %9 = call i32 @StateSav_ReadUBYTE(i32* @IR, i32 1)
  %10 = call i32 @StateSav_ReadUBYTE(i32* @anticmode, i32 1)
  %11 = call i32 @StateSav_ReadUBYTE(i32* @dctr, i32 1)
  %12 = call i32 @StateSav_ReadUBYTE(i32* @lastline, i32 1)
  %13 = call i32 @StateSav_ReadUBYTE(i32* @need_dl, i32 1)
  %14 = call i32 @StateSav_ReadUBYTE(i32* @vscrol_off, i32 1)
  %15 = call i32 @StateSav_ReadUWORD(i32* @ANTIC_dlist, i32 1)
  %16 = call i32 @StateSav_ReadUWORD(i32* @screenaddr, i32 1)
  %17 = call i32 @StateSav_ReadINT(i32* @ANTIC_xpos, i32 1)
  %18 = call i32 @StateSav_ReadINT(i32* @ANTIC_xpos_limit, i32 1)
  %19 = call i32 @StateSav_ReadINT(i32* @ANTIC_ypos, i32 1)
  %20 = load i32, i32* @ANTIC_OFFSET_DMACTL, align 4
  %21 = load i32, i32* @ANTIC_DMACTL, align 4
  %22 = call i32 @ANTIC_PutByte(i32 %20, i32 %21)
  %23 = load i32, i32* @ANTIC_OFFSET_CHACTL, align 4
  %24 = load i32, i32* @ANTIC_CHACTL, align 4
  %25 = call i32 @ANTIC_PutByte(i32 %23, i32 %24)
  %26 = load i32, i32* @ANTIC_OFFSET_PMBASE, align 4
  %27 = load i32, i32* @ANTIC_PMBASE, align 4
  %28 = call i32 @ANTIC_PutByte(i32 %26, i32 %27)
  %29 = load i32, i32* @ANTIC_OFFSET_CHBASE, align 4
  %30 = load i32, i32* @ANTIC_CHBASE, align 4
  %31 = call i32 @ANTIC_PutByte(i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @StateSav_ReadUBYTE(i32*, i32) #1

declare dso_local i32 @StateSav_ReadUWORD(i32*, i32) #1

declare dso_local i32 @StateSav_ReadINT(i32*, i32) #1

declare dso_local i32 @ANTIC_PutByte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
