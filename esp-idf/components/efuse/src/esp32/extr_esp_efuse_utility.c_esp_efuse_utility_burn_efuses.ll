; ModuleID = '/home/carl/AnghaBench/esp-idf/components/efuse/src/esp32/extr_esp_efuse_utility.c_esp_efuse_utility_burn_efuses.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/efuse/src/esp32/extr_esp_efuse_utility.c_esp_efuse_utility_burn_efuses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@EFUSE_CONF_REG = common dso_local global i64 0, align 8
@EFUSE_CONF_WRITE = common dso_local global i64 0, align 8
@EFUSE_CMD_REG = common dso_local global i64 0, align 8
@EFUSE_CMD_PGM = common dso_local global i64 0, align 8
@EFUSE_CONF_READ = common dso_local global i64 0, align 8
@EFUSE_CMD_READ = common dso_local global i64 0, align 8
@COUNT_EFUSE_BLOCKS = common dso_local global i32 0, align 4
@COUNT_EFUSE_REG_PER_BLOCK = common dso_local global i32 0, align 4
@EFUSE_CODING_SCHEME_3_4 = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@range_write_addr_blocks = common dso_local global %struct.TYPE_2__* null, align 8
@virt_blocks = common dso_local global i64** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esp_efuse_utility_burn_efuses() #0 {
  %1 = call i32 (...) @esp_efuse_set_timing()
  %2 = load i64, i64* @EFUSE_CONF_REG, align 8
  %3 = load i64, i64* @EFUSE_CONF_WRITE, align 8
  %4 = call i32 @REG_WRITE(i64 %2, i64 %3)
  %5 = load i64, i64* @EFUSE_CMD_REG, align 8
  %6 = load i64, i64* @EFUSE_CMD_PGM, align 8
  %7 = call i32 @REG_WRITE(i64 %5, i64 %6)
  br label %8

8:                                                ; preds = %12, %0
  %9 = load i64, i64* @EFUSE_CMD_REG, align 8
  %10 = call i64 @REG_READ(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %8

13:                                               ; preds = %8
  %14 = load i64, i64* @EFUSE_CONF_REG, align 8
  %15 = load i64, i64* @EFUSE_CONF_READ, align 8
  %16 = call i32 @REG_WRITE(i64 %14, i64 %15)
  %17 = load i64, i64* @EFUSE_CMD_REG, align 8
  %18 = load i64, i64* @EFUSE_CMD_READ, align 8
  %19 = call i32 @REG_WRITE(i64 %17, i64 %18)
  br label %20

20:                                               ; preds = %24, %13
  %21 = load i64, i64* @EFUSE_CMD_REG, align 8
  %22 = call i64 @REG_READ(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %20

25:                                               ; preds = %20
  %26 = call i32 (...) @esp_efuse_utility_reset()
  ret void
}

declare dso_local i32 @esp_efuse_set_timing(...) #1

declare dso_local i32 @REG_WRITE(i64, i64) #1

declare dso_local i64 @REG_READ(i64) #1

declare dso_local i32 @esp_efuse_utility_reset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
