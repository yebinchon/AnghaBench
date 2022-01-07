; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32s2beta/extr_sha.c_esp_sha_read_digest_state.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32s2beta/extr_sha.c_esp_sha_read_digest_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA2_512 = common dso_local global i64 0, align 8
@SHA2_384 = common dso_local global i64 0, align 8
@SHA_H_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esp_sha_read_digest_state(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = call i32 (...) @esp_sha_wait_idle()
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @SHA2_512, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @SHA2_384, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 8
  %15 = load i64, i64* @SHA_H_BASE, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @state_length(i64 %17)
  %19 = call i32 @memcpy(i8* %14, i8* %16, i32 %18)
  br label %27

20:                                               ; preds = %9, %2
  %21 = load i8*, i8** %4, align 8
  %22 = load i64, i64* @SHA_H_BASE, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @state_length(i64 %24)
  %26 = call i32 @memcpy_swapwords(i8* %21, i8* %23, i32 %25)
  br label %27

27:                                               ; preds = %20, %13
  ret void
}

declare dso_local i32 @esp_sha_wait_idle(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @state_length(i64) #1

declare dso_local i32 @memcpy_swapwords(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
