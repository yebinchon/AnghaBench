; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/boards/extr_emu2413.c_internal_refresh.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/boards/extr_emu2413.c_internal_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PM_SPEED = common dso_local global i32 0, align 4
@PM_DP_WIDTH = common dso_local global i32 0, align 4
@clk = common dso_local global i32 0, align 4
@pm_dphase = common dso_local global i8* null, align 8
@AM_SPEED = common dso_local global i32 0, align 4
@AM_DP_WIDTH = common dso_local global i32 0, align 4
@am_dphase = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @internal_refresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @internal_refresh() #0 {
  %1 = call i32 (...) @makeDphaseTable()
  %2 = call i32 (...) @makeDphaseARTable()
  %3 = call i32 (...) @makeDphaseDRTable()
  %4 = load i32, i32* @PM_SPEED, align 4
  %5 = load i32, i32* @PM_DP_WIDTH, align 4
  %6 = mul nsw i32 %4, %5
  %7 = load i32, i32* @clk, align 4
  %8 = sdiv i32 %7, 72
  %9 = sdiv i32 %6, %8
  %10 = call i64 @rate_adjust(i32 %9)
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** @pm_dphase, align 8
  %12 = load i32, i32* @AM_SPEED, align 4
  %13 = load i32, i32* @AM_DP_WIDTH, align 4
  %14 = mul nsw i32 %12, %13
  %15 = load i32, i32* @clk, align 4
  %16 = sdiv i32 %15, 72
  %17 = sdiv i32 %14, %16
  %18 = call i64 @rate_adjust(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** @am_dphase, align 8
  ret void
}

declare dso_local i32 @makeDphaseTable(...) #1

declare dso_local i32 @makeDphaseARTable(...) #1

declare dso_local i32 @makeDphaseDRTable(...) #1

declare dso_local i64 @rate_adjust(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
