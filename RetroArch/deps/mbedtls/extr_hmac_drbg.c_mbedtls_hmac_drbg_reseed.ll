; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_hmac_drbg.c_mbedtls_hmac_drbg_reseed.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_hmac_drbg.c_mbedtls_hmac_drbg_reseed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 (i32, i8*, i64)*, i32, i32 }

@MBEDTLS_HMAC_DRBG_MAX_SEED_INPUT = common dso_local global i32 0, align 4
@MBEDTLS_HMAC_DRBG_MAX_INPUT = common dso_local global i64 0, align 8
@MBEDTLS_ERR_HMAC_DRBG_INPUT_TOO_BIG = common dso_local global i32 0, align 4
@MBEDTLS_ERR_HMAC_DRBG_ENTROPY_SOURCE_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_hmac_drbg_reseed(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* @MBEDTLS_HMAC_DRBG_MAX_SEED_INPUT, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @MBEDTLS_HMAC_DRBG_MAX_INPUT, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %22, %23
  %25 = load i32, i32* @MBEDTLS_HMAC_DRBG_MAX_SEED_INPUT, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ugt i64 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %19, %3
  %29 = load i32, i32* @MBEDTLS_ERR_HMAC_DRBG_INPUT_TOO_BIG, align 4
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %70

30:                                               ; preds = %19
  %31 = load i32, i32* @MBEDTLS_HMAC_DRBG_MAX_SEED_INPUT, align 4
  %32 = call i32 @memset(i8* %15, i32 0, i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64 (i32, i8*, i64)*, i64 (i32, i8*, i64)** %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 %35(i32 %38, i8* %15, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = load i32, i32* @MBEDTLS_ERR_HMAC_DRBG_ENTROPY_SOURCE_FAILED, align 4
  store i32 %45, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %70

46:                                               ; preds = %30
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %10, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds i8, i8* %15, i64 %56
  %58 = load i8*, i8** %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @memcpy(i8* %57, i8* %58, i64 %59)
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %10, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %10, align 8
  br label %64

64:                                               ; preds = %55, %52, %46
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @mbedtls_hmac_drbg_update(%struct.TYPE_4__* %65, i8* %15, i64 %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  store i32 1, i32* %69, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %70

70:                                               ; preds = %64, %44, %28
  %71 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @mbedtls_hmac_drbg_update(%struct.TYPE_4__*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
