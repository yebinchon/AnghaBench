; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509.c_x509_get_hash_alg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509.c_x509_get_hash_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i64 }

@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_INVALID_ALG = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_UNEXPECTED_TAG = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_OUT_OF_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_OID = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_NULL = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*)* @x509_get_hash_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_get_hash_alg(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %15 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %16 = or i32 %14, %15
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_ALG, align 4
  %20 = load i32, i32* @MBEDTLS_ERR_ASN1_UNEXPECTED_TAG, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %3, align 4
  br label %92

22:                                               ; preds = %2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp uge i8* %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %22
  %35 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_ALG, align 4
  %36 = load i32, i32* @MBEDTLS_ERR_ASN1_OUT_OF_DATA, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %3, align 4
  br label %92

38:                                               ; preds = %22
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %45 = load i32, i32* @MBEDTLS_ASN1_OID, align 4
  %46 = call i32 @mbedtls_asn1_get_tag(i8** %7, i8* %43, i64* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_ALG, align 4
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %3, align 4
  br label %92

52:                                               ; preds = %38
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i8* %53, i8** %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 %56
  store i8* %58, i8** %7, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @mbedtls_oid_get_md_alg(%struct.TYPE_4__* %9, i32* %59)
  store i32 %60, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_ALG, align 4
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %3, align 4
  br label %92

66:                                               ; preds = %52
  %67 = load i8*, i8** %7, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = icmp eq i8* %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %92

71:                                               ; preds = %66
  %72 = load i8*, i8** %8, align 8
  %73 = load i32, i32* @MBEDTLS_ASN1_NULL, align 4
  %74 = call i32 @mbedtls_asn1_get_tag(i8** %7, i8* %72, i64* %10, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load i64, i64* %10, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76, %71
  %80 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_ALG, align 4
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %3, align 4
  br label %92

83:                                               ; preds = %76
  %84 = load i8*, i8** %7, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = icmp ne i8* %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_ALG, align 4
  %89 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %90 = add nsw i32 %88, %89
  store i32 %90, i32* %3, align 4
  br label %92

91:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %87, %79, %70, %62, %48, %34, %18
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @mbedtls_asn1_get_tag(i8**, i8*, i64*, i32) #1

declare dso_local i32 @mbedtls_oid_get_md_alg(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
