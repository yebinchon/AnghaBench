; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_cipher.c_get_one_and_zeros_padding.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_cipher.c_get_one_and_zeros_padding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_CIPHER_INVALID_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64*)* @get_one_and_zeros_padding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_one_and_zeros_padding(i8* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i8 0, i8* %9, align 1
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* null, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i64*, i64** %7, align 8
  %16 = icmp eq i64* null, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA, align 4
  store i32 %18, i32* %4, align 4
  br label %80

19:                                               ; preds = %14
  store i8 -1, i8* %11, align 1
  %20 = load i64*, i64** %7, align 8
  store i64 0, i64* %20, align 8
  %21 = load i64, i64* %6, align 8
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %70, %19
  %23 = load i64, i64* %8, align 8
  %24 = icmp ugt i64 %23, 0
  br i1 %24, label %25, label %73

25:                                               ; preds = %22
  %26 = load i8, i8* %9, align 1
  store i8 %26, i8* %10, align 1
  %27 = load i8*, i8** %5, align 8
  %28 = load i64, i64* %8, align 8
  %29 = sub i64 %28, 1
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = load i8, i8* %9, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %36, %34
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %9, align 1
  %39 = load i64, i64* %8, align 8
  %40 = sub i64 %39, 1
  %41 = load i8, i8* %9, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* %10, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %42, %44
  %46 = zext i1 %45 to i32
  %47 = sext i32 %46 to i64
  %48 = mul i64 %40, %47
  %49 = load i64*, i64** %7, align 8
  %50 = load i64, i64* %49, align 8
  %51 = or i64 %50, %48
  store i64 %51, i64* %49, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load i64, i64* %8, align 8
  %54 = sub i64 %53, 1
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = xor i32 %57, 128
  %59 = load i8, i8* %9, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* %10, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp eq i32 %60, %62
  %64 = zext i1 %63 to i32
  %65 = or i32 %58, %64
  %66 = load i8, i8* %11, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, %65
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %11, align 1
  br label %70

70:                                               ; preds = %25
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %71, -1
  store i64 %72, i64* %8, align 8
  br label %22

73:                                               ; preds = %22
  %74 = load i32, i32* @MBEDTLS_ERR_CIPHER_INVALID_PADDING, align 4
  %75 = load i8, i8* %11, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = mul nsw i32 %74, %78
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %73, %17
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
