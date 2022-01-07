; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_am_map.c_AM_LevelInit.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_am_map.c_AM_LevelInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@leveljuststarted = common dso_local global i64 0, align 8
@f_y = common dso_local global i64 0, align 8
@f_x = common dso_local global i64 0, align 8
@finit_width = common dso_local global i32 0, align 4
@f_w = common dso_local global i32 0, align 4
@finit_height = common dso_local global i32 0, align 4
@f_h = common dso_local global i32 0, align 4
@min_scale_mtof = common dso_local global double 0.000000e+00, align 8
@FRACUNIT = common dso_local global double 0.000000e+00, align 8
@scale_mtof = common dso_local global i32 0, align 4
@max_scale_mtof = common dso_local global i32 0, align 4
@scale_ftom = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AM_LevelInit() #0 {
  store i64 0, i64* @leveljuststarted, align 8
  store i64 0, i64* @f_y, align 8
  store i64 0, i64* @f_x, align 8
  %1 = load i32, i32* @finit_width, align 4
  store i32 %1, i32* @f_w, align 4
  %2 = load i32, i32* @finit_height, align 4
  store i32 %2, i32* @f_h, align 4
  %3 = call i32 (...) @AM_clearMarks()
  %4 = call i32 (...) @AM_findMinMaxBoundaries()
  %5 = load double, double* @min_scale_mtof, align 8
  %6 = load double, double* @FRACUNIT, align 8
  %7 = fmul double 0x3FE6666666666666, %6
  %8 = fptosi double %7 to i32
  %9 = call i8* @FixedDiv(double %5, i32 %8)
  %10 = ptrtoint i8* %9 to i32
  store i32 %10, i32* @scale_mtof, align 4
  %11 = load i32, i32* @scale_mtof, align 4
  %12 = load i32, i32* @max_scale_mtof, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = load double, double* @min_scale_mtof, align 8
  %16 = fptosi double %15 to i32
  store i32 %16, i32* @scale_mtof, align 4
  br label %17

17:                                               ; preds = %14, %0
  %18 = load double, double* @FRACUNIT, align 8
  %19 = load i32, i32* @scale_mtof, align 4
  %20 = call i8* @FixedDiv(double %18, i32 %19)
  store i8* %20, i8** @scale_ftom, align 8
  ret void
}

declare dso_local i32 @AM_clearMarks(...) #1

declare dso_local i32 @AM_findMinMaxBoundaries(...) #1

declare dso_local i8* @FixedDiv(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
