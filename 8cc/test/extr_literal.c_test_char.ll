; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_literal.c_test_char.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_literal.c_test_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_char() #0 {
  %1 = call i32 @expect(i32 65, i8 signext 65)
  %2 = call i32 @expect(i32 97, i8 signext 97)
  %3 = call i32 @expect(i32 7, i8 signext 7)
  %4 = call i32 @expect(i32 8, i8 signext 8)
  %5 = call i32 @expect(i32 12, i8 signext 12)
  %6 = call i32 @expect(i32 10, i8 signext 10)
  %7 = call i32 @expect(i32 13, i8 signext 13)
  %8 = call i32 @expect(i32 9, i8 signext 9)
  %9 = call i32 @expect(i32 11, i8 signext 11)
  %10 = call i32 @expect(i32 27, i8 signext 27)
  %11 = call i32 @expect(i32 0, i8 signext 0)
  %12 = call i32 @expect(i32 7, i8 signext 7)
  %13 = call i32 @expect(i32 15, i8 signext 15)
  %14 = call i32 @expect(i32 -99, i8 signext -99)
  %15 = call i32 @expect(i32 0, i8 signext 0)
  %16 = call i32 @expect(i32 -1, i8 signext -1)
  %17 = call i32 @expect(i32 15, i8 signext 15)
  %18 = call i32 @expect(i32 18, i8 signext 18)
  ret void
}

declare dso_local i32 @expect(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
