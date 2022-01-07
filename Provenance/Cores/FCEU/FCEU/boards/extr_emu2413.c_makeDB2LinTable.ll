; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/boards/extr_emu2413.c_makeDB2LinTable.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/boards/extr_emu2413.c_makeDB2LinTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DB_MUTE = common dso_local global i64 0, align 8
@DB2LIN_AMP_BITS = common dso_local global i32 0, align 4
@DB_STEP = common dso_local global double 0.000000e+00, align 8
@DB2LIN_TABLE = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @makeDB2LinTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makeDB2LinTable() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %45, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @DB_MUTE, align 8
  %5 = load i64, i64* @DB_MUTE, align 8
  %6 = add i64 %4, %5
  %7 = icmp ult i64 %3, %6
  br i1 %7, label %8, label %48

8:                                                ; preds = %2
  %9 = load i32, i32* @DB2LIN_AMP_BITS, align 4
  %10 = shl i32 1, %9
  %11 = sub nsw i32 %10, 1
  %12 = sitofp i32 %11 to double
  %13 = load i64, i64* %1, align 8
  %14 = uitofp i64 %13 to double
  %15 = fneg double %14
  %16 = load double, double* @DB_STEP, align 8
  %17 = fmul double %15, %16
  %18 = fdiv double %17, 2.000000e+01
  %19 = call double @pow(i32 10, double %18)
  %20 = fmul double %12, %19
  %21 = fptosi double %20 to i64
  %22 = load i64*, i64** @DB2LIN_TABLE, align 8
  %23 = load i64, i64* %1, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  store i64 %21, i64* %24, align 8
  %25 = load i64, i64* %1, align 8
  %26 = load i64, i64* @DB_MUTE, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %8
  %29 = load i64*, i64** @DB2LIN_TABLE, align 8
  %30 = load i64, i64* %1, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %28, %8
  %33 = load i64*, i64** @DB2LIN_TABLE, align 8
  %34 = load i64, i64* %1, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 0, %36
  %38 = load i64*, i64** @DB2LIN_TABLE, align 8
  %39 = load i64, i64* %1, align 8
  %40 = load i64, i64* @DB_MUTE, align 8
  %41 = add i64 %39, %40
  %42 = load i64, i64* @DB_MUTE, align 8
  %43 = add i64 %41, %42
  %44 = getelementptr inbounds i64, i64* %38, i64 %43
  store i64 %37, i64* %44, align 8
  br label %45

45:                                               ; preds = %32
  %46 = load i64, i64* %1, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %1, align 8
  br label %2

48:                                               ; preds = %2
  ret void
}

declare dso_local double @pow(i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
