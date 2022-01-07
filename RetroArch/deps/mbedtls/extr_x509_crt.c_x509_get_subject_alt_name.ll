; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_x509_get_subject_alt_name.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_x509_get_subject_alt_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8, i64 }

@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_INVALID_EXTENSIONS = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_OUT_OF_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_CONTEXT_SPECIFIC = common dso_local global i8 0, align 1
@MBEDTLS_ERR_ASN1_UNEXPECTED_TAG = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_ALLOC_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.TYPE_6__*)* @x509_get_subject_alt_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_get_subject_alt_name(i8** %0, i8* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8, align 1
  %13 = alloca %struct.TYPE_6__*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %13, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %18 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @mbedtls_asn1_get_tag(i8** %15, i8* %16, i64* %9, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_EXTENSIONS, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %4, align 4
  br label %155

26:                                               ; preds = %3
  %27 = load i8**, i8*** %5, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_EXTENSIONS, align 4
  %35 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %4, align 4
  br label %155

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %124, %90, %37
  %39 = load i8**, i8*** %5, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = icmp ult i8* %40, %41
  br i1 %42, label %43, label %143

43:                                               ; preds = %38
  %44 = load i8*, i8** %6, align 8
  %45 = load i8**, i8*** %5, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = ptrtoint i8* %44 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = icmp slt i64 %49, 1
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_EXTENSIONS, align 4
  %53 = load i32, i32* @MBEDTLS_ERR_ASN1_OUT_OF_DATA, align 4
  %54 = add nsw i32 %52, %53
  store i32 %54, i32* %4, align 4
  br label %155

55:                                               ; preds = %43
  %56 = load i8**, i8*** %5, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = load i8, i8* %57, align 1
  store i8 %58, i8* %12, align 1
  %59 = load i8**, i8*** %5, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %59, align 8
  %62 = load i8**, i8*** %5, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @mbedtls_asn1_get_len(i8** %62, i8* %63, i64* %10)
  store i32 %64, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %55
  %67 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_EXTENSIONS, align 4
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %4, align 4
  br label %155

70:                                               ; preds = %55
  %71 = load i8, i8* %12, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* @MBEDTLS_ASN1_CONTEXT_SPECIFIC, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %72, %74
  %76 = load i8, i8* @MBEDTLS_ASN1_CONTEXT_SPECIFIC, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_EXTENSIONS, align 4
  %81 = load i32, i32* @MBEDTLS_ERR_ASN1_UNEXPECTED_TAG, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %4, align 4
  br label %155

83:                                               ; preds = %70
  %84 = load i8, i8* %12, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8, i8* @MBEDTLS_ASN1_CONTEXT_SPECIFIC, align 1
  %87 = zext i8 %86 to i32
  %88 = or i32 %87, 2
  %89 = icmp ne i32 %85, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load i64, i64* %10, align 8
  %92 = load i8**, i8*** %5, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 %91
  store i8* %94, i8** %92, align 8
  br label %38

95:                                               ; preds = %83
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %124

101:                                              ; preds = %95
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = icmp ne %struct.TYPE_6__* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_EXTENSIONS, align 4
  store i32 %107, i32* %4, align 4
  br label %155

108:                                              ; preds = %101
  %109 = call %struct.TYPE_6__* @mbedtls_calloc(i32 1, i32 32)
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store %struct.TYPE_6__* %109, %struct.TYPE_6__** %111, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = icmp eq %struct.TYPE_6__* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %108
  %117 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_EXTENSIONS, align 4
  %118 = load i32, i32* @MBEDTLS_ERR_ASN1_ALLOC_FAILED, align 4
  %119 = add nsw i32 %117, %118
  store i32 %119, i32* %4, align 4
  br label %155

120:                                              ; preds = %108
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  store %struct.TYPE_6__* %123, %struct.TYPE_6__** %13, align 8
  br label %124

124:                                              ; preds = %120, %95
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  store %struct.TYPE_7__* %126, %struct.TYPE_7__** %11, align 8
  %127 = load i8, i8* %12, align 1
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  store i8 %127, i8* %129, align 8
  %130 = load i8**, i8*** %5, align 8
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store i8* %131, i8** %133, align 8
  %134 = load i64, i64* %10, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 2
  store i64 %134, i64* %136, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i8**, i8*** %5, align 8
  %141 = load i8*, i8** %140, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 %139
  store i8* %142, i8** %140, align 8
  br label %38

143:                                              ; preds = %38
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %145, align 8
  %146 = load i8**, i8*** %5, align 8
  %147 = load i8*, i8** %146, align 8
  %148 = load i8*, i8** %6, align 8
  %149 = icmp ne i8* %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %143
  %151 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_EXTENSIONS, align 4
  %152 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %153 = add nsw i32 %151, %152
  store i32 %153, i32* %4, align 4
  br label %155

154:                                              ; preds = %143
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %154, %150, %116, %106, %79, %66, %51, %33, %22
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @mbedtls_asn1_get_tag(i8**, i8*, i64*, i32) #1

declare dso_local i32 @mbedtls_asn1_get_len(i8**, i8*, i64*) #1

declare dso_local %struct.TYPE_6__* @mbedtls_calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
