; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_cvt.c_print.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_cvt.c_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"%d %d %d %ld %u %u %u %lu %f %f %lf\0A\00", align 1
@c = common dso_local global i32 0, align 4
@s = common dso_local global i32 0, align 4
@i = common dso_local global i32 0, align 4
@l = common dso_local global i32 0, align 4
@C = common dso_local global i32 0, align 4
@S = common dso_local global i32 0, align 4
@I = common dso_local global i32 0, align 4
@L = common dso_local global i32 0, align 4
@f = common dso_local global i32 0, align 4
@d = common dso_local global i32 0, align 4
@D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print() #0 {
  %1 = load i32, i32* @c, align 4
  %2 = load i32, i32* @s, align 4
  %3 = load i32, i32* @i, align 4
  %4 = load i32, i32* @l, align 4
  %5 = load i32, i32* @C, align 4
  %6 = load i32, i32* @S, align 4
  %7 = load i32, i32* @I, align 4
  %8 = load i32, i32* @L, align 4
  %9 = load i32, i32* @f, align 4
  %10 = load i32, i32* @d, align 4
  %11 = load i32, i32* @D, align 4
  %12 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11)
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
