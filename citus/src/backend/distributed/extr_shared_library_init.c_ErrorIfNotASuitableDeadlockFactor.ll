; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/extr_shared_library_init.c_ErrorIfNotASuitableDeadlockFactor.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/extr_shared_library_init.c_ErrorIfNotASuitableDeadlockFactor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WARNING = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [130 x i8] c"citus.distributed_deadlock_detection_factor cannot be less than 1. To disable distributed deadlock detection set the value to -1.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double*, i8**, i32)* @ErrorIfNotASuitableDeadlockFactor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ErrorIfNotASuitableDeadlockFactor(double* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store double* %0, double** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load double*, double** %5, align 8
  %9 = load double, double* %8, align 8
  %10 = fcmp ole double %9, 1.000000e+00
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = load double*, double** %5, align 8
  %13 = load double, double* %12, align 8
  %14 = fcmp une double %13, -1.000000e+00
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i32, i32* @WARNING, align 4
  %17 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %18 = call i32 @errcode(i32 %17)
  %19 = call i32 @errmsg(i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @ereport(i32 %16, i32 %19)
  store i32 0, i32* %4, align 4
  br label %22

21:                                               ; preds = %11, %3
  store i32 1, i32* %4, align 4
  br label %22

22:                                               ; preds = %21, %15
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
