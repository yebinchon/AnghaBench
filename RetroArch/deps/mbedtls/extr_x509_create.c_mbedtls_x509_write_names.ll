; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_create.c_mbedtls_x509_write_names.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_create.c_mbedtls_x509_write_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }

@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_write_names(i8** %0, i8* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %9, align 8
  br label %11

11:                                               ; preds = %14, %3
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %40

14:                                               ; preds = %11
  %15 = load i64, i64* %8, align 8
  %16 = load i8**, i8*** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @x509_write_name(i8** %16, i8* %17, i8* %22, i32 %26, i32 %30, i32 %34)
  %36 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %15, i32 %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %9, align 8
  br label %11

40:                                               ; preds = %11
  %41 = load i64, i64* %8, align 8
  %42 = load i8**, i8*** %4, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @mbedtls_asn1_write_len(i8** %42, i8* %43, i64 %44)
  %46 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %41, i32 %45)
  %47 = load i64, i64* %8, align 8
  %48 = load i8**, i8*** %4, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %51 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @mbedtls_asn1_write_tag(i8** %48, i8* %49, i32 %52)
  %54 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %47, i32 %53)
  %55 = load i64, i64* %8, align 8
  %56 = trunc i64 %55 to i32
  ret i32 %56
}

declare dso_local i32 @MBEDTLS_ASN1_CHK_ADD(i64, i32) #1

declare dso_local i32 @x509_write_name(i8**, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @mbedtls_asn1_write_len(i8**, i8*, i64) #1

declare dso_local i32 @mbedtls_asn1_write_tag(i8**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
