; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_x509v3.c_x509_parse_validity.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_x509v3.c_x509_parse_validity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_certificate = type { i64, i64 }
%struct.asn1_hdr = type { i64, i64, i64, i32* }

@ASN1_CLASS_UNIVERSAL = common dso_local global i64 0, align 8
@ASN1_TAG_SEQUENCE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"X509: Expected SEQUENCE (Validity) - found class %d tag 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"X509: Failed to parse notBefore Time\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"X509: Failed to parse notAfter Time\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"X509: Validity: notBefore: %lu notAfter: %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.x509_certificate*, i32**)* @x509_parse_validity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_parse_validity(i32* %0, i64 %1, %struct.x509_certificate* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.x509_certificate*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.asn1_hdr, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.x509_certificate* %2, %struct.x509_certificate** %8, align 8
  store i32** %3, i32*** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @asn1_get_next(i32* %13, i64 %14, %struct.asn1_hdr* %10)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %22, %17, %4
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @wpa_printf(i32 %28, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %32)
  store i32 -1, i32* %5, align 4
  br label %128

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %11, align 8
  %37 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %12, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i64, i64* %12, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32*, i32** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = icmp ugt i32* %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %128

47:                                               ; preds = %34
  %48 = load i32*, i32** %11, align 8
  %49 = load i64, i64* %12, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32**, i32*** %9, align 8
  store i32* %50, i32** %51, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i64, i64* %12, align 8
  %54 = call i64 @asn1_get_next(i32* %52, i64 %53, %struct.asn1_hdr* %10)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %72, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %72, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %69 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %68, i32 0, i32 1
  %70 = call i64 @x509_parse_time(i32* %63, i64 %65, i64 %67, i64* %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %61, %56, %47
  %73 = load i32, i32* @MSG_DEBUG, align 4
  %74 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @wpa_hexdump_ascii(i32 %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32* %75, i64 %77)
  store i32 -1, i32* %5, align 4
  br label %128

79:                                               ; preds = %61
  %80 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32* %84, i32** %11, align 8
  %85 = load i32**, i32*** %9, align 8
  %86 = load i32*, i32** %85, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = ptrtoint i32* %86 to i64
  %89 = ptrtoint i32* %87 to i64
  %90 = sub i64 %88, %89
  %91 = sdiv exact i64 %90, 4
  store i64 %91, i64* %12, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load i64, i64* %12, align 8
  %94 = call i64 @asn1_get_next(i32* %92, i64 %93, %struct.asn1_hdr* %10)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %112, label %96

96:                                               ; preds = %79
  %97 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %112, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %109 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %108, i32 0, i32 0
  %110 = call i64 @x509_parse_time(i32* %103, i64 %105, i64 %107, i64* %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %101, %96, %79
  %113 = load i32, i32* @MSG_DEBUG, align 4
  %114 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @wpa_hexdump_ascii(i32 %113, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32* %115, i64 %117)
  store i32 -1, i32* %5, align 4
  br label %128

119:                                              ; preds = %101
  %120 = load i32, i32* @MSG_DEBUG, align 4
  %121 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %122 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %125 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @wpa_printf(i32 %120, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %123, i64 %126)
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %119, %112, %72, %46, %27
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i64 @asn1_get_next(i32*, i64, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64, i64) #1

declare dso_local i64 @x509_parse_time(i32*, i64, i64, i64*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
