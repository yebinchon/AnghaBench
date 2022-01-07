; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_memory.c_MEMORY_CartA0bfEnable.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_memory.c_MEMORY_CartA0bfEnable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEMORY_cartA0BF_enabled = common dso_local global i64 0, align 8
@MEMORY_ram_size = common dso_local global i32 0, align 4
@PIA_PORTB = common dso_local global i32 0, align 4
@PIA_PORTB_mask = common dso_local global i32 0, align 4
@under_cartA0BF = common dso_local global i32 0, align 4
@MEMORY_mem = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@Atari800_machine_type = common dso_local global i64 0, align 8
@Atari800_MACHINE_XLXE = common dso_local global i64 0, align 8
@GTIA_TRIG = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MEMORY_CartA0bfEnable() #0 {
  %1 = load i64, i64* @MEMORY_cartA0BF_enabled, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %27, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @MEMORY_ram_size, align 4
  %5 = icmp sgt i32 %4, 40
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = load i32, i32* @PIA_PORTB, align 4
  %8 = load i32, i32* @PIA_PORTB_mask, align 4
  %9 = or i32 %7, %8
  %10 = call i32* @builtin_cart(i32 %9)
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = load i32, i32* @under_cartA0BF, align 4
  %14 = load i64, i64* @MEMORY_mem, align 8
  %15 = add nsw i64 %14, 40960
  %16 = call i32 @memcpy(i32 %13, i64 %15, i32 8192)
  %17 = call i32 @MEMORY_SetROM(i32 40960, i32 49151)
  br label %18

18:                                               ; preds = %12, %6, %3
  %19 = load i64, i64* @TRUE, align 8
  store i64 %19, i64* @MEMORY_cartA0BF_enabled, align 8
  %20 = load i64, i64* @Atari800_machine_type, align 8
  %21 = load i64, i64* @Atari800_MACHINE_XLXE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32*, i32** @GTIA_TRIG, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %18
  br label %27

27:                                               ; preds = %26, %0
  ret void
}

declare dso_local i32* @builtin_cart(i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @MEMORY_SetROM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
