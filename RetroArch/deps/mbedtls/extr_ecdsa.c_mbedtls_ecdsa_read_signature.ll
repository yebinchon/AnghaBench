; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecdsa.c_mbedtls_ecdsa_read_signature.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecdsa.c_mbedtls_ecdsa_read_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ECP_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ECP_SIG_LEN_MISMATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecdsa_read_signature(%struct.TYPE_3__* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %17 = load i8*, i8** %9, align 8
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %13, align 8
  %21 = call i32 @mbedtls_mpi_init(i32* %15)
  %22 = call i32 @mbedtls_mpi_init(i32* %16)
  %23 = load i8*, i8** %13, align 8
  %24 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %25 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @mbedtls_asn1_get_tag(i8** %12, i8* %23, i64* %14, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = load i32, i32* @MBEDTLS_ERR_ECP_BAD_INPUT_DATA, align 4
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %11, align 4
  br label %72

33:                                               ; preds = %5
  %34 = load i8*, i8** %12, align 8
  %35 = load i64, i64* %14, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8*, i8** %13, align 8
  %38 = icmp ne i8* %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* @MBEDTLS_ERR_ECP_BAD_INPUT_DATA, align 4
  %41 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %11, align 4
  br label %72

43:                                               ; preds = %33
  %44 = load i8*, i8** %13, align 8
  %45 = call i32 @mbedtls_asn1_get_mpi(i8** %12, i8* %44, i32* %15)
  store i32 %45, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** %13, align 8
  %49 = call i32 @mbedtls_asn1_get_mpi(i8** %12, i8* %48, i32* %16)
  store i32 %49, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47, %43
  %52 = load i32, i32* @MBEDTLS_ERR_ECP_BAD_INPUT_DATA, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %11, align 4
  br label %72

55:                                               ; preds = %47
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i8*, i8** %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = call i32 @mbedtls_ecdsa_verify(i32* %57, i8* %58, i64 %59, i32* %61, i32* %15, i32* %16)
  store i32 %62, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %72

65:                                               ; preds = %55
  %66 = load i8*, i8** %12, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = icmp ne i8* %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @MBEDTLS_ERR_ECP_SIG_LEN_MISMATCH, align 4
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %69, %65
  br label %72

72:                                               ; preds = %71, %64, %51, %39, %29
  %73 = call i32 @mbedtls_mpi_free(i32* %15)
  %74 = call i32 @mbedtls_mpi_free(i32* %16)
  %75 = load i32, i32* %11, align 4
  ret i32 %75
}

declare dso_local i32 @mbedtls_mpi_init(i32*) #1

declare dso_local i32 @mbedtls_asn1_get_tag(i8**, i8*, i64*, i32) #1

declare dso_local i32 @mbedtls_asn1_get_mpi(i8**, i8*, i32*) #1

declare dso_local i32 @mbedtls_ecdsa_verify(i32*, i8*, i64, i32*, i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
