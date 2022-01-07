; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_cipher.c_get_zeros_padding.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_cipher.c_get_zeros_padding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64*)* @get_zeros_padding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_zeros_padding(i8* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i8 0, i8* %9, align 1
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* null, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i64*, i64** %7, align 8
  %15 = icmp eq i64* null, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA, align 4
  store i32 %17, i32* %4, align 4
  br label %54

18:                                               ; preds = %13
  %19 = load i64*, i64** %7, align 8
  store i64 0, i64* %19, align 8
  %20 = load i64, i64* %6, align 8
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %50, %18
  %22 = load i64, i64* %8, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %21
  %25 = load i8, i8* %9, align 1
  store i8 %25, i8* %10, align 1
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %8, align 8
  %28 = sub i64 %27, 1
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = load i8, i8* %9, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %35, %33
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %9, align 1
  %38 = load i64, i64* %8, align 8
  %39 = load i8, i8* %9, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* %10, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp ne i32 %40, %42
  %44 = zext i1 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = mul i64 %38, %45
  %47 = load i64*, i64** %7, align 8
  %48 = load i64, i64* %47, align 8
  %49 = or i64 %48, %46
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %24
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %51, -1
  store i64 %52, i64* %8, align 8
  br label %21

53:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %16
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
