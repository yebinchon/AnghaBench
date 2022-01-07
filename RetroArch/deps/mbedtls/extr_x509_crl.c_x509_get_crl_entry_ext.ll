; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crl.c_x509_get_crl_entry_ext.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crl.c_x509_get_crl_entry_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i8*, i64 }

@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_UNEXPECTED_TAG = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_INVALID_EXTENSIONS = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.TYPE_3__*)* @x509_get_crl_entry_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_get_crl_entry_ext(i8** %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i64 0, i64* %9, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ule i8* %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %97

15:                                               ; preds = %3
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i8 %18, i8* %20, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %30 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @mbedtls_asn1_get_tag(i8** %25, i8* %26, i64* %28, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %15
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @MBEDTLS_ERR_ASN1_UNEXPECTED_TAG, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i8* null, i8** %40, align 8
  store i32 0, i32* %4, align 4
  br label %97

41:                                               ; preds = %34
  %42 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_EXTENSIONS, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %4, align 4
  br label %97

45:                                               ; preds = %15
  %46 = load i8**, i8*** %5, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  store i8* %51, i8** %6, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i8**, i8*** %5, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = icmp ne i8* %52, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %45
  %61 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_EXTENSIONS, align 4
  %62 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %63 = add nsw i32 %61, %62
  store i32 %63, i32* %4, align 4
  br label %97

64:                                               ; preds = %45
  br label %65

65:                                               ; preds = %82, %64
  %66 = load i8**, i8*** %5, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = icmp ult i8* %67, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %65
  %71 = load i8**, i8*** %5, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %74 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @mbedtls_asn1_get_tag(i8** %71, i8* %72, i64* %9, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_EXTENSIONS, align 4
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %79, %80
  store i32 %81, i32* %4, align 4
  br label %97

82:                                               ; preds = %70
  %83 = load i64, i64* %9, align 8
  %84 = load i8**, i8*** %5, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 %83
  store i8* %86, i8** %84, align 8
  br label %65

87:                                               ; preds = %65
  %88 = load i8**, i8*** %5, align 8
  %89 = load i8*, i8** %88, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = icmp ne i8* %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_EXTENSIONS, align 4
  %94 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %95 = add nsw i32 %93, %94
  store i32 %95, i32* %4, align 4
  br label %97

96:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %92, %78, %60, %41, %38, %14
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @mbedtls_asn1_get_tag(i8**, i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
