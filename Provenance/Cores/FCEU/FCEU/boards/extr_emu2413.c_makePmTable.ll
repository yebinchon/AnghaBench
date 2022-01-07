; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/boards/extr_emu2413.c_makePmTable.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/boards/extr_emu2413.c_makePmTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PM_PG_WIDTH = common dso_local global i64 0, align 8
@PM_AMP = common dso_local global i64 0, align 8
@PM_DEPTH = common dso_local global i64 0, align 8
@PI = common dso_local global double 0.000000e+00, align 8
@pmtable = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @makePmTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makePmTable() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %28, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @PM_PG_WIDTH, align 8
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %31

6:                                                ; preds = %2
  %7 = load i64, i64* @PM_AMP, align 8
  %8 = sitofp i64 %7 to double
  %9 = load i64, i64* @PM_DEPTH, align 8
  %10 = sitofp i64 %9 to double
  %11 = load double, double* @PI, align 8
  %12 = fmul double 2.000000e+00, %11
  %13 = load i64, i64* %1, align 8
  %14 = uitofp i64 %13 to double
  %15 = fmul double %12, %14
  %16 = load i64, i64* @PM_PG_WIDTH, align 8
  %17 = uitofp i64 %16 to double
  %18 = fdiv double %15, %17
  %19 = call double @sin(double %18) #3
  %20 = fmul double %10, %19
  %21 = fdiv double %20, 1.200000e+03
  %22 = call double @pow(i32 2, double %21)
  %23 = fmul double %8, %22
  %24 = fptoui double %23 to i64
  %25 = load i64*, i64** @pmtable, align 8
  %26 = load i64, i64* %1, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  store i64 %24, i64* %27, align 8
  br label %28

28:                                               ; preds = %6
  %29 = load i64, i64* %1, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %1, align 8
  br label %2

31:                                               ; preds = %2
  ret void
}

declare dso_local double @pow(i32, double) #1

; Function Attrs: nounwind
declare dso_local double @sin(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
