; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crl.c_x509_get_entries.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crl.c_x509_get_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8, i8*, i64 }

@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_UNEXPECTED_TAG = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_ALLOC_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.TYPE_6__*)* @x509_get_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_get_entries(i8** %0, i8* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %10, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %121

19:                                               ; preds = %3
  %20 = load i8**, i8*** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %23 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @mbedtls_asn1_get_tag(i8** %20, i8* %21, i64* %9, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @MBEDTLS_ERR_ASN1_UNEXPECTED_TAG, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %121

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %121

34:                                               ; preds = %19
  %35 = load i8**, i8*** %5, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %6, align 8
  br label %39

39:                                               ; preds = %119, %34
  %40 = load i8**, i8*** %5, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = icmp ult i8* %41, %42
  br i1 %43, label %44, label %120

44:                                               ; preds = %39
  %45 = load i8**, i8*** %5, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %48 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @mbedtls_asn1_get_tag(i8** %45, i8* %46, i64* %11, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %121

54:                                               ; preds = %44
  %55 = load i8**, i8*** %5, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = load i8, i8* %56, align 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i8 %57, i8* %60, align 8
  %61 = load i8**, i8*** %5, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i8* %62, i8** %65, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  store i64 %66, i64* %69, align 8
  %70 = load i8**, i8*** %5, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = load i64, i64* %11, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %12, align 8
  %74 = load i8**, i8*** %5, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  %78 = call i32 @mbedtls_x509_get_serial(i8** %74, i8* %75, i32* %77)
  store i32 %78, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %54
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %4, align 4
  br label %121

82:                                               ; preds = %54
  %83 = load i8**, i8*** %5, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = call i32 @mbedtls_x509_get_time(i8** %83, i8* %84, i32* %86)
  store i32 %87, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %4, align 4
  br label %121

91:                                               ; preds = %82
  %92 = load i8**, i8*** %5, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = call i32 @x509_get_crl_entry_ext(i8** %92, i8* %93, i32* %95)
  store i32 %96, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %4, align 4
  br label %121

100:                                              ; preds = %91
  %101 = load i8**, i8*** %5, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = icmp ult i8* %102, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %100
  %106 = call %struct.TYPE_6__* @mbedtls_calloc(i32 1, i32 48)
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store %struct.TYPE_6__* %106, %struct.TYPE_6__** %108, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = icmp eq %struct.TYPE_6__* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = load i32, i32* @MBEDTLS_ERR_X509_ALLOC_FAILED, align 4
  store i32 %114, i32* %4, align 4
  br label %121

115:                                              ; preds = %105
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  store %struct.TYPE_6__* %118, %struct.TYPE_6__** %10, align 8
  br label %119

119:                                              ; preds = %115, %100
  br label %39

120:                                              ; preds = %39
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %120, %113, %98, %89, %80, %52, %32, %31, %18
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i32 @mbedtls_asn1_get_tag(i8**, i8*, i64*, i32) #1

declare dso_local i32 @mbedtls_x509_get_serial(i8**, i8*, i32*) #1

declare dso_local i32 @mbedtls_x509_get_time(i8**, i8*, i32*) #1

declare dso_local i32 @x509_get_crl_entry_ext(i8**, i8*, i32*) #1

declare dso_local %struct.TYPE_6__* @mbedtls_calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
