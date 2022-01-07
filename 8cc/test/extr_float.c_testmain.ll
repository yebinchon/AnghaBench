; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_float.c_testmain.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_float.c_testmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"float\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testmain() #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = call i32 @print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (...) @std()
  %7 = call i32 @expect(double 0x3FE6666666666666, double 0x3FE6666666666666)
  store float 1.000000e+01, float* %1, align 4
  %8 = load float, float* %1, align 4
  store float %8, float* %2, align 4
  %9 = load float, float* %1, align 4
  %10 = fpext float %9 to double
  %11 = call i32 @expectf(double 1.000000e+01, double %10)
  %12 = load float, float* %2, align 4
  %13 = fpext float %12 to double
  %14 = call i32 @expectf(double 1.000000e+01, double %13)
  ret void
}

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @std(...) #1

declare dso_local i32 @expect(double, double) #1

declare dso_local i32 @expectf(double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
