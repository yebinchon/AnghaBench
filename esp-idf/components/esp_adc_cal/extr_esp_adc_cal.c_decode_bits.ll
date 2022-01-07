; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_adc_cal/extr_esp_adc_cal.c_decode_bits.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_adc_cal/extr_esp_adc_cal.c_decode_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @decode_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_bits(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = ashr i32 %9, 1
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %11, %12
  %14 = and i32 %8, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = xor i32 %20, -1
  %22 = add nsw i32 %21, 1
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 1
  %25 = and i32 %22, %24
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %33

27:                                               ; preds = %16
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = ashr i32 %29, 1
  %31 = and i32 %28, %30
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %27, %19
  br label %39

34:                                               ; preds = %3
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %36, 1
  %38 = and i32 %35, %37
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %34, %33
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
