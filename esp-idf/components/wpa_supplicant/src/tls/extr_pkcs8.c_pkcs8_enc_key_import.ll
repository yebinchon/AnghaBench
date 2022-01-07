; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_pkcs8.c_pkcs8_enc_key_import.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_pkcs8.c_pkcs8_enc_key_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_private_key = type { i32 }
%struct.asn1_hdr = type { i64, i64, i64, i32* }

@ASN1_CLASS_UNIVERSAL = common dso_local global i64 0, align 8
@ASN1_TAG_SEQUENCE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"PKCS #8: Does not start with PKCS #8 header (SEQUENCE); assume encrypted PKCS #8 not used\00", align 1
@.str.1 = private unnamed_addr constant [110 x i8] c"PKCS #8: Expected SEQUENCE (AlgorithmIdentifier) - found class %d tag 0x%x; assume encrypted PKCS #8 not used\00", align 1
@ASN1_TAG_OCTETSTRING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [72 x i8] c"PKCS #8: Expected OCTETSTRING (encryptedData) - found class %d tag 0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_private_key* @pkcs8_enc_key_import(i32* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.crypto_private_key*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.asn1_hdr, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.crypto_private_key*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store %struct.crypto_private_key* null, %struct.crypto_private_key** %4, align 8
  br label %128

19:                                               ; preds = %3
  %20 = load i32*, i32** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i64 @asn1_get_next(i32* %20, i32 %22, %struct.asn1_hdr* %8)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30, %25, %19
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = call i32 (i32, i8*, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0))
  store %struct.crypto_private_key* null, %struct.crypto_private_key** %4, align 8
  br label %128

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %9, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = ptrtoint i32* %46 to i64
  %49 = ptrtoint i32* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call i64 @asn1_get_next(i32* %45, i32 %52, %struct.asn1_hdr* %8)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %38
  %56 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %60, %55, %38
  %66 = load i32, i32* @MSG_DEBUG, align 4
  %67 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 (i32, i8*, ...) @wpa_printf(i32 %66, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.1, i64 0, i64 0), i64 %68, i64 %70)
  store %struct.crypto_private_key* null, %struct.crypto_private_key** %4, align 8
  br label %128

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %11, align 8
  %75 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %12, align 8
  %77 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32* %81, i32** %9, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = ptrtoint i32* %83 to i64
  %86 = ptrtoint i32* %84 to i64
  %87 = sub i64 %85, %86
  %88 = sdiv exact i64 %87, 4
  %89 = trunc i64 %88 to i32
  %90 = call i64 @asn1_get_next(i32* %82, i32 %89, %struct.asn1_hdr* %8)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %72
  %93 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @ASN1_TAG_OCTETSTRING, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %97, %92, %72
  %103 = load i32, i32* @MSG_DEBUG, align 4
  %104 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 (i32, i8*, ...) @wpa_printf(i32 %103, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i64 %105, i64 %107)
  store %struct.crypto_private_key* null, %struct.crypto_private_key** %4, align 8
  br label %128

109:                                              ; preds = %97
  %110 = load i32*, i32** %11, align 8
  %111 = load i64, i64* %12, align 8
  %112 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = call i32* @pkcs5_decrypt(i32* %110, i64 %111, i32* %113, i64 %115, i8* %116, i64* %14)
  store i32* %117, i32** %13, align 8
  %118 = load i32*, i32** %13, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %109
  %121 = load i32*, i32** %13, align 8
  %122 = load i64, i64* %14, align 8
  %123 = call %struct.crypto_private_key* @pkcs8_key_import(i32* %121, i64 %122)
  store %struct.crypto_private_key* %123, %struct.crypto_private_key** %15, align 8
  %124 = load i32*, i32** %13, align 8
  %125 = call i32 @os_free(i32* %124)
  %126 = load %struct.crypto_private_key*, %struct.crypto_private_key** %15, align 8
  store %struct.crypto_private_key* %126, %struct.crypto_private_key** %4, align 8
  br label %128

127:                                              ; preds = %109
  store %struct.crypto_private_key* null, %struct.crypto_private_key** %4, align 8
  br label %128

128:                                              ; preds = %127, %120, %102, %65, %35, %18
  %129 = load %struct.crypto_private_key*, %struct.crypto_private_key** %4, align 8
  ret %struct.crypto_private_key* %129
}

declare dso_local i64 @asn1_get_next(i32*, i32, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @pkcs5_decrypt(i32*, i64, i32*, i64, i8*, i64*) #1

declare dso_local %struct.crypto_private_key* @pkcs8_key_import(i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
