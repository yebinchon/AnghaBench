; ModuleID = '/home/carl/AnghaBench/disque/src/extr_queue.c_getQueueImportRate.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_queue.c_getQueueImportRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { double }
%struct.TYPE_4__ = type { double, double, i64, i64 }

@server = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@IMPORT_RATE_WINDOW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getQueueImportRate(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = load double, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = fsub double %6, %9
  store double %10, double* %4, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = sitofp i64 %13 to double
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load double, double* %16, align 8
  %18 = fadd double %14, %17
  store double %18, double* %5, align 8
  %19 = load double, double* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = sitofp i64 %22 to double
  %24 = fsub double %19, %23
  %25 = load i64, i64* @IMPORT_RATE_WINDOW, align 8
  %26 = sitofp i64 %25 to double
  %27 = fcmp ogt double %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

29:                                               ; preds = %1
  %30 = load double, double* %4, align 8
  %31 = fcmp olt double %30, 5.000000e+01
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store double 5.000000e+01, double* %4, align 8
  br label %33

33:                                               ; preds = %32, %29
  %34 = load double, double* %5, align 8
  %35 = fmul double %34, 1.000000e+03
  %36 = load double, double* %4, align 8
  %37 = fdiv double %35, %36
  %38 = call i32 @ceil(double %37)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %33, %28
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @ceil(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
