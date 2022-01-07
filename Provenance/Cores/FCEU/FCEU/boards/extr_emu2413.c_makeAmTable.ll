; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/boards/extr_emu2413.c_makeAmTable.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/boards/extr_emu2413.c_makeAmTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AM_PG_WIDTH = common dso_local global i64 0, align 8
@AM_DEPTH = common dso_local global i64 0, align 8
@DB_STEP = common dso_local global double 0.000000e+00, align 8
@PI = common dso_local global double 0.000000e+00, align 8
@PM_PG_WIDTH = common dso_local global double 0.000000e+00, align 8
@amtable = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @makeAmTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makeAmTable() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %26, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @AM_PG_WIDTH, align 8
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %29

6:                                                ; preds = %2
  %7 = load i64, i64* @AM_DEPTH, align 8
  %8 = sitofp i64 %7 to double
  %9 = fdiv double %8, 2.000000e+00
  %10 = load double, double* @DB_STEP, align 8
  %11 = fdiv double %9, %10
  %12 = load double, double* @PI, align 8
  %13 = fmul double 2.000000e+00, %12
  %14 = load i64, i64* %1, align 8
  %15 = uitofp i64 %14 to double
  %16 = fmul double %13, %15
  %17 = load double, double* @PM_PG_WIDTH, align 8
  %18 = fdiv double %16, %17
  %19 = call double @sin(double %18) #2
  %20 = fadd double 1.000000e+00, %19
  %21 = fmul double %11, %20
  %22 = fptoui double %21 to i64
  %23 = load i64*, i64** @amtable, align 8
  %24 = load i64, i64* %1, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  store i64 %22, i64* %25, align 8
  br label %26

26:                                               ; preds = %6
  %27 = load i64, i64* %1, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %1, align 8
  br label %2

29:                                               ; preds = %2
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sin(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
