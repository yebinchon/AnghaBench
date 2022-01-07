; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_asn1parse.c_mbedtls_asn1_get_sequence_of.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_asn1parse.c_mbedtls_asn1_get_sequence_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8, i64, i8* }

@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_ALLOC_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_get_sequence_of(i8** %0, i8* %1, %struct.TYPE_4__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8**, i8*** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %16 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @mbedtls_asn1_get_tag(i8** %13, i8* %14, i64* %11, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %5, align 4
  br label %95

22:                                               ; preds = %4
  %23 = load i8**, i8*** %6, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load i64, i64* %11, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  store i32 %30, i32* %5, align 4
  br label %95

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %84, %31
  %33 = load i8**, i8*** %6, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ult i8* %34, %35
  br i1 %36, label %37, label %85

37:                                               ; preds = %32
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %12, align 8
  %40 = load i8**, i8*** %6, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i8, i8* %41, align 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i8 %42, i8* %44, align 8
  %45 = load i8**, i8*** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @mbedtls_asn1_get_tag(i8** %45, i8* %46, i64* %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %37
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %95

54:                                               ; preds = %37
  %55 = load i8**, i8*** %6, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i8**, i8*** %6, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 %61
  store i8* %64, i8** %62, align 8
  %65 = load i8**, i8*** %6, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = icmp ult i8* %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %54
  %70 = call i64 @mbedtls_calloc(i32 1, i32 32)
  %71 = inttoptr i64 %70 to %struct.TYPE_4__*
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store %struct.TYPE_4__* %71, %struct.TYPE_4__** %73, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = icmp eq %struct.TYPE_4__* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* @MBEDTLS_ERR_ASN1_ALLOC_FAILED, align 4
  store i32 %79, i32* %5, align 4
  br label %95

80:                                               ; preds = %69
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  store %struct.TYPE_4__* %83, %struct.TYPE_4__** %8, align 8
  br label %84

84:                                               ; preds = %80, %54
  br label %32

85:                                               ; preds = %32
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %87, align 8
  %88 = load i8**, i8*** %6, align 8
  %89 = load i8*, i8** %88, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = icmp ne i8* %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  store i32 %93, i32* %5, align 4
  br label %95

94:                                               ; preds = %85
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %92, %78, %52, %29, %20
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @mbedtls_asn1_get_tag(i8**, i8*, i64*, i32) #1

declare dso_local i64 @mbedtls_calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
