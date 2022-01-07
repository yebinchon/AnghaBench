; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_hmac_drbg.c_mbedtls_hmac_drbg_update_seed_file.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_hmac_drbg.c_mbedtls_hmac_drbg_update_seed_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_HMAC_DRBG_MAX_INPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@MBEDTLS_ERR_HMAC_DRBG_FILE_IO_ERROR = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@MBEDTLS_ERR_HMAC_DRBG_INPUT_TOO_BIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_hmac_drbg_update_seed_file(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @MBEDTLS_HMAC_DRBG_MAX_INPUT, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @MBEDTLS_ERR_HMAC_DRBG_FILE_IO_ERROR, align 4
  store i32 %19, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %56

20:                                               ; preds = %2
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @SEEK_END, align 4
  %23 = call i32 @fseek(i32* %21, i32 0, i32 %22)
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @ftell(i32* %24)
  store i64 %25, i64* %7, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @SEEK_SET, align 4
  %28 = call i32 @fseek(i32* %26, i32 0, i32 %27)
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* @MBEDTLS_HMAC_DRBG_MAX_INPUT, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ugt i64 %29, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %20
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @fclose(i32* %34)
  %36 = load i32, i32* @MBEDTLS_ERR_HMAC_DRBG_INPUT_TOO_BIG, align 4
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %56

37:                                               ; preds = %20
  %38 = load i64, i64* %7, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i64 @fread(i8* %14, i32 1, i64 %38, i32* %39)
  %41 = load i64, i64* %7, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @fclose(i32* %44)
  %46 = load i32, i32* @MBEDTLS_ERR_HMAC_DRBG_FILE_IO_ERROR, align 4
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %56

47:                                               ; preds = %37
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @fclose(i32* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @mbedtls_hmac_drbg_update(i32* %50, i8* %14, i64 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @mbedtls_hmac_drbg_write_seed_file(i32* %53, i8* %54)
  store i32 %55, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %56

56:                                               ; preds = %47, %43, %33, %18
  %57 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fseek(i32*, i32, i32) #2

declare dso_local i64 @ftell(i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i64 @fread(i8*, i32, i64, i32*) #2

declare dso_local i32 @mbedtls_hmac_drbg_update(i32*, i8*, i64) #2

declare dso_local i32 @mbedtls_hmac_drbg_write_seed_file(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
