; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_af80.c_update_d6.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_af80.c_update_d6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@not_enable_2k_character_ram = common dso_local global i32 0, align 4
@MEMORY_mem = common dso_local global i64 0, align 8
@af80_screen = common dso_local global i64 0, align 8
@video_bank_select = common dso_local global i32 0, align 4
@not_enable_2k_attribute_ram = common dso_local global i32 0, align 4
@af80_attrib = common dso_local global i64 0, align 8
@not_enable_crtc_registers = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_d6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_d6() #0 {
  %1 = load i32, i32* @not_enable_2k_character_ram, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %20, label %3

3:                                                ; preds = %0
  %4 = load i64, i64* @MEMORY_mem, align 8
  %5 = add nsw i64 %4, 54784
  %6 = load i64, i64* @af80_screen, align 8
  %7 = load i32, i32* @video_bank_select, align 4
  %8 = shl i32 %7, 7
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %6, %9
  %11 = call i32 @memcpy(i64 %5, i64 %10, i32 128)
  %12 = load i64, i64* @MEMORY_mem, align 8
  %13 = add nsw i64 %12, 54912
  %14 = load i64, i64* @af80_screen, align 8
  %15 = load i32, i32* @video_bank_select, align 4
  %16 = shl i32 %15, 7
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %14, %17
  %19 = call i32 @memcpy(i64 %13, i64 %18, i32 128)
  br label %49

20:                                               ; preds = %0
  %21 = load i32, i32* @not_enable_2k_attribute_ram, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* @MEMORY_mem, align 8
  %25 = add nsw i64 %24, 54784
  %26 = load i64, i64* @af80_attrib, align 8
  %27 = load i32, i32* @video_bank_select, align 4
  %28 = shl i32 %27, 7
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  %31 = call i32 @memcpy(i64 %25, i64 %30, i32 128)
  %32 = load i64, i64* @MEMORY_mem, align 8
  %33 = add nsw i64 %32, 54912
  %34 = load i64, i64* @af80_attrib, align 8
  %35 = load i32, i32* @video_bank_select, align 4
  %36 = shl i32 %35, 7
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = call i32 @memcpy(i64 %33, i64 %38, i32 128)
  br label %48

40:                                               ; preds = %20
  %41 = load i64, i64* @not_enable_crtc_registers, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i64, i64* @MEMORY_mem, align 8
  %45 = add nsw i64 %44, 54784
  %46 = call i32 @memset(i64 %45, i32 255, i32 256)
  br label %47

47:                                               ; preds = %43, %40
  br label %48

48:                                               ; preds = %47, %23
  br label %49

49:                                               ; preds = %48, %3
  ret void
}

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
