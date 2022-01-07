; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wear_levelling/test/esp32/extr_test_wl.c_check_mem_data.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wear_levelling/test/esp32/extr_test_wl.c_check_mem_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEST_SECTORS_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64*)* @check_mem_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_mem_data(i32 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @wl_sector_size(i32 %11)
  store i64 %12, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %54, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @TEST_SECTORS_COUNT, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %57

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %19, %21
  %23 = load i64*, i64** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @wl_read(i32 %18, i64 %22, i64* %23, i64 %24)
  %26 = call i32 @TEST_ESP_OK(i32 %25)
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %50, %17
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %7, align 8
  %31 = udiv i64 %30, 8
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %27
  %34 = load i64, i64* %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %7, align 8
  %41 = mul i64 %39, %40
  %42 = add i64 %37, %41
  store i64 %42, i64* %10, align 8
  %43 = load i64*, i64** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @TEST_ASSERT_EQUAL(i64 %47, i64 %48)
  br label %50

50:                                               ; preds = %33
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %27

53:                                               ; preds = %27
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %13

57:                                               ; preds = %13
  ret void
}

declare dso_local i64 @wl_sector_size(i32) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @wl_read(i32, i64, i64*, i64) #1

declare dso_local i32 @TEST_ASSERT_EQUAL(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
