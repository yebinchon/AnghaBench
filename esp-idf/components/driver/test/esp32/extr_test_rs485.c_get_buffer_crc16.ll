; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_rs485.c_get_buffer_crc16.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_rs485.c_get_buffer_crc16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc_hi = common dso_local global i32* null, align 8
@crc_low = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @get_buffer_crc16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_buffer_crc16(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @TEST_ASSERT(i32 %10)
  store i32 255, i32* %5, align 4
  store i32 255, i32* %6, align 4
  br label %12

12:                                               ; preds = %16, %2
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %4, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %3, align 8
  %20 = load i32, i32* %18, align 4
  %21 = xor i32 %17, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32*, i32** @crc_hi, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %22, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32*, i32** @crc_low, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  br label %12

34:                                               ; preds = %12
  %35 = load i32, i32* %5, align 4
  %36 = shl i32 %35, 8
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %36, %37
  ret i32 %38
}

declare dso_local i32 @TEST_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
