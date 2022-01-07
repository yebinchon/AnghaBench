; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_x509v3.c_x509_parse_ext_key_usage.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_x509v3.c_x509_parse_ext_key_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_certificate = type { i32, i32 }
%struct.asn1_hdr = type { i64, i64, i32, i32 }

@ASN1_CLASS_UNIVERSAL = common dso_local global i64 0, align 8
@ASN1_TAG_BITSTRING = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"X509: Expected BIT STRING in KeyUsage; found %d tag 0x%x len %d\00", align 1
@X509_EXT_KEY_USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"X509: KeyUsage 0x%lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x509_certificate*, i32*, i64)* @x509_parse_ext_key_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_parse_ext_key_usage(%struct.x509_certificate* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.x509_certificate*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.asn1_hdr, align 8
  store %struct.x509_certificate* %0, %struct.x509_certificate** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i64 @asn1_get_next(i32* %9, i64 %10, %struct.asn1_hdr* %8)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %27, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ASN1_TAG_BITSTRING, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %36

27:                                               ; preds = %23, %18, %13, %3
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %32, i32 %34)
  store i32 -1, i32* %4, align 4
  br label %55

36:                                               ; preds = %23
  %37 = load i32, i32* @X509_EXT_KEY_USAGE, align 4
  %38 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %39 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @asn1_bit_string_to_long(i32 %43, i32 %45)
  %47 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %48 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @MSG_DEBUG, align 4
  %50 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %51 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %36, %27
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @asn1_get_next(i32*, i64, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64, ...) #1

declare dso_local i32 @asn1_bit_string_to_long(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
