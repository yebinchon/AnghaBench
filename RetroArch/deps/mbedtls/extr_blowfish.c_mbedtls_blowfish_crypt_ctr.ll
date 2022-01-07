; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_blowfish.c_mbedtls_blowfish_crypt_ctr.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_blowfish.c_mbedtls_blowfish_crypt_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_BLOWFISH_BLOCKSIZE = common dso_local global i64 0, align 8
@MBEDTLS_BLOWFISH_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_blowfish_crypt_ctr(i32* %0, i64 %1, i64* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %18 = load i64, i64* @MBEDTLS_BLOWFISH_BLOCKSIZE, align 8
  %19 = load i64, i64* @MBEDTLS_BLOWFISH_BLOCKSIZE, align 8
  %20 = load i64*, i64** %10, align 8
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %17, align 8
  br label %22

22:                                               ; preds = %56, %7
  %23 = load i64, i64* %9, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %9, align 8
  %25 = icmp ne i64 %23, 0
  br i1 %25, label %26, label %75

26:                                               ; preds = %22
  %27 = load i64, i64* %17, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %26
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* @MBEDTLS_BLOWFISH_ENCRYPT, align 4
  %32 = load i8*, i8** %11, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = call i32 @mbedtls_blowfish_crypt_ecb(i32* %30, i32 %31, i8* %32, i8* %33)
  %35 = load i64, i64* @MBEDTLS_BLOWFISH_BLOCKSIZE, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %16, align 4
  br label %37

37:                                               ; preds = %52, %29
  %38 = load i32, i32* %16, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = load i8*, i8** %11, align 8
  %42 = load i32, i32* %16, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = add i8 %46, 1
  store i8 %47, i8* %45, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %55

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %16, align 4
  br label %37

55:                                               ; preds = %50, %37
  br label %56

56:                                               ; preds = %55, %26
  %57 = load i8*, i8** %13, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %13, align 8
  %59 = load i8, i8* %57, align 1
  %60 = zext i8 %59 to i32
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i8*, i8** %12, align 8
  %63 = load i64, i64* %17, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = xor i32 %61, %66
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %14, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %14, align 8
  store i8 %68, i8* %69, align 1
  %71 = load i64, i64* %17, align 8
  %72 = add i64 %71, 1
  %73 = load i64, i64* @MBEDTLS_BLOWFISH_BLOCKSIZE, align 8
  %74 = urem i64 %72, %73
  store i64 %74, i64* %17, align 8
  br label %22

75:                                               ; preds = %22
  %76 = load i64, i64* %17, align 8
  %77 = load i64*, i64** %10, align 8
  store i64 %76, i64* %77, align 8
  ret i32 0
}

declare dso_local i32 @mbedtls_blowfish_crypt_ecb(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
