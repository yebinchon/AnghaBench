; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_x509v3.c_x509_parse_public_key.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_x509v3.c_x509_parse_public_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_certificate = type { i32, i32*, i32 }
%struct.asn1_hdr = type { i64, i64, i32, i64* }

@ASN1_CLASS_UNIVERSAL = common dso_local global i64 0, align 8
@ASN1_TAG_SEQUENCE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"X509: Expected SEQUENCE (SubjectPublicKeyInfo) - found class %d tag 0x%x\00", align 1
@ASN1_TAG_BITSTRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [70 x i8] c"X509: Expected BITSTRING (subjectPublicKey) - found class %d tag 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"X509: BITSTRING - %d unused bits\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"X509: Failed to allocate memory for public key\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"X509: subjectPublicKey\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, %struct.x509_certificate*, i64**)* @x509_parse_public_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_parse_public_key(i64* %0, i64 %1, %struct.x509_certificate* %2, i64** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.x509_certificate*, align 8
  %9 = alloca i64**, align 8
  %10 = alloca %struct.asn1_hdr, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.x509_certificate* %2, %struct.x509_certificate** %8, align 8
  store i64** %3, i64*** %9, align 8
  %13 = load i64*, i64** %6, align 8
  store i64* %13, i64** %11, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  store i64* %16, i64** %12, align 8
  %17 = load i64*, i64** %11, align 8
  %18 = load i64*, i64** %12, align 8
  %19 = load i64*, i64** %11, align 8
  %20 = ptrtoint i64* %18 to i64
  %21 = ptrtoint i64* %19 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 8
  %24 = trunc i64 %23 to i32
  %25 = call i64 @asn1_get_next(i64* %17, i32 %24, %struct.asn1_hdr* %10)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %32, %27, %4
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i64 %40, i64 %42)
  store i32 -1, i32* %5, align 4
  br label %161

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %46 = load i64*, i64** %45, align 8
  store i64* %46, i64** %11, align 8
  %47 = load i64*, i64** %11, align 8
  %48 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  %52 = load i64*, i64** %12, align 8
  %53 = icmp ugt i64* %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store i32 -1, i32* %5, align 4
  br label %161

55:                                               ; preds = %44
  %56 = load i64*, i64** %11, align 8
  %57 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %56, i64 %59
  store i64* %60, i64** %12, align 8
  %61 = load i64*, i64** %12, align 8
  %62 = load i64**, i64*** %9, align 8
  store i64* %61, i64** %62, align 8
  %63 = load i64*, i64** %11, align 8
  %64 = load i64*, i64** %12, align 8
  %65 = load i64*, i64** %11, align 8
  %66 = ptrtoint i64* %64 to i64
  %67 = ptrtoint i64* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 8
  %70 = trunc i64 %69 to i32
  %71 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %72 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %71, i32 0, i32 2
  %73 = call i64 @x509_parse_algorithm_identifier(i64* %63, i32 %70, i32* %72, i64** %11)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %55
  store i32 -1, i32* %5, align 4
  br label %161

76:                                               ; preds = %55
  %77 = load i64*, i64** %11, align 8
  %78 = load i64*, i64** %12, align 8
  %79 = load i64*, i64** %11, align 8
  %80 = ptrtoint i64* %78 to i64
  %81 = ptrtoint i64* %79 to i64
  %82 = sub i64 %80, %81
  %83 = sdiv exact i64 %82, 8
  %84 = trunc i64 %83 to i32
  %85 = call i64 @asn1_get_next(i64* %77, i32 %84, %struct.asn1_hdr* %10)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %76
  %88 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ASN1_TAG_BITSTRING, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %92, %87, %76
  %98 = load i32, i32* @MSG_DEBUG, align 4
  %99 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 (i32, i8*, ...) @wpa_printf(i32 %98, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %100, i64 %102)
  store i32 -1, i32* %5, align 4
  br label %161

104:                                              ; preds = %92
  %105 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %106, 1
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store i32 -1, i32* %5, align 4
  br label %161

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %111 = load i64*, i64** %110, align 8
  store i64* %111, i64** %11, align 8
  %112 = load i64*, i64** %11, align 8
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load i32, i32* @MSG_DEBUG, align 4
  %117 = load i64*, i64** %11, align 8
  %118 = load i64, i64* %117, align 8
  %119 = call i32 (i32, i8*, ...) @wpa_printf(i32 %116, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %118)
  br label %120

120:                                              ; preds = %115, %109
  %121 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %122 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @os_free(i32* %123)
  %125 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %126, 1
  %128 = call i32* @os_malloc(i32 %127)
  %129 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %130 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %129, i32 0, i32 1
  store i32* %128, i32** %130, align 8
  %131 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %132 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %120
  %136 = load i32, i32* @MSG_DEBUG, align 4
  %137 = call i32 (i32, i8*, ...) @wpa_printf(i32 %136, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %161

138:                                              ; preds = %120
  %139 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %140 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i64*, i64** %11, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 1
  %144 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = sub nsw i32 %145, 1
  %147 = call i32 @os_memcpy(i32* %141, i64* %143, i32 %146)
  %148 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = sub nsw i32 %149, 1
  %151 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %152 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* @MSG_MSGDUMP, align 4
  %154 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %155 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %158 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @wpa_hexdump(i32 %153, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32* %156, i32 %159)
  store i32 0, i32* %5, align 4
  br label %161

161:                                              ; preds = %138, %135, %108, %97, %75, %54, %37
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local i64 @asn1_get_next(i64*, i32, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @x509_parse_algorithm_identifier(i64*, i32, i32*, i64**) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(i32*, i64*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
