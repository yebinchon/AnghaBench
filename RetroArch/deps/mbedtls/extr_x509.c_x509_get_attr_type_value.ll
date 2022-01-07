; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509.c_x509_get_attr_type_value.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509.c_x509_get_attr_type_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8, i64, i8* }

@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_INVALID_NAME = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_OUT_OF_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_OID = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_BMP_STRING = common dso_local global i8 0, align 1
@MBEDTLS_ASN1_UTF8_STRING = common dso_local global i8 0, align 1
@MBEDTLS_ASN1_T61_STRING = common dso_local global i8 0, align 1
@MBEDTLS_ASN1_PRINTABLE_STRING = common dso_local global i8 0, align 1
@MBEDTLS_ASN1_IA5_STRING = common dso_local global i8 0, align 1
@MBEDTLS_ASN1_UNIVERSAL_STRING = common dso_local global i8 0, align 1
@MBEDTLS_ASN1_BIT_STRING = common dso_local global i8 0, align 1
@MBEDTLS_ERR_ASN1_UNEXPECTED_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.TYPE_4__*)* @x509_get_attr_type_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_get_attr_type_value(i8** %0, i8* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %15 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @mbedtls_asn1_get_tag(i8** %12, i8* %13, i64* %9, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_NAME, align 4
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %4, align 4
  br label %168

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = ptrtoint i8* %24 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = icmp slt i64 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_NAME, align 4
  %33 = load i32, i32* @MBEDTLS_ERR_ASN1_OUT_OF_DATA, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %4, align 4
  br label %168

35:                                               ; preds = %23
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %10, align 8
  %38 = load i8**, i8*** %5, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i8, i8* %39, align 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i8 %40, i8* %42, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* @MBEDTLS_ASN1_OID, align 4
  %48 = call i32 @mbedtls_asn1_get_tag(i8** %43, i8* %44, i64* %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %35
  %51 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_NAME, align 4
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %4, align 4
  br label %168

54:                                               ; preds = %35
  %55 = load i8**, i8*** %5, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i8**, i8*** %5, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 %61
  store i8* %64, i8** %62, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i8**, i8*** %5, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = ptrtoint i8* %65 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = icmp slt i64 %70, 1
  br i1 %71, label %72, label %76

72:                                               ; preds = %54
  %73 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_NAME, align 4
  %74 = load i32, i32* @MBEDTLS_ERR_ASN1_OUT_OF_DATA, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %4, align 4
  br label %168

76:                                               ; preds = %54
  %77 = load i8**, i8*** %5, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* @MBEDTLS_ASN1_BMP_STRING, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp ne i32 %80, %82
  br i1 %83, label %84, label %136

84:                                               ; preds = %76
  %85 = load i8**, i8*** %5, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, i8* @MBEDTLS_ASN1_UTF8_STRING, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp ne i32 %88, %90
  br i1 %91, label %92, label %136

92:                                               ; preds = %84
  %93 = load i8**, i8*** %5, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = load i8, i8* @MBEDTLS_ASN1_T61_STRING, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp ne i32 %96, %98
  br i1 %99, label %100, label %136

100:                                              ; preds = %92
  %101 = load i8**, i8*** %5, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = load i8, i8* @MBEDTLS_ASN1_PRINTABLE_STRING, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp ne i32 %104, %106
  br i1 %107, label %108, label %136

108:                                              ; preds = %100
  %109 = load i8**, i8*** %5, align 8
  %110 = load i8*, i8** %109, align 8
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8, i8* @MBEDTLS_ASN1_IA5_STRING, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp ne i32 %112, %114
  br i1 %115, label %116, label %136

116:                                              ; preds = %108
  %117 = load i8**, i8*** %5, align 8
  %118 = load i8*, i8** %117, align 8
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = load i8, i8* @MBEDTLS_ASN1_UNIVERSAL_STRING, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp ne i32 %120, %122
  br i1 %123, label %124, label %136

124:                                              ; preds = %116
  %125 = load i8**, i8*** %5, align 8
  %126 = load i8*, i8** %125, align 8
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = load i8, i8* @MBEDTLS_ASN1_BIT_STRING, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp ne i32 %128, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %124
  %133 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_NAME, align 4
  %134 = load i32, i32* @MBEDTLS_ERR_ASN1_UNEXPECTED_TAG, align 4
  %135 = add nsw i32 %133, %134
  store i32 %135, i32* %4, align 4
  br label %168

136:                                              ; preds = %124, %116, %108, %100, %92, %84, %76
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  store %struct.TYPE_5__* %138, %struct.TYPE_5__** %11, align 8
  %139 = load i8**, i8*** %5, align 8
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %139, align 8
  %142 = load i8, i8* %140, align 1
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  store i8 %142, i8* %144, align 8
  %145 = load i8**, i8*** %5, align 8
  %146 = load i8*, i8** %6, align 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = call i32 @mbedtls_asn1_get_len(i8** %145, i8* %146, i64* %148)
  store i32 %149, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %136
  %152 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_NAME, align 4
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %152, %153
  store i32 %154, i32* %4, align 4
  br label %168

155:                                              ; preds = %136
  %156 = load i8**, i8*** %5, align 8
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 2
  store i8* %157, i8** %159, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i8**, i8*** %5, align 8
  %164 = load i8*, i8** %163, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 %162
  store i8* %165, i8** %163, align 8
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  store i32* null, i32** %167, align 8
  store i32 0, i32* %4, align 4
  br label %168

168:                                              ; preds = %155, %151, %132, %72, %50, %31, %19
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32 @mbedtls_asn1_get_tag(i8**, i8*, i64*, i32) #1

declare dso_local i32 @mbedtls_asn1_get_len(i8**, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
