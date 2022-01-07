; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_memory.c_MEMORY_Cart809fDisable.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_memory.c_MEMORY_Cart809fDisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cart809F_enabled = common dso_local global i64 0, align 8
@MEMORY_ram_size = common dso_local global i32 0, align 4
@MEMORY_mem = common dso_local global i64 0, align 8
@under_cart809F = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MEMORY_Cart809fDisable() #0 {
  %1 = load i64, i64* @cart809F_enabled, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %16

3:                                                ; preds = %0
  %4 = load i32, i32* @MEMORY_ram_size, align 4
  %5 = icmp sgt i32 %4, 32
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = load i64, i64* @MEMORY_mem, align 8
  %8 = add nsw i64 %7, 32768
  %9 = load i32, i32* @under_cart809F, align 4
  %10 = call i32 @memcpy(i64 %8, i32 %9, i32 8192)
  %11 = call i32 @MEMORY_SetRAM(i32 32768, i32 40959)
  br label %14

12:                                               ; preds = %3
  %13 = call i32 @MEMORY_dFillMem(i32 32768, i32 255, i32 8192)
  br label %14

14:                                               ; preds = %12, %6
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* @cart809F_enabled, align 8
  br label %16

16:                                               ; preds = %14, %0
  ret void
}

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @MEMORY_SetRAM(i32, i32) #1

declare dso_local i32 @MEMORY_dFillMem(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
