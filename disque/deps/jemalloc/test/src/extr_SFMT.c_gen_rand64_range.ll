; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/test/src/extr_SFMT.c_gen_rand64_range.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/test/src/extr_SFMT.c_gen_rand64_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_rand64_range(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @KQU(i32 -1)
  %8 = call i32 @KQU(i32 -1)
  %9 = load i32, i32* %4, align 4
  %10 = srem i32 %8, %9
  %11 = sub nsw i32 %7, %10
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %2, %22
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @gen_rand64(i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = srem i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %23

22:                                               ; preds = %12
  br label %12

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @KQU(i32) #1

declare dso_local i32 @gen_rand64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
