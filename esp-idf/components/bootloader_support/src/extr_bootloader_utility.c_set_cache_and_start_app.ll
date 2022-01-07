; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_bootloader_utility.c_set_cache_and_start_app.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_bootloader_utility.c_set_cache_and_start_app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"configure drom and irom and start\00", align 1
@DPORT_FLASH_MMU_TABLE_SIZE = common dso_local global i32 0, align 4
@DPORT_FLASH_MMU_TABLE_INVALID_VAL = common dso_local global i32 0, align 4
@DPORT_PRO_FLASH_MMU_TABLE = common dso_local global i32* null, align 8
@MMU_FLASH_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"d mmu set paddr=%08x vaddr=%08x size=%d n=%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"rc=%d\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"i mmu set paddr=%08x vaddr=%08x size=%d n=%d\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"start: 0x%08x\00", align 1
@DPORT_APP_CACHE_CTRL1_REG = common dso_local global i32 0, align 4
@DPORT_APP_CACHE_MASK_DRAM1 = common dso_local global i32 0, align 4
@DPORT_APP_CACHE_MASK_DROM0 = common dso_local global i32 0, align 4
@DPORT_APP_CACHE_MASK_IRAM0 = common dso_local global i32 0, align 4
@DPORT_APP_CACHE_MASK_IRAM1 = common dso_local global i32 0, align 4
@DPORT_APP_CACHE_MASK_IROM0 = common dso_local global i32 0, align 4
@DPORT_CACHE_SOURCE_1_REG = common dso_local global i32 0, align 4
@DPORT_MMU_ACCESS_FLASH = common dso_local global i32 0, align 4
@DPORT_PRO_CACHE_CTRL1_REG = common dso_local global i32 0, align 4
@DPORT_PRO_CACHE_I_SOURCE_PRO_IRAM1 = common dso_local global i32 0, align 4
@DPORT_PRO_CACHE_I_SOURCE_PRO_IROM0 = common dso_local global i32 0, align 4
@DPORT_PRO_CACHE_MASK_DRAM1 = common dso_local global i32 0, align 4
@DPORT_PRO_CACHE_MASK_DROM0 = common dso_local global i32 0, align 4
@DPORT_PRO_CACHE_MASK_IRAM0 = common dso_local global i32 0, align 4
@DPORT_PRO_CACHE_MASK_IRAM1 = common dso_local global i32 0, align 4
@DPORT_PRO_CACHE_MASK_IROM0 = common dso_local global i32 0, align 4
@DPORT_PRO_ICACHE_CTRL1_REG = common dso_local global i32 0, align 4
@DPORT_PRO_ICACHE_MASK_DROM0 = common dso_local global i32 0, align 4
@DPORT_PRO_ICACHE_MASK_IRAM0 = common dso_local global i32 0, align 4
@DPORT_PRO_ICACHE_MASK_IRAM1 = common dso_local global i32 0, align 4
@DPORT_PRO_ICACHE_MASK_IROM0 = common dso_local global i32 0, align 4
@IRAM0_ADDRESS_LOW = common dso_local global i32 0, align 4
@IRAM1_ADDRESS_LOW = common dso_local global i32 0, align 4
@IROM0_ADDRESS_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32)* @set_cache_and_start_app to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cache_and_start_app(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca void ()*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %22 = load i32, i32* @TAG, align 4
  %23 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %24

24:                                               ; preds = %34, %7
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* @DPORT_FLASH_MMU_TABLE_SIZE, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load i32, i32* @DPORT_FLASH_MMU_TABLE_INVALID_VAL, align 4
  %30 = load i32*, i32** @DPORT_PRO_FLASH_MMU_TABLE, align 8
  %31 = load i32, i32* %16, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %29, i32* %33, align 4
  br label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %16, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %16, align 4
  br label %24

37:                                               ; preds = %24
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @MMU_FLASH_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @bootloader_cache_pages_to_map(i32 %41, i32 %42)
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* @TAG, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @MMU_FLASH_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %18, align 4
  %51 = call i32 (i32, i8*, i32, ...) @ESP_LOGV(i32 %44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* @TAG, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call i32 (i32, i8*, i32, ...) @ESP_LOGV(i32 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @MMU_FLASH_MASK, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @bootloader_cache_pages_to_map(i32 %58, i32 %59)
  store i32 %60, i32* %20, align 4
  %61 = load i32, i32* @TAG, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @MMU_FLASH_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %20, align 4
  %68 = call i32 (i32, i8*, i32, ...) @ESP_LOGV(i32 %61, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* @TAG, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i32 (i32, i8*, i32, ...) @ESP_LOGV(i32 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @TAG, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to void ()*
  store void ()* %77, void ()** %21, align 8
  %78 = load void ()*, void ()** %21, align 8
  call void %78() #2
  unreachable
}

declare dso_local i32 @ESP_LOGD(i32, i8*, ...) #1

declare dso_local i32 @bootloader_cache_pages_to_map(i32, i32) #1

declare dso_local i32 @ESP_LOGV(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
