; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_hmac_drbg.c_mbedtls_hmac_drbg_seed.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_hmac_drbg.c_mbedtls_hmac_drbg_seed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i8*, i8*, i64)*, i64, i32, i8*, i32, i32 }

@MBEDTLS_HMAC_DRBG_RESEED_INTERVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_hmac_drbg_seed(%struct.TYPE_4__* %0, i32* %1, i32 (i8*, i8*, i64)* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32 (i8*, i8*, i64)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 (i8*, i8*, i64)* %2, i32 (i8*, i8*, i64)** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 5
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @mbedtls_md_setup(i32* %18, i32* %19, i32 1)
  store i32 %20, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %7, align 4
  br label %75

24:                                               ; preds = %6
  %25 = load i32*, i32** %9, align 8
  %26 = call i64 @mbedtls_md_get_size(i32* %25)
  store i64 %26, i64* %16, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %16, align 8
  %33 = call i32 @mbedtls_md_hmac_starts(i32* %28, i32 %31, i64 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %16, align 8
  %38 = call i32 @memset(i32 %36, i32 1, i64 %37)
  %39 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %10, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 (i8*, i8*, i64)* %39, i32 (i8*, i8*, i64)** %41, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @MBEDTLS_HMAC_DRBG_RESEED_INTERVAL, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i64, i64* %16, align 8
  %49 = icmp ule i64 %48, 20
  br i1 %49, label %50, label %51

50:                                               ; preds = %24
  br label %56

51:                                               ; preds = %24
  %52 = load i64, i64* %16, align 8
  %53 = icmp ule i64 %52, 28
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 24, i32 32
  br label %56

56:                                               ; preds = %51, %50
  %57 = phi i32 [ 16, %50 ], [ %55, %51 ]
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %15, align 8
  %59 = load i64, i64* %15, align 8
  %60 = mul i64 %59, 3
  %61 = udiv i64 %60, 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load i64, i64* %13, align 8
  %67 = call i32 @mbedtls_hmac_drbg_reseed(%struct.TYPE_4__* %64, i8* %65, i64 %66)
  store i32 %67, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %56
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %7, align 4
  br label %75

71:                                               ; preds = %56
  %72 = load i64, i64* %15, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %71, %69, %22
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local i32 @mbedtls_md_setup(i32*, i32*, i32) #1

declare dso_local i64 @mbedtls_md_get_size(i32*) #1

declare dso_local i32 @mbedtls_md_hmac_starts(i32*, i32, i64) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @mbedtls_hmac_drbg_reseed(%struct.TYPE_4__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
