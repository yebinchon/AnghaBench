; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_asn1parse.c_mbedtls_asn1_get_bitstring.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_asn1parse.c_mbedtls_asn1_get_bitstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8, i8* }

@MBEDTLS_ASN1_BIT_STRING = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_OUT_OF_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_INVALID_LENGTH = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_LENGTH_MISMATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_asn1_get_bitstring(i8** %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* @MBEDTLS_ASN1_BIT_STRING, align 4
  %14 = call i32 @mbedtls_asn1_get_tag(i8** %9, i8* %10, i32* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %64

18:                                               ; preds = %3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @MBEDTLS_ERR_ASN1_OUT_OF_DATA, align 4
  store i32 %24, i32* %4, align 4
  br label %64

25:                                               ; preds = %18
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load i8, i8* %31, align 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i8 %32, i8* %34, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i8, i8* %36, align 4
  %38 = zext i8 %37 to i32
  %39 = icmp sgt i32 %38, 7
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = load i32, i32* @MBEDTLS_ERR_ASN1_INVALID_LENGTH, align 4
  store i32 %41, i32* %4, align 4
  br label %64

42:                                               ; preds = %25
  %43 = load i8**, i8*** %5, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %43, align 8
  %46 = load i8**, i8*** %5, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i8**, i8*** %5, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = sext i32 %52 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %53, align 8
  %57 = load i8**, i8*** %5, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = icmp ne i8* %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %42
  %62 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  store i32 %62, i32* %4, align 4
  br label %64

63:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %61, %40, %23, %16
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @mbedtls_asn1_get_tag(i8**, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
