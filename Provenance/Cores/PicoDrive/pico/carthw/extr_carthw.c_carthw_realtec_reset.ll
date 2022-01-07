; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/extr_carthw.c_carthw_realtec_reset.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/extr_carthw.c_carthw_realtec_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@m68k_read8_map = common dso_local global i32 0, align 4
@M68K_BANK_SIZE = common dso_local global i64 0, align 8
@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@m68k_read16_map = common dso_local global i32 0, align 4
@m68k_write8_map = common dso_local global i32 0, align 4
@carthw_realtec_write8 = common dso_local global i64 0, align 8
@realtec_size = common dso_local global i32 0, align 4
@realtec_bank = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @carthw_realtec_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carthw_realtec_reset() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %28, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 4194304
  br i1 %4, label %5, label %34

5:                                                ; preds = %2
  %6 = load i32, i32* @m68k_read8_map, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = load i64, i64* @M68K_BANK_SIZE, align 8
  %11 = add nsw i64 %9, %10
  %12 = sub nsw i64 %11, 1
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @cpu68k_map_set(i32 %6, i32 %7, i64 %12, i64 %15, i32 0)
  %17 = load i32, i32* @m68k_read16_map, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @M68K_BANK_SIZE, align 8
  %22 = add nsw i64 %20, %21
  %23 = sub nsw i64 %22, 1
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @cpu68k_map_set(i32 %17, i32 %18, i64 %23, i64 %26, i32 0)
  br label %28

28:                                               ; preds = %5
  %29 = load i64, i64* @M68K_BANK_SIZE, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %1, align 4
  br label %2

34:                                               ; preds = %2
  %35 = load i32, i32* @m68k_write8_map, align 4
  %36 = load i64, i64* @M68K_BANK_SIZE, align 8
  %37 = add nsw i64 4194304, %36
  %38 = sub nsw i64 %37, 1
  %39 = load i64, i64* @carthw_realtec_write8, align 8
  %40 = call i32 @cpu68k_map_set(i32 %35, i32 4194304, i64 %38, i64 %39, i32 1)
  store i32 -2147483648, i32* @realtec_size, align 4
  store i32 -2147483648, i32* @realtec_bank, align 4
  ret void
}

declare dso_local i32 @cpu68k_map_set(i32, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
