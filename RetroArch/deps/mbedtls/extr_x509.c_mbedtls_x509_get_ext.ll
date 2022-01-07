; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509.c_mbedtls_x509_get_ext.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509.c_mbedtls_x509_get_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i64, i8* }

@MBEDTLS_ASN1_CONTEXT_SPECIFIC = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_INVALID_EXTENSIONS = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_LENGTH_MISMATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_get_ext(i8** %0, i8* %1, %struct.TYPE_3__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %70

17:                                               ; preds = %4
  %18 = load i8**, i8*** %6, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8, i8* %19, align 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i8 %20, i8* %22, align 8
  %23 = load i8**, i8*** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* @MBEDTLS_ASN1_CONTEXT_SPECIFIC, align 4
  %28 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @mbedtls_asn1_get_tag(i8** %23, i8* %24, i64* %26, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %17
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %70

36:                                               ; preds = %17
  %37 = load i8**, i8*** %6, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load i8**, i8*** %6, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  store i8* %46, i8** %7, align 8
  %47 = load i8**, i8*** %6, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %50 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @mbedtls_asn1_get_tag(i8** %47, i8* %48, i64* %11, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %36
  %55 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_EXTENSIONS, align 4
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %5, align 4
  br label %70

58:                                               ; preds = %36
  %59 = load i8*, i8** %7, align 8
  %60 = load i8**, i8*** %6, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = icmp ne i8* %59, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_EXTENSIONS, align 4
  %67 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %5, align 4
  br label %70

69:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %65, %54, %34, %16
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @mbedtls_asn1_get_tag(i8**, i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
