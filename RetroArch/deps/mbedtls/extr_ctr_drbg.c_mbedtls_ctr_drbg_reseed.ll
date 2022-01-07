; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ctr_drbg.c_mbedtls_ctr_drbg_reseed.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ctr_drbg.c_mbedtls_ctr_drbg_reseed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 (i32, i8*, i32)*, i32, i32 }

@MBEDTLS_CTR_DRBG_MAX_SEED_INPUT = common dso_local global i32 0, align 4
@MBEDTLS_ERR_CTR_DRBG_INPUT_TOO_BIG = common dso_local global i32 0, align 4
@MBEDTLS_ERR_CTR_DRBG_ENTROPY_SOURCE_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ctr_drbg_reseed(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
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
  %12 = load i32, i32* @MBEDTLS_CTR_DRBG_MAX_SEED_INPUT, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MBEDTLS_CTR_DRBG_MAX_SEED_INPUT, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %30, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* @MBEDTLS_CTR_DRBG_MAX_SEED_INPUT, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %23, %26
  %28 = sext i32 %27 to i64
  %29 = icmp ugt i64 %22, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %21, %3
  %31 = load i32, i32* @MBEDTLS_ERR_CTR_DRBG_INPUT_TOO_BIG, align 4
  store i32 %31, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %76

32:                                               ; preds = %21
  %33 = load i32, i32* @MBEDTLS_CTR_DRBG_MAX_SEED_INPUT, align 4
  %34 = call i32 @memset(i8* %15, i32 0, i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64 (i32, i8*, i32)*, i64 (i32, i8*, i32)** %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 %37(i32 %40, i8* %15, i32 %43)
  %45 = icmp ne i64 0, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %32
  %47 = load i32, i32* @MBEDTLS_ERR_CTR_DRBG_ENTROPY_SOURCE_FAILED, align 4
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %76

48:                                               ; preds = %32
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %10, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %10, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %48
  %58 = load i64, i64* %7, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds i8, i8* %15, i64 %61
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @memcpy(i8* %62, i8* %63, i64 %64)
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %10, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %10, align 8
  br label %69

69:                                               ; preds = %60, %57, %48
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @block_cipher_df(i8* %15, i8* %15, i64 %70)
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = call i32 @ctr_drbg_update_internal(%struct.TYPE_4__* %72, i8* %15)
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  store i32 1, i32* %75, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %76

76:                                               ; preds = %69, %46, %30
  %77 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @block_cipher_df(i8*, i8*, i64) #2

declare dso_local i32 @ctr_drbg_update_internal(%struct.TYPE_4__*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
