; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_rsa.c_crypto_rsa_import_private_key.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_rsa.c_crypto_rsa_import_private_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_rsa_key = type { i32, %struct.bignum*, %struct.bignum*, %struct.bignum*, %struct.bignum*, %struct.bignum*, %struct.bignum*, %struct.bignum*, %struct.bignum* }
%struct.bignum = type { i32 }
%struct.asn1_hdr = type { i64, i64, i32, i32* }

@ASN1_CLASS_UNIVERSAL = common dso_local global i64 0, align 8
@ASN1_TAG_SEQUENCE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"RSA: Expected SEQUENCE (public key) - found class %d tag 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"RSA: Expected zero INTEGER in the beginning of private key; not found\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"RSA: Extra data in public key SEQUENCE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_rsa_key* @crypto_rsa_import_private_key(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.crypto_rsa_key*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.crypto_rsa_key*, align 8
  %7 = alloca %struct.bignum*, align 8
  %8 = alloca %struct.asn1_hdr, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = call i64 @os_zalloc(i32 72)
  %12 = inttoptr i64 %11 to %struct.crypto_rsa_key*
  store %struct.crypto_rsa_key* %12, %struct.crypto_rsa_key** %6, align 8
  %13 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %14 = icmp eq %struct.crypto_rsa_key* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.crypto_rsa_key* null, %struct.crypto_rsa_key** %3, align 8
  br label %218

16:                                               ; preds = %2
  %17 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %18 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = call i8* (...) @bignum_init()
  %20 = bitcast i8* %19 to %struct.bignum*
  %21 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %22 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %21, i32 0, i32 8
  store %struct.bignum* %20, %struct.bignum** %22, align 8
  %23 = call i8* (...) @bignum_init()
  %24 = bitcast i8* %23 to %struct.bignum*
  %25 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %26 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %25, i32 0, i32 7
  store %struct.bignum* %24, %struct.bignum** %26, align 8
  %27 = call i8* (...) @bignum_init()
  %28 = bitcast i8* %27 to %struct.bignum*
  %29 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %30 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %29, i32 0, i32 6
  store %struct.bignum* %28, %struct.bignum** %30, align 8
  %31 = call i8* (...) @bignum_init()
  %32 = bitcast i8* %31 to %struct.bignum*
  %33 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %34 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %33, i32 0, i32 5
  store %struct.bignum* %32, %struct.bignum** %34, align 8
  %35 = call i8* (...) @bignum_init()
  %36 = bitcast i8* %35 to %struct.bignum*
  %37 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %38 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %37, i32 0, i32 4
  store %struct.bignum* %36, %struct.bignum** %38, align 8
  %39 = call i8* (...) @bignum_init()
  %40 = bitcast i8* %39 to %struct.bignum*
  %41 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %42 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %41, i32 0, i32 3
  store %struct.bignum* %40, %struct.bignum** %42, align 8
  %43 = call i8* (...) @bignum_init()
  %44 = bitcast i8* %43 to %struct.bignum*
  %45 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %46 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %45, i32 0, i32 2
  store %struct.bignum* %44, %struct.bignum** %46, align 8
  %47 = call i8* (...) @bignum_init()
  %48 = bitcast i8* %47 to %struct.bignum*
  %49 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %50 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %49, i32 0, i32 1
  store %struct.bignum* %48, %struct.bignum** %50, align 8
  %51 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %52 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %51, i32 0, i32 8
  %53 = load %struct.bignum*, %struct.bignum** %52, align 8
  %54 = icmp eq %struct.bignum* %53, null
  br i1 %54, label %90, label %55

55:                                               ; preds = %16
  %56 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %57 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %56, i32 0, i32 7
  %58 = load %struct.bignum*, %struct.bignum** %57, align 8
  %59 = icmp eq %struct.bignum* %58, null
  br i1 %59, label %90, label %60

60:                                               ; preds = %55
  %61 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %62 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %61, i32 0, i32 6
  %63 = load %struct.bignum*, %struct.bignum** %62, align 8
  %64 = icmp eq %struct.bignum* %63, null
  br i1 %64, label %90, label %65

65:                                               ; preds = %60
  %66 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %67 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %66, i32 0, i32 5
  %68 = load %struct.bignum*, %struct.bignum** %67, align 8
  %69 = icmp eq %struct.bignum* %68, null
  br i1 %69, label %90, label %70

70:                                               ; preds = %65
  %71 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %72 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %71, i32 0, i32 4
  %73 = load %struct.bignum*, %struct.bignum** %72, align 8
  %74 = icmp eq %struct.bignum* %73, null
  br i1 %74, label %90, label %75

75:                                               ; preds = %70
  %76 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %77 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %76, i32 0, i32 3
  %78 = load %struct.bignum*, %struct.bignum** %77, align 8
  %79 = icmp eq %struct.bignum* %78, null
  br i1 %79, label %90, label %80

80:                                               ; preds = %75
  %81 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %82 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %81, i32 0, i32 2
  %83 = load %struct.bignum*, %struct.bignum** %82, align 8
  %84 = icmp eq %struct.bignum* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %87 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %86, i32 0, i32 1
  %88 = load %struct.bignum*, %struct.bignum** %87, align 8
  %89 = icmp eq %struct.bignum* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %85, %80, %75, %70, %65, %60, %55, %16
  %91 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %92 = call i32 @crypto_rsa_free(%struct.crypto_rsa_key* %91)
  store %struct.crypto_rsa_key* null, %struct.crypto_rsa_key** %3, align 8
  br label %218

93:                                               ; preds = %85
  %94 = load i32*, i32** %4, align 8
  %95 = load i64, i64* %5, align 8
  %96 = call i64 @asn1_get_next(i32* %94, i64 %95, %struct.asn1_hdr* %8)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %103, %98, %93
  %109 = load i32, i32* @MSG_DEBUG, align 4
  %110 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i32 (i32, i8*, ...) @wpa_printf(i32 %109, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %111, i64 %113)
  br label %215

115:                                              ; preds = %103
  %116 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  store i32* %117, i32** %9, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %8, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  store i32* %122, i32** %10, align 8
  %123 = call i8* (...) @bignum_init()
  %124 = bitcast i8* %123 to %struct.bignum*
  store %struct.bignum* %124, %struct.bignum** %7, align 8
  %125 = load %struct.bignum*, %struct.bignum** %7, align 8
  %126 = icmp eq %struct.bignum* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %115
  br label %215

128:                                              ; preds = %115
  %129 = load i32*, i32** %9, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = load %struct.bignum*, %struct.bignum** %7, align 8
  %132 = call i32* @crypto_rsa_parse_integer(i32* %129, i32* %130, %struct.bignum* %131)
  store i32* %132, i32** %9, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %139, label %135

135:                                              ; preds = %128
  %136 = load %struct.bignum*, %struct.bignum** %7, align 8
  %137 = call i64 @bignum_cmp_d(%struct.bignum* %136, i32 0)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %135, %128
  %140 = load i32, i32* @MSG_DEBUG, align 4
  %141 = call i32 (i32, i8*, ...) @wpa_printf(i32 %140, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  %142 = load %struct.bignum*, %struct.bignum** %7, align 8
  %143 = call i32 @bignum_deinit(%struct.bignum* %142)
  br label %215

144:                                              ; preds = %135
  %145 = load %struct.bignum*, %struct.bignum** %7, align 8
  %146 = call i32 @bignum_deinit(%struct.bignum* %145)
  %147 = load i32*, i32** %9, align 8
  %148 = load i32*, i32** %10, align 8
  %149 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %150 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %149, i32 0, i32 8
  %151 = load %struct.bignum*, %struct.bignum** %150, align 8
  %152 = call i32* @crypto_rsa_parse_integer(i32* %147, i32* %148, %struct.bignum* %151)
  store i32* %152, i32** %9, align 8
  %153 = load i32*, i32** %9, align 8
  %154 = load i32*, i32** %10, align 8
  %155 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %156 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %155, i32 0, i32 7
  %157 = load %struct.bignum*, %struct.bignum** %156, align 8
  %158 = call i32* @crypto_rsa_parse_integer(i32* %153, i32* %154, %struct.bignum* %157)
  store i32* %158, i32** %9, align 8
  %159 = load i32*, i32** %9, align 8
  %160 = load i32*, i32** %10, align 8
  %161 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %162 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %161, i32 0, i32 6
  %163 = load %struct.bignum*, %struct.bignum** %162, align 8
  %164 = call i32* @crypto_rsa_parse_integer(i32* %159, i32* %160, %struct.bignum* %163)
  store i32* %164, i32** %9, align 8
  %165 = load i32*, i32** %9, align 8
  %166 = load i32*, i32** %10, align 8
  %167 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %168 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %167, i32 0, i32 5
  %169 = load %struct.bignum*, %struct.bignum** %168, align 8
  %170 = call i32* @crypto_rsa_parse_integer(i32* %165, i32* %166, %struct.bignum* %169)
  store i32* %170, i32** %9, align 8
  %171 = load i32*, i32** %9, align 8
  %172 = load i32*, i32** %10, align 8
  %173 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %174 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %173, i32 0, i32 4
  %175 = load %struct.bignum*, %struct.bignum** %174, align 8
  %176 = call i32* @crypto_rsa_parse_integer(i32* %171, i32* %172, %struct.bignum* %175)
  store i32* %176, i32** %9, align 8
  %177 = load i32*, i32** %9, align 8
  %178 = load i32*, i32** %10, align 8
  %179 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %180 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %179, i32 0, i32 3
  %181 = load %struct.bignum*, %struct.bignum** %180, align 8
  %182 = call i32* @crypto_rsa_parse_integer(i32* %177, i32* %178, %struct.bignum* %181)
  store i32* %182, i32** %9, align 8
  %183 = load i32*, i32** %9, align 8
  %184 = load i32*, i32** %10, align 8
  %185 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %186 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %185, i32 0, i32 2
  %187 = load %struct.bignum*, %struct.bignum** %186, align 8
  %188 = call i32* @crypto_rsa_parse_integer(i32* %183, i32* %184, %struct.bignum* %187)
  store i32* %188, i32** %9, align 8
  %189 = load i32*, i32** %9, align 8
  %190 = load i32*, i32** %10, align 8
  %191 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %192 = getelementptr inbounds %struct.crypto_rsa_key, %struct.crypto_rsa_key* %191, i32 0, i32 1
  %193 = load %struct.bignum*, %struct.bignum** %192, align 8
  %194 = call i32* @crypto_rsa_parse_integer(i32* %189, i32* %190, %struct.bignum* %193)
  store i32* %194, i32** %9, align 8
  %195 = load i32*, i32** %9, align 8
  %196 = icmp eq i32* %195, null
  br i1 %196, label %197, label %198

197:                                              ; preds = %144
  br label %215

198:                                              ; preds = %144
  %199 = load i32*, i32** %9, align 8
  %200 = load i32*, i32** %10, align 8
  %201 = icmp ne i32* %199, %200
  br i1 %201, label %202, label %213

202:                                              ; preds = %198
  %203 = load i32, i32* @MSG_DEBUG, align 4
  %204 = load i32*, i32** %9, align 8
  %205 = load i32*, i32** %10, align 8
  %206 = load i32*, i32** %9, align 8
  %207 = ptrtoint i32* %205 to i64
  %208 = ptrtoint i32* %206 to i64
  %209 = sub i64 %207, %208
  %210 = sdiv exact i64 %209, 4
  %211 = trunc i64 %210 to i32
  %212 = call i32 @wpa_hexdump(i32 %203, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32* %204, i32 %211)
  br label %215

213:                                              ; preds = %198
  %214 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  store %struct.crypto_rsa_key* %214, %struct.crypto_rsa_key** %3, align 8
  br label %218

215:                                              ; preds = %202, %197, %139, %127, %108
  %216 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %6, align 8
  %217 = call i32 @crypto_rsa_free(%struct.crypto_rsa_key* %216)
  store %struct.crypto_rsa_key* null, %struct.crypto_rsa_key** %3, align 8
  br label %218

218:                                              ; preds = %215, %213, %90, %15
  %219 = load %struct.crypto_rsa_key*, %struct.crypto_rsa_key** %3, align 8
  ret %struct.crypto_rsa_key* %219
}

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i8* @bignum_init(...) #1

declare dso_local i32 @crypto_rsa_free(%struct.crypto_rsa_key*) #1

declare dso_local i64 @asn1_get_next(i32*, i64, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @crypto_rsa_parse_integer(i32*, i32*, %struct.bignum*) #1

declare dso_local i64 @bignum_cmp_d(%struct.bignum*, i32) #1

declare dso_local i32 @bignum_deinit(%struct.bignum*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
