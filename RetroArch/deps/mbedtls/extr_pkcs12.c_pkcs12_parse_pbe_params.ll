; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkcs12.c_pkcs12_parse_pbe_params.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkcs12.c_pkcs12_parse_pbe_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32 }

@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PKCS12_PBE_INVALID_FORMAT = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_UNEXPECTED_TAG = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_OCTET_STRING = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__*, i32*)* @pkcs12_parse_pbe_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs12_parse_pbe_params(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i8** %12, i8*** %9, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %15, i64 %19
  store i8* %20, i8** %10, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %25 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %26 = or i32 %24, %25
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load i32, i32* @MBEDTLS_ERR_PKCS12_PBE_INVALID_FORMAT, align 4
  %30 = load i32, i32* @MBEDTLS_ERR_ASN1_UNEXPECTED_TAG, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %4, align 4
  br label %75

32:                                               ; preds = %3
  %33 = load i8**, i8*** %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* @MBEDTLS_ASN1_OCTET_STRING, align 4
  %38 = call i32 @mbedtls_asn1_get_tag(i8** %33, i8* %34, i32* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32, i32* @MBEDTLS_ERR_PKCS12_PBE_INVALID_FORMAT, align 4
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %4, align 4
  br label %75

44:                                               ; preds = %32
  %45 = load i8**, i8*** %9, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i8**, i8*** %9, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = sext i32 %51 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %52, align 8
  %56 = load i8**, i8*** %9, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @mbedtls_asn1_get_int(i8** %56, i8* %57, i32* %58)
  store i32 %59, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %44
  %62 = load i32, i32* @MBEDTLS_ERR_PKCS12_PBE_INVALID_FORMAT, align 4
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %62, %63
  store i32 %64, i32* %4, align 4
  br label %75

65:                                               ; preds = %44
  %66 = load i8**, i8*** %9, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = icmp ne i8* %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @MBEDTLS_ERR_PKCS12_PBE_INVALID_FORMAT, align 4
  %72 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %73 = add nsw i32 %71, %72
  store i32 %73, i32* %4, align 4
  br label %75

74:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %70, %61, %40, %28
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @mbedtls_asn1_get_tag(i8**, i8*, i32*, i32) #1

declare dso_local i32 @mbedtls_asn1_get_int(i8**, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
