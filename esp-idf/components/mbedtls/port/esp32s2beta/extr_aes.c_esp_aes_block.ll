; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32s2beta/extr_aes.c_esp_aes_block.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32s2beta/extr_aes.c_esp_aes_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AES_TEXT_IN_BASE = common dso_local global i64 0, align 8
@AES_BLOCK_BYTES = common dso_local global i32 0, align 4
@AES_TRIGGER_REG = common dso_local global i32 0, align 4
@AES_STATE_REG = common dso_local global i32 0, align 4
@AES_TEXT_OUT_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @esp_aes_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esp_aes_block(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i64, i64* @AES_TEXT_IN_BASE, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @AES_BLOCK_BYTES, align 4
  %9 = call i32 @memcpy(i8* %6, i8* %7, i32 %8)
  %10 = load i32, i32* @AES_TRIGGER_REG, align 4
  %11 = call i32 @REG_WRITE(i32 %10, i32 1)
  br label %12

12:                                               ; preds = %16, %2
  %13 = load i32, i32* @AES_STATE_REG, align 4
  %14 = call i64 @REG_READ(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %12

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = load i64, i64* @AES_TEXT_OUT_BASE, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load i32, i32* @AES_BLOCK_BYTES, align 4
  %22 = call i32 @memcpy(i8* %18, i8* %20, i32 %21)
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i64 @REG_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
