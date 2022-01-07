; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_utils.c_rand_size_t.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_utils.c_rand_size_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rand_size_t() #0 {
  %1 = call i32 (...) @rand()
  %2 = and i32 %1, 255
  %3 = sext i32 %2 to i64
  %4 = shl i64 %3, 56
  %5 = call i32 (...) @rand()
  %6 = and i32 %5, 255
  %7 = sext i32 %6 to i64
  %8 = shl i64 %7, 48
  %9 = or i64 %4, %8
  %10 = call i32 (...) @rand()
  %11 = and i32 %10, 255
  %12 = sext i32 %11 to i64
  %13 = shl i64 %12, 40
  %14 = or i64 %9, %13
  %15 = call i32 (...) @rand()
  %16 = and i32 %15, 255
  %17 = sext i32 %16 to i64
  %18 = shl i64 %17, 32
  %19 = or i64 %14, %18
  %20 = call i32 (...) @rand()
  %21 = and i32 %20, 255
  %22 = sext i32 %21 to i64
  %23 = shl i64 %22, 24
  %24 = or i64 %19, %23
  %25 = call i32 (...) @rand()
  %26 = and i32 %25, 255
  %27 = sext i32 %26 to i64
  %28 = shl i64 %27, 16
  %29 = or i64 %24, %28
  %30 = call i32 (...) @rand()
  %31 = and i32 %30, 255
  %32 = sext i32 %31 to i64
  %33 = shl i64 %32, 8
  %34 = or i64 %29, %33
  %35 = call i32 (...) @rand()
  %36 = and i32 %35, 255
  %37 = sext i32 %36 to i64
  %38 = shl i64 %37, 0
  %39 = or i64 %34, %38
  ret i64 %39
}

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
