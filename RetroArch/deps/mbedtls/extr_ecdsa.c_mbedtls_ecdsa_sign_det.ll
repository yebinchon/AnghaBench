; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecdsa.c_mbedtls_ecdsa_sign_det.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecdsa.c_mbedtls_ecdsa_sign_det.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@MBEDTLS_ECP_MAX_BYTES = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ECP_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@mbedtls_hmac_drbg_random = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdsa_sign_det(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32* %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %24 = load i32, i32* @MBEDTLS_ECP_MAX_BYTES, align 4
  %25 = mul nsw i32 2, %24
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %18, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %19, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 7
  %33 = sdiv i32 %32, 8
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %20, align 8
  %35 = load i32, i32* %15, align 4
  %36 = call i32* @mbedtls_md_info_from_type(i32 %35)
  store i32* %36, i32** %21, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %7
  %39 = load i32, i32* @MBEDTLS_ERR_ECP_BAD_INPUT_DATA, align 4
  store i32 %39, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %74

40:                                               ; preds = %7
  %41 = call i32 @mbedtls_mpi_init(i32* %22)
  %42 = call i32 @mbedtls_hmac_drbg_init(i32* %17)
  %43 = load i32*, i32** %12, align 8
  %44 = load i64, i64* %20, align 8
  %45 = call i32 @mbedtls_mpi_write_binary(i32* %43, i8* %28, i64 %44)
  %46 = call i32 @MBEDTLS_MPI_CHK(i32 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = load i64, i64* %14, align 8
  %50 = call i32 @derive_mpi(%struct.TYPE_5__* %47, i32* %22, i8* %48, i64 %49)
  %51 = call i32 @MBEDTLS_MPI_CHK(i32 %50)
  %52 = load i64, i64* %20, align 8
  %53 = getelementptr inbounds i8, i8* %28, i64 %52
  %54 = load i64, i64* %20, align 8
  %55 = call i32 @mbedtls_mpi_write_binary(i32* %22, i8* %53, i64 %54)
  %56 = call i32 @MBEDTLS_MPI_CHK(i32 %55)
  %57 = load i32*, i32** %21, align 8
  %58 = load i64, i64* %20, align 8
  %59 = mul i64 2, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @mbedtls_hmac_drbg_seed_buf(i32* %17, i32* %57, i8* %28, i32 %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = load i64, i64* %14, align 8
  %68 = load i32, i32* @mbedtls_hmac_drbg_random, align 4
  %69 = call i32 @mbedtls_ecdsa_sign(%struct.TYPE_5__* %62, i32* %63, i32* %64, i32* %65, i8* %66, i64 %67, i32 %68, i32* %17)
  store i32 %69, i32* %16, align 4
  br label %70

70:                                               ; preds = %40
  %71 = call i32 @mbedtls_hmac_drbg_free(i32* %17)
  %72 = call i32 @mbedtls_mpi_free(i32* %22)
  %73 = load i32, i32* %16, align 4
  store i32 %73, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %74

74:                                               ; preds = %70, %38
  %75 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @mbedtls_md_info_from_type(i32) #2

declare dso_local i32 @mbedtls_mpi_init(i32*) #2

declare dso_local i32 @mbedtls_hmac_drbg_init(i32*) #2

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #2

declare dso_local i32 @mbedtls_mpi_write_binary(i32*, i8*, i64) #2

declare dso_local i32 @derive_mpi(%struct.TYPE_5__*, i32*, i8*, i64) #2

declare dso_local i32 @mbedtls_hmac_drbg_seed_buf(i32*, i32*, i8*, i32) #2

declare dso_local i32 @mbedtls_ecdsa_sign(%struct.TYPE_5__*, i32*, i32*, i32*, i8*, i64, i32, i32*) #2

declare dso_local i32 @mbedtls_hmac_drbg_free(i32*) #2

declare dso_local i32 @mbedtls_mpi_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
