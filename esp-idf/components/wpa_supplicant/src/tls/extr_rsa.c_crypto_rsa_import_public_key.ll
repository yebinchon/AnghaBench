; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_rsa.c_crypto_rsa_import_public_key.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_rsa.c_crypto_rsa_import_public_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_rsa_key = type { i32*, i32* }
%struct.asn1_hdr = type { i64, i64, i32, i32* }

@ASN1_CLASS_UNIVERSAL = common dso_local global i64 0, align 8
@ASN1_TAG_SEQUENCE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"RSA: Expected SEQUENCE (public key) - found class %d tag 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"RSA: Extra data in public key SEQUENCE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_rsa_key* @crypto_rsa_import_public_key(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.crypto_rsa_key*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.crypto_rsa_key*, align 8
  %7 = alloca %struct.asn1_hdr, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = call i64 @os_zalloc(i32 16)
  %11 = inttoptr i64 %10 to %struct.crypto_rsa_key*
  store %struct.crypto_rsa_key* %11, %struct.crypto_rsa_key** %6, align 8
  %12 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %13 = icmp eq %struct.crypto_rsa_key* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.crypto_rsa_key* null, %struct.crypto_rsa_key** %3, align 8
  br label %101

15:                                               ; preds = %2
  %16 = call i8* (...) @bignum_init()
  %17 = bitcast i8* %16 to i32*
  %18 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %19 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  %20 = call i8* (...) @bignum_init()
  %21 = bitcast i8* %20 to i32*
  %22 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %23 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %25 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %15
  %29 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %30 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %15
  %34 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %35 = call i32 @crypto_rsa_free(%struct.crypto_rsa_key* %34)
  store %struct.crypto_rsa_key* null, %struct.crypto_rsa_key** %3, align 8
  br label %101

36:                                               ; preds = %28
  %37 = load i32*, i32** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @asn1_get_next(i32* %37, i64 %38, %struct.asn1_hdr* %7)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %7, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %7, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %46, %41, %36
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %7, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %7, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @wpa_printf(i32 %52, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %54, i64 %56)
  br label %98

58:                                               ; preds = %46
  %59 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %7, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %8, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %7, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  store i32* %65, i32** %9, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %69 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = call i32* @crypto_rsa_parse_integer(i32* %66, i32* %67, i32* %70)
  store i32* %71, i32** %8, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %75 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32* @crypto_rsa_parse_integer(i32* %72, i32* %73, i32* %76)
  store i32* %77, i32** %8, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %58
  br label %98

81:                                               ; preds = %58
  %82 = load i32*, i32** %8, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = icmp ne i32* %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load i32, i32* @MSG_DEBUG, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = ptrtoint i32* %88 to i64
  %91 = ptrtoint i32* %89 to i64
  %92 = sub i64 %90, %91
  %93 = sdiv exact i64 %92, 4
  %94 = trunc i64 %93 to i32
  %95 = call i32 @wpa_hexdump(i32 %86, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32* %87, i32 %94)
  br label %98

96:                                               ; preds = %81
  %97 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  store %struct.crypto_rsa_key* %97, %struct.crypto_rsa_key** %3, align 8
  br label %101

98:                                               ; preds = %85, %80, %51
  %99 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %100 = call i32 @crypto_rsa_free(%struct.crypto_rsa_key* %99)
  store %struct.crypto_rsa_key* null, %struct.crypto_rsa_key** %3, align 8
  br label %101

101:                                              ; preds = %98, %96, %33, %14
  %102 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %3, align 8
  ret %struct.crypto_rsa_key* %102
}

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i8* @bignum_init(...) #1

declare dso_local i32 @crypto_rsa_free(%struct.crypto_rsa_key*) #1

declare dso_local i64 @asn1_get_next(i32*, i64, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64, i64) #1

declare dso_local i32* @crypto_rsa_parse_integer(i32*, i32*, i32*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
