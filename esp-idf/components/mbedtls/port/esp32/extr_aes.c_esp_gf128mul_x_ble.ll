; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32/extr_aes.c_esp_gf128mul_x_ble.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32/extr_aes.c_esp_gf128mul_x_ble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @esp_gf128mul_x_ble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_gf128mul_x_ble(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @GET_UINT64_LE(i32 %9, i8* %10, i32 0)
  %12 = load i32, i32* %6, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @GET_UINT64_LE(i32 %12, i8* %13, i32 8)
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 %15, 1
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 63
  %19 = shl i32 %18, 3
  %20 = sub nsw i32 8, %19
  %21 = ashr i32 135, %20
  %22 = xor i32 %16, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 63
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 %25, 1
  %27 = or i32 %24, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @PUT_UINT64_LE(i32 %28, i8* %29, i32 0)
  %31 = load i32, i32* %8, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @PUT_UINT64_LE(i32 %31, i8* %32, i32 8)
  ret void
}

declare dso_local i32 @GET_UINT64_LE(i32, i8*, i32) #1

declare dso_local i32 @PUT_UINT64_LE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
