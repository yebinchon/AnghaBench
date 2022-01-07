; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/extr_carthw.c_carthw_pier_prot_mem_setup.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/extr_carthw.c_carthw_pier_prot_mem_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@m68k_read8_map = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@m68k_read16_map = common dso_local global i32 0, align 4
@M68K_BANK_SIZE = common dso_local global i32 0, align 4
@carthw_pier_prot_read8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @carthw_pier_prot_mem_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carthw_pier_prot_mem_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %39

6:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %27, %6
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 4194304
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  %11 = load i32, i32* @m68k_read8_map, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 65535
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @cpu68k_map_set(i32 %11, i32 %12, i32 %14, i64 %17, i32 0)
  %19 = load i32, i32* @m68k_read16_map, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 65535
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @cpu68k_map_set(i32 %19, i32 %20, i32 %22, i64 %25, i32 0)
  br label %27

27:                                               ; preds = %10
  %28 = load i32, i32* @M68K_BANK_SIZE, align 4
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %7

31:                                               ; preds = %7
  %32 = load i32, i32* @m68k_read8_map, align 4
  %33 = load i32, i32* @M68K_BANK_SIZE, align 4
  %34 = load i32, i32* @M68K_BANK_SIZE, align 4
  %35 = mul nsw i32 %34, 2
  %36 = sub nsw i32 %35, 1
  %37 = load i64, i64* @carthw_pier_prot_read8, align 8
  %38 = call i32 @cpu68k_map_set(i32 %32, i32 %33, i32 %36, i64 %37, i32 1)
  br label %46

39:                                               ; preds = %1
  %40 = load i32, i32* @m68k_read8_map, align 4
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %42 = call i32 @cpu68k_map_set(i32 %40, i32 0, i32 2621439, i64 %41, i32 0)
  %43 = load i32, i32* @m68k_read16_map, align 4
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %45 = call i32 @cpu68k_map_set(i32 %43, i32 0, i32 2621439, i64 %44, i32 0)
  br label %46

46:                                               ; preds = %39, %31
  ret void
}

declare dso_local i32 @cpu68k_map_set(i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
