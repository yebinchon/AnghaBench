; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_asn1parse.c_mbedtls_asn1_get_alg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_asn1parse.c_mbedtls_asn1_get_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8, i64, i8* }

@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_OUT_OF_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_OID = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_LENGTH_MISMATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_get_alg(i8** %0, i8* %1, %struct.TYPE_5__* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %15 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @mbedtls_asn1_get_tag(i8** %12, i8* %13, i64* %11, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %5, align 4
  br label %103

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = load i8**, i8*** %6, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = ptrtoint i8* %22 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = icmp slt i64 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @MBEDTLS_ERR_ASN1_OUT_OF_DATA, align 4
  store i32 %30, i32* %5, align 4
  br label %103

31:                                               ; preds = %21
  %32 = load i8**, i8*** %6, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i8, i8* %33, align 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i8 %34, i8* %36, align 8
  %37 = load i8**, i8*** %6, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %7, align 8
  %41 = load i8**, i8*** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* @MBEDTLS_ASN1_OID, align 4
  %46 = call i32 @mbedtls_asn1_get_tag(i8** %41, i8* %42, i64* %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %31
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %5, align 4
  br label %103

50:                                               ; preds = %31
  %51 = load i8**, i8*** %6, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i8**, i8*** %6, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 %57
  store i8* %60, i8** %58, align 8
  %61 = load i8**, i8*** %6, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = icmp eq i8* %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %50
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %67 = call i32 @mbedtls_zeroize(%struct.TYPE_5__* %66, i32 24)
  store i32 0, i32* %5, align 4
  br label %103

68:                                               ; preds = %50
  %69 = load i8**, i8*** %6, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = load i8, i8* %70, align 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i8 %71, i8* %73, align 8
  %74 = load i8**, i8*** %6, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %74, align 8
  %77 = load i8**, i8*** %6, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = call i32 @mbedtls_asn1_get_len(i8** %77, i8* %78, i64* %80)
  store i32 %81, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %68
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %5, align 4
  br label %103

85:                                               ; preds = %68
  %86 = load i8**, i8*** %6, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i8**, i8*** %6, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 %92
  store i8* %95, i8** %93, align 8
  %96 = load i8**, i8*** %6, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = icmp ne i8* %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %85
  %101 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  store i32 %101, i32* %5, align 4
  br label %103

102:                                              ; preds = %85
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %102, %100, %83, %65, %48, %29, %19
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @mbedtls_asn1_get_tag(i8**, i8*, i64*, i32) #1

declare dso_local i32 @mbedtls_zeroize(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @mbedtls_asn1_get_len(i8**, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
