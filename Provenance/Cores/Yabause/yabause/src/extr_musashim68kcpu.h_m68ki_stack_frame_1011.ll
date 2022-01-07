; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_musashim68kcpu.h_m68ki_stack_frame_1011.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_musashim68kcpu.h_m68ki_stack_frame_1011.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68ki_stack_frame_1011(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = call i32 @m68ki_push_32(i32 0)
  %8 = call i32 @m68ki_push_32(i32 0)
  %9 = call i32 @m68ki_push_32(i32 0)
  %10 = call i32 @m68ki_push_32(i32 0)
  %11 = call i32 @m68ki_push_32(i32 0)
  %12 = call i32 @m68ki_push_32(i32 0)
  %13 = call i32 @m68ki_push_32(i32 0)
  %14 = call i32 @m68ki_push_32(i32 0)
  %15 = call i32 @m68ki_push_32(i32 0)
  %16 = call i32 @m68ki_push_16(i32 0)
  %17 = call i32 @m68ki_push_32(i32 0)
  %18 = call i32 @m68ki_push_16(i32 0)
  %19 = call i32 @m68ki_push_32(i32 0)
  %20 = call i32 @m68ki_push_32(i32 0)
  %21 = call i32 @m68ki_push_32(i32 0)
  %22 = call i32 @m68ki_push_32(i32 0)
  %23 = call i32 @m68ki_push_32(i32 0)
  %24 = call i32 @m68ki_push_32(i32 0)
  %25 = call i32 @m68ki_push_16(i32 0)
  %26 = call i32 @m68ki_push_16(i32 0)
  %27 = call i32 @m68ki_push_32(i32 0)
  %28 = call i32 @m68ki_push_16(i32 0)
  %29 = call i32 @m68ki_push_16(i32 0)
  %30 = call i32 @m68ki_push_16(i32 0)
  %31 = call i32 @m68ki_push_16(i32 0)
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 %32, 2
  %34 = or i32 45056, %33
  %35 = call i32 @m68ki_push_16(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @m68ki_push_32(i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @m68ki_push_16(i32 %38)
  ret void
}

declare dso_local i32 @m68ki_push_32(i32) #1

declare dso_local i32 @m68ki_push_16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
