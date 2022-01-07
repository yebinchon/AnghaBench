; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_create.c_x509_write_extension.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_create.c_x509_write_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64*, i32 }
%struct.TYPE_5__ = type { i64*, i32 }

@MBEDTLS_ASN1_OCTET_STRING = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_OID = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.TYPE_7__*)* @x509_write_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_write_extension(i8** %0, i8* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  store i64 0, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = call i32 @mbedtls_asn1_write_raw_buffer(i8** %10, i8* %11, i64* %16, i32 %21)
  %23 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %9, i32 %22)
  %24 = load i64, i64* %8, align 8
  %25 = load i8**, i8*** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = call i32 @mbedtls_asn1_write_len(i8** %25, i8* %26, i64 %32)
  %34 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %24, i32 %33)
  %35 = load i64, i64* %8, align 8
  %36 = load i8**, i8*** %4, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* @MBEDTLS_ASN1_OCTET_STRING, align 4
  %39 = call i32 @mbedtls_asn1_write_tag(i8** %36, i8* %37, i32 %38)
  %40 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %35, i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %3
  %49 = load i64, i64* %8, align 8
  %50 = load i8**, i8*** %4, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @mbedtls_asn1_write_bool(i8** %50, i8* %51, i32 1)
  %53 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %49, i32 %52)
  br label %54

54:                                               ; preds = %48, %3
  %55 = load i64, i64* %8, align 8
  %56 = load i8**, i8*** %4, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @mbedtls_asn1_write_raw_buffer(i8** %56, i8* %57, i64* %61, i32 %65)
  %67 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %55, i32 %66)
  %68 = load i64, i64* %8, align 8
  %69 = load i8**, i8*** %4, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = call i32 @mbedtls_asn1_write_len(i8** %69, i8* %70, i64 %75)
  %77 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %68, i32 %76)
  %78 = load i64, i64* %8, align 8
  %79 = load i8**, i8*** %4, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* @MBEDTLS_ASN1_OID, align 4
  %82 = call i32 @mbedtls_asn1_write_tag(i8** %79, i8* %80, i32 %81)
  %83 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %78, i32 %82)
  %84 = load i64, i64* %8, align 8
  %85 = load i8**, i8*** %4, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @mbedtls_asn1_write_len(i8** %85, i8* %86, i64 %87)
  %89 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %84, i32 %88)
  %90 = load i64, i64* %8, align 8
  %91 = load i8**, i8*** %4, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %94 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @mbedtls_asn1_write_tag(i8** %91, i8* %92, i32 %95)
  %97 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %90, i32 %96)
  %98 = load i64, i64* %8, align 8
  %99 = trunc i64 %98 to i32
  ret i32 %99
}

declare dso_local i32 @MBEDTLS_ASN1_CHK_ADD(i64, i32) #1

declare dso_local i32 @mbedtls_asn1_write_raw_buffer(i8**, i8*, i64*, i32) #1

declare dso_local i32 @mbedtls_asn1_write_len(i8**, i8*, i64) #1

declare dso_local i32 @mbedtls_asn1_write_tag(i8**, i8*, i32) #1

declare dso_local i32 @mbedtls_asn1_write_bool(i8**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
