; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_atoms.c_UI_Init.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_atoms.c_UI_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, i64, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { double, i32 }

@uis = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_Init() #0 {
  %1 = call i32 (...) @UI_RegisterCvars()
  %2 = call i32 (...) @UI_InitGameinfo()
  %3 = call i32 @trap_GetGlconfig(%struct.TYPE_4__* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 4))
  %4 = load double, double* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 4, i32 0), align 8
  %5 = fmul double %4, 0x3F61111111111111
  store double %5, double* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 0), align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 4, i32 1), align 8
  %7 = mul nsw i32 %6, 480
  %8 = sitofp i32 %7 to double
  %9 = load double, double* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 4, i32 0), align 8
  %10 = fmul double %9, 6.400000e+02
  %11 = fcmp ogt double %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %0
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 4, i32 1), align 8
  %14 = sitofp i32 %13 to double
  %15 = load double, double* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 4, i32 0), align 8
  %16 = fmul double %15, 0x3FF5555555555555
  %17 = fsub double %14, %16
  %18 = fmul double 5.000000e-01, %17
  store double %18, double* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 1), align 8
  br label %20

19:                                               ; preds = %0
  store double 0.000000e+00, double* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 1), align 8
  br label %20

20:                                               ; preds = %19, %12
  %21 = call i32 (...) @Menu_Cache()
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uis, i32 0, i32 2), align 8
  ret void
}

declare dso_local i32 @UI_RegisterCvars(...) #1

declare dso_local i32 @UI_InitGameinfo(...) #1

declare dso_local i32 @trap_GetGlconfig(%struct.TYPE_4__*) #1

declare dso_local i32 @Menu_Cache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
