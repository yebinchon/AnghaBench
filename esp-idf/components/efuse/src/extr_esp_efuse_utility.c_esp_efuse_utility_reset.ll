; ModuleID = '/home/carl/AnghaBench/esp-idf/components/efuse/src/extr_esp_efuse_utility.c_esp_efuse_utility_reset.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/efuse/src/extr_esp_efuse_utility.c_esp_efuse_utility_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@COUNT_EFUSE_BLOCKS = common dso_local global i32 0, align 4
@range_write_addr_blocks = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esp_efuse_utility_reset() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = call i32 (...) @esp_efuse_utility_clear_program_registers()
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %31, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @COUNT_EFUSE_BLOCKS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %34

8:                                                ; preds = %4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @range_write_addr_blocks, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %2, align 8
  br label %15

15:                                               ; preds = %27, %8
  %16 = load i64, i64* %2, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @range_write_addr_blocks, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %16, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = load i64, i64* %2, align 8
  %26 = call i32 @REG_WRITE(i64 %25, i32 0)
  br label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %2, align 8
  %29 = add nsw i64 %28, 4
  store i64 %29, i64* %2, align 8
  br label %15

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %4

34:                                               ; preds = %4
  ret void
}

declare dso_local i32 @esp_efuse_utility_clear_program_registers(...) #1

declare dso_local i32 @REG_WRITE(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
