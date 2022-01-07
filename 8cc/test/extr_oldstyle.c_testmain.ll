; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_oldstyle.c_testmain.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_oldstyle.c_testmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"K&R\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testmain() #0 {
  %1 = call i32 @print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 (...) @no_declaration()
  %3 = call i32 @expect(i32 3, i32 %2)
  %4 = call i32 @oldstyle1(i32 3, i32 4)
  %5 = call i32 @expect(i32 7, i32 %4)
  %6 = call i32 (...) @oldstyle2()
  %7 = call i32 @expect(i32 4, i32 %6)
  %8 = call i32 @oldstyle3(i32 5)
  %9 = call i32 @expect(i32 5, i32 %8)
  %10 = call i32 @oldstyle4(i32 5, double 4.000000e+00)
  %11 = call i32 @expect(i32 9, i32 %10)
  ret void
}

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @no_declaration(...) #1

declare dso_local i32 @oldstyle1(i32, i32) #1

declare dso_local i32 @oldstyle2(...) #1

declare dso_local i32 @oldstyle3(i32) #1

declare dso_local i32 @oldstyle4(i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
