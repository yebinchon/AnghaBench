; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_cipher.c_get_pkcs_padding.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_cipher.c_get_pkcs_padding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_CIPHER_INVALID_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64*)* @get_pkcs_padding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pkcs_padding(i8* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i8 0, i8* %11, align 1
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
  br label %83

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = sub i64 %21, 1
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %10, align 1
  %25 = load i64, i64* %6, align 8
  %26 = load i8, i8* %10, align 1
  %27 = zext i8 %26 to i64
  %28 = sub i64 %25, %27
  %29 = load i64*, i64** %7, align 8
  store i64 %28, i64* %29, align 8
  %30 = load i8, i8* %10, align 1
  %31 = zext i8 %30 to i64
  %32 = load i64, i64* %6, align 8
  %33 = icmp ugt i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i8, i8* %11, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %36, %34
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %11, align 1
  %39 = load i8, i8* %10, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load i8, i8* %11, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %44, %42
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %11, align 1
  %47 = load i64, i64* %6, align 8
  %48 = load i8, i8* %10, align 1
  %49 = zext i8 %48 to i64
  %50 = sub i64 %47, %49
  store i64 %50, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %51

51:                                               ; preds = %73, %19
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %6, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %51
  %56 = load i8*, i8** %5, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* %10, align 1
  %62 = zext i8 %61 to i32
  %63 = xor i32 %60, %62
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = icmp uge i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = mul nsw i32 %63, %67
  %69 = load i8, i8* %11, align 1
  %70 = zext i8 %69 to i32
  %71 = or i32 %70, %68
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %11, align 1
  br label %73

73:                                               ; preds = %55
  %74 = load i64, i64* %8, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %8, align 8
  br label %51

76:                                               ; preds = %51
  %77 = load i32, i32* @MBEDTLS_ERR_CIPHER_INVALID_PADDING, align 4
  %78 = load i8, i8* %11, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = mul nsw i32 %77, %81
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %76, %17
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
