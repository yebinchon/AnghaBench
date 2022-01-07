; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_af80.c_update_8000_9fff.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_af80.c_update_8000_9fff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@not_right_cartridge_rd4_control = common dso_local global i64 0, align 8
@not_rom_output_enable = common dso_local global i64 0, align 8
@MEMORY_mem = common dso_local global i64 0, align 8
@af80_rom = common dso_local global i64 0, align 8
@rom_bank_select = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_8000_9fff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_8000_9fff() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @not_right_cartridge_rd4_control, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %33

5:                                                ; preds = %0
  %6 = load i64, i64* @not_rom_output_enable, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = load i64, i64* @MEMORY_mem, align 8
  %10 = add nsw i64 %9, 32768
  %11 = call i32 @memset(i64 %10, i32 255, i32 8192)
  br label %33

12:                                               ; preds = %5
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %29, %12
  %14 = load i32, i32* %1, align 4
  %15 = icmp slt i32 %14, 32
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = load i64, i64* @MEMORY_mem, align 8
  %18 = add nsw i64 %17, 32768
  %19 = load i32, i32* %1, align 4
  %20 = shl i32 %19, 8
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = load i64, i64* @af80_rom, align 8
  %24 = load i32, i32* @rom_bank_select, align 4
  %25 = shl i32 %24, 8
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  %28 = call i32 @memcpy(i64 %22, i64 %27, i32 256)
  br label %29

29:                                               ; preds = %16
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %13

32:                                               ; preds = %13
  br label %33

33:                                               ; preds = %4, %32, %8
  ret void
}

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
