; ModuleID = '/home/carl/AnghaBench/esp-idf/components/efuse/src/extr_esp_efuse_utility.c_esp_efuse_utility_read_reg.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/efuse/src/extr_esp_efuse_utility.c_esp_efuse_utility_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@EFUSE_BLK_MAX = common dso_local global i64 0, align 8
@range_read_addr_blocks = common dso_local global %struct.TYPE_2__* null, align 8
@virt_blocks = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_efuse_utility_read_reg(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  %8 = icmp uge i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @EFUSE_BLK_MAX, align 8
  %12 = icmp ult i64 %10, %11
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i1 [ false, %2 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @range_read_addr_blocks, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @range_read_addr_blocks, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %21, %26
  %28 = sext i32 %27 to i64
  %29 = udiv i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ule i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @range_read_addr_blocks, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = mul i32 %41, 4
  %43 = add i32 %40, %42
  %44 = call i32 @REG_READ(i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @REG_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
