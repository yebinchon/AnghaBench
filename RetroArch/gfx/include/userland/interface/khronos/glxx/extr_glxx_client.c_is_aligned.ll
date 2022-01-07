; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/glxx/extr_glxx_client.c_is_aligned.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/glxx/extr_glxx_client.c_is_aligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_TRUE = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @is_aligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_aligned(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %19 [
    i32 133, label %7
    i32 129, label %7
    i32 130, label %9
    i32 128, label %9
    i32 132, label %14
    i32 131, label %14
  ]

7:                                                ; preds = %2, %2
  %8 = load i32, i32* @GL_TRUE, align 4
  store i32 %8, i32* %3, align 4
  br label %22

9:                                                ; preds = %2, %2
  %10 = load i64, i64* %5, align 8
  %11 = and i64 %10, 1
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %3, align 4
  br label %22

14:                                               ; preds = %2, %2
  %15 = load i64, i64* %5, align 8
  %16 = and i64 %15, 3
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %22

19:                                               ; preds = %2
  %20 = call i32 (...) @UNREACHABLE()
  %21 = load i32, i32* @GL_FALSE, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %19, %14, %9, %7
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @UNREACHABLE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
