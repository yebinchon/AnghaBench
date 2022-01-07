; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_rs485.c_buffer_fill_random.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_rs485.c_buffer_fill_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64)* @buffer_fill_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_fill_random(i64* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64*, i64** %4, align 8
  %10 = icmp ne i64* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @TEST_ASSERT(i32 %11)
  %13 = load i64, i64* %5, align 8
  %14 = icmp ult i64 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %34, %16
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %5, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = call i32 (...) @esp_random()
  store i32 %23, i32* %7, align 4
  %24 = load i64*, i64** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = sub i64 %28, %30
  %32 = call i32 @MIN(i64 %31, i32 4)
  %33 = call i32 @memcpy(i64* %27, i32* %7, i32 %32)
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 4
  store i32 %36, i32* %6, align 4
  br label %17

37:                                               ; preds = %17
  %38 = load i64*, i64** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = sub i64 %39, 2
  %41 = call i32 @get_buffer_crc16(i64* %38, i64 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, 255
  %44 = sext i32 %43 to i64
  %45 = load i64*, i64** %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = sub i64 %46, 2
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  store i64 %44, i64* %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = ashr i32 %49, 8
  %51 = sext i32 %50 to i64
  %52 = load i64*, i64** %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = sub i64 %53, 1
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  store i64 %51, i64* %55, align 8
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %37, %15
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @esp_random(...) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i32 @get_buffer_crc16(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
