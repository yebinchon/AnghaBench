; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client_write.c_tls_write_client_certificate_verify.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client_write.c_tls_write_client_certificate_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32*, i32*, i32* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"TLSv1: Send CertificateVerify\00", align 1
@TLS_RECORD_HEADER_LEN = common dso_local global i32 0, align 4
@TLS_HANDSHAKE_TYPE_CERTIFICATE_VERIFY = common dso_local global i32 0, align 4
@MD5_MAC_LEN = common dso_local global i64 0, align 8
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SHA1_MAC_LEN = common dso_local global i64 0, align 8
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"TLSv1: CertificateVerify hash\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"TLSv1: Failed to sign hash (PKCS #1)\00", align 1
@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"TLSv1: Failed to generate a record\00", align 1
@SHA256_MAC_LEN = common dso_local global i64 0, align 8
@TLS_HASH_ALG_SHA256 = common dso_local global i32 0, align 4
@TLS_SIGN_ALG_RSA = common dso_local global i32 0, align 4
@TLS_VERSION_1_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_client*, i32**, i32*)* @tls_write_client_certificate_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_write_client_certificate_verify(%struct.tlsv1_client* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_client*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [100 x i32], align 16
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32**, i32*** %6, align 8
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %8, align 8
  store i32* %23, i32** %9, align 8
  %24 = load i32, i32* @TLS_RECORD_HEADER_LEN, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  store i32* %28, i32** %10, align 8
  %29 = load i32, i32* @TLS_HANDSHAKE_TYPE_CERTIFICATE_VERIFY, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %8, align 8
  store i32 %29, i32* %30, align 4
  %32 = load i32*, i32** %8, align 8
  store i32* %32, i32** %11, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  store i32* %34, i32** %8, align 8
  %35 = getelementptr inbounds [100 x i32], [100 x i32]* %16, i64 0, i64 0
  store i32* %35, i32** %17, align 8
  %36 = load i32, i32* %18, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %73

38:                                               ; preds = %3
  %39 = load i64, i64* @MD5_MAC_LEN, align 8
  store i64 %39, i64* %14, align 8
  %40 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %41 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %38
  %46 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %47 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32*, i32** %17, align 8
  %51 = call i64 @crypto_hash_finish(i32* %49, i32* %50, i64* %14)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %45, %38
  %54 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %55 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %56 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %57 = call i32 @tls_alert(%struct.tlsv1_client* %54, i32 %55, i32 %56)
  %58 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %59 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  %61 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %62 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i64 @crypto_hash_finish(i32* %64, i32* null, i64* null)
  %66 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %67 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  store i32 -1, i32* %4, align 4
  br label %213

69:                                               ; preds = %45
  %70 = load i64, i64* @MD5_MAC_LEN, align 8
  %71 = load i32*, i32** %17, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 %70
  store i32* %72, i32** %17, align 8
  br label %79

73:                                               ; preds = %3
  %74 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %75 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i64 @crypto_hash_finish(i32* %77, i32* null, i64* null)
  br label %79

79:                                               ; preds = %73, %69
  %80 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %81 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  store i32* null, i32** %82, align 8
  %83 = load i64, i64* @SHA1_MAC_LEN, align 8
  store i64 %83, i64* %14, align 8
  %84 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %85 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %97, label %89

89:                                               ; preds = %79
  %90 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %91 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32*, i32** %17, align 8
  %95 = call i64 @crypto_hash_finish(i32* %93, i32* %94, i64* %14)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %89, %79
  %98 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %99 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store i32* null, i32** %100, align 8
  %101 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %102 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %103 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %104 = call i32 @tls_alert(%struct.tlsv1_client* %101, i32 %102, i32 %103)
  store i32 -1, i32* %4, align 4
  br label %213

105:                                              ; preds = %89
  %106 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %107 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i32* null, i32** %108, align 8
  %109 = load i32, i32* %18, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load i64, i64* @MD5_MAC_LEN, align 8
  %113 = load i64, i64* %14, align 8
  %114 = add i64 %113, %112
  store i64 %114, i64* %14, align 8
  br label %115

115:                                              ; preds = %111, %105
  %116 = load i32, i32* @MSG_MSGDUMP, align 4
  %117 = getelementptr inbounds [100 x i32], [100 x i32]* %16, i64 0, i64 0
  %118 = load i64, i64* %14, align 8
  %119 = call i32 @wpa_hexdump(i32 %116, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32* %117, i64 %118)
  %120 = load i32*, i32** %8, align 8
  store i32* %120, i32** %12, align 8
  %121 = load i32*, i32** %8, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  store i32* %122, i32** %8, align 8
  %123 = load i32*, i32** %7, align 8
  %124 = load i32*, i32** %8, align 8
  %125 = ptrtoint i32* %123 to i64
  %126 = ptrtoint i32* %124 to i64
  %127 = sub i64 %125, %126
  %128 = sdiv exact i64 %127, 4
  store i64 %128, i64* %15, align 8
  %129 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %130 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %129, i32 0, i32 2
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = icmp eq %struct.TYPE_4__* %131, null
  br i1 %132, label %144, label %133

133:                                              ; preds = %115
  %134 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %135 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %134, i32 0, i32 2
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds [100 x i32], [100 x i32]* %16, i64 0, i64 0
  %140 = load i64, i64* %14, align 8
  %141 = load i32*, i32** %8, align 8
  %142 = call i64 @crypto_private_key_sign_pkcs1(i32 %138, i32* %139, i64 %140, i32* %141, i64* %15)
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %133, %115
  %145 = load i32, i32* @MSG_DEBUG, align 4
  %146 = call i32 @wpa_printf(i32 %145, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %147 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %148 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %149 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %150 = call i32 @tls_alert(%struct.tlsv1_client* %147, i32 %148, i32 %149)
  store i32 -1, i32* %4, align 4
  br label %213

151:                                              ; preds = %133
  %152 = load i32*, i32** %12, align 8
  %153 = load i64, i64* %15, align 8
  %154 = call i32 @WPA_PUT_BE16(i32* %152, i64 %153)
  %155 = load i64, i64* %15, align 8
  %156 = load i32*, i32** %8, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 %155
  store i32* %157, i32** %8, align 8
  %158 = load i32*, i32** %11, align 8
  %159 = load i32*, i32** %8, align 8
  %160 = load i32*, i32** %11, align 8
  %161 = ptrtoint i32* %159 to i64
  %162 = ptrtoint i32* %160 to i64
  %163 = sub i64 %161, %162
  %164 = sdiv exact i64 %163, 4
  %165 = sub nsw i64 %164, 3
  %166 = trunc i64 %165 to i32
  %167 = call i32 @WPA_PUT_BE24(i32* %158, i32 %166)
  %168 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %169 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %168, i32 0, i32 1
  %170 = load i32, i32* @TLS_CONTENT_TYPE_HANDSHAKE, align 4
  %171 = load i32*, i32** %9, align 8
  %172 = load i32*, i32** %7, align 8
  %173 = load i32*, i32** %9, align 8
  %174 = ptrtoint i32* %172 to i64
  %175 = ptrtoint i32* %173 to i64
  %176 = sub i64 %174, %175
  %177 = sdiv exact i64 %176, 4
  %178 = trunc i64 %177 to i32
  %179 = load i32*, i32** %10, align 8
  %180 = load i32*, i32** %8, align 8
  %181 = load i32*, i32** %10, align 8
  %182 = ptrtoint i32* %180 to i64
  %183 = ptrtoint i32* %181 to i64
  %184 = sub i64 %182, %183
  %185 = sdiv exact i64 %184, 4
  %186 = trunc i64 %185 to i32
  %187 = call i64 @tlsv1_record_send(%struct.TYPE_5__* %169, i32 %170, i32* %171, i32 %178, i32* %179, i32 %186, i64* %13)
  %188 = icmp slt i64 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %151
  %190 = load i32, i32* @MSG_DEBUG, align 4
  %191 = call i32 @wpa_printf(i32 %190, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %192 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %193 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %194 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %195 = call i32 @tls_alert(%struct.tlsv1_client* %192, i32 %193, i32 %194)
  store i32 -1, i32* %4, align 4
  br label %213

196:                                              ; preds = %151
  %197 = load i32*, i32** %9, align 8
  %198 = load i64, i64* %13, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  store i32* %199, i32** %8, align 8
  %200 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %201 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %200, i32 0, i32 0
  %202 = load i32*, i32** %10, align 8
  %203 = load i32*, i32** %8, align 8
  %204 = load i32*, i32** %10, align 8
  %205 = ptrtoint i32* %203 to i64
  %206 = ptrtoint i32* %204 to i64
  %207 = sub i64 %205, %206
  %208 = sdiv exact i64 %207, 4
  %209 = trunc i64 %208 to i32
  %210 = call i32 @tls_verify_hash_add(%struct.TYPE_6__* %201, i32* %202, i32 %209)
  %211 = load i32*, i32** %8, align 8
  %212 = load i32**, i32*** %6, align 8
  store i32* %211, i32** %212, align 8
  store i32 0, i32* %4, align 4
  br label %213

213:                                              ; preds = %196, %189, %144, %97, %53
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @crypto_hash_finish(i32*, i32*, i64*) #1

declare dso_local i32 @tls_alert(%struct.tlsv1_client*, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i64 @crypto_private_key_sign_pkcs1(i32, i32*, i64, i32*, i64*) #1

declare dso_local i32 @WPA_PUT_BE16(i32*, i64) #1

declare dso_local i32 @WPA_PUT_BE24(i32*, i32) #1

declare dso_local i64 @tlsv1_record_send(%struct.TYPE_5__*, i32, i32*, i32, i32*, i32, i64*) #1

declare dso_local i32 @tls_verify_hash_add(%struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
