; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_funcargs.c_testmain.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_funcargs.c_testmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"function argument\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testmain() #0 {
  %1 = call i32 @print(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @many_ints(i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9)
  %3 = call i32 @many_floats(double 1.000000e+00, double 2.000000e+00, double 3.000000e+00, double 4.000000e+00, double 5.000000e+00, double 6.000000e+00, double 7.000000e+00, double 8.000000e+00, double 9.000000e+00, double 1.000000e+01, double 1.100000e+01, double 1.200000e+01, double 1.300000e+01, double 1.400000e+01, double 1.500000e+01, double 1.600000e+01, double 1.700000e+01)
  %4 = call i32 @mixed(double 1.000000e+00, i32 2, double 3.000000e+00, i32 4, double 5.000000e+00, i32 6, double 7.000000e+00, i32 8, double 9.000000e+00, i32 10, double 1.100000e+01, i32 12, double 1.300000e+01, i32 14, double 1.500000e+01, i32 16, double 1.700000e+01, i32 18, double 1.900000e+01, i32 20, double 2.100000e+01, i32 22, double 2.300000e+01, i32 24, double 2.500000e+01, i32 26, double 2.700000e+01, i32 28, double 2.900000e+01, i32 30, double 3.100000e+01, i32 32, double 3.300000e+01, i32 34, double 3.500000e+01, i32 36, double 3.700000e+01, i32 38, double 3.900000e+01, i32 40)
  ret void
}

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @many_ints(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @many_floats(double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double) #1

declare dso_local i32 @mixed(double, i32, double, i32, double, i32, double, i32, double, i32, double, i32, double, i32, double, i32, double, i32, double, i32, double, i32, double, i32, double, i32, double, i32, double, i32, double, i32, double, i32, double, i32, double, i32, double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
