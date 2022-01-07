; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_memory.c_MEMORY_CartA0bfDisable.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_memory.c_MEMORY_CartA0bfDisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEMORY_cartA0BF_enabled = common dso_local global i64 0, align 8
@PIA_PORTB = common dso_local global i32 0, align 4
@PIA_PORTB_mask = common dso_local global i32 0, align 4
@MEMORY_ram_size = common dso_local global i32 0, align 4
@MEMORY_mem = common dso_local global i64 0, align 8
@under_cartA0BF = common dso_local global i32* null, align 8
@FALSE = common dso_local global i64 0, align 8
@Atari800_machine_type = common dso_local global i64 0, align 8
@Atari800_MACHINE_XLXE = common dso_local global i64 0, align 8
@GTIA_TRIG = common dso_local global i64* null, align 8
@GTIA_GRACTL = common dso_local global i32 0, align 4
@GTIA_TRIG_latch = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MEMORY_CartA0bfDisable() #0 {
  %1 = alloca i32*, align 8
  %2 = load i64, i64* @MEMORY_cartA0BF_enabled, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %44

4:                                                ; preds = %0
  %5 = load i32, i32* @PIA_PORTB, align 4
  %6 = load i32, i32* @PIA_PORTB_mask, align 4
  %7 = or i32 %5, %6
  %8 = call i32* @builtin_cart(i32 %7)
  store i32* %8, i32** %1, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %4
  %12 = load i32, i32* @MEMORY_ram_size, align 4
  %13 = icmp sgt i32 %12, 40
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i64, i64* @MEMORY_mem, align 8
  %16 = add nsw i64 %15, 40960
  %17 = load i32*, i32** @under_cartA0BF, align 8
  %18 = call i32 @memcpy(i64 %16, i32* %17, i32 8192)
  %19 = call i32 @MEMORY_SetRAM(i32 40960, i32 49151)
  br label %22

20:                                               ; preds = %11
  %21 = call i32 @MEMORY_dFillMem(i32 40960, i32 255, i32 8192)
  br label %22

22:                                               ; preds = %20, %14
  br label %28

23:                                               ; preds = %4
  %24 = load i64, i64* @MEMORY_mem, align 8
  %25 = add nsw i64 %24, 40960
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @memcpy(i64 %25, i32* %26, i32 8192)
  br label %28

28:                                               ; preds = %23, %22
  %29 = load i64, i64* @FALSE, align 8
  store i64 %29, i64* @MEMORY_cartA0BF_enabled, align 8
  %30 = load i64, i64* @Atari800_machine_type, align 8
  %31 = load i64, i64* @Atari800_MACHINE_XLXE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i64*, i64** @GTIA_TRIG, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 3
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @GTIA_GRACTL, align 4
  %37 = and i32 %36, 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i64*, i64** @GTIA_TRIG_latch, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 3
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %39, %33
  br label %43

43:                                               ; preds = %42, %28
  br label %44

44:                                               ; preds = %43, %0
  ret void
}

declare dso_local i32* @builtin_cart(i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @MEMORY_SetRAM(i32, i32) #1

declare dso_local i32 @MEMORY_dFillMem(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
