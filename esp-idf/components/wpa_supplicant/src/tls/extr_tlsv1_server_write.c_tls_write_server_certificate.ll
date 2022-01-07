; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server_write.c_tls_write_server_certificate.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server_write.c_tls_write_server_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.x509_certificate*, i32 }
%struct.x509_certificate = type { i32, i32, i32 }
%struct.tls_cipher_suite = type { i64 }

@TLS_KEY_X_DH_anon = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"TLSv1: Do not send Certificate when using anonymous DH\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"TLSv1: Send Certificate\00", align 1
@TLS_RECORD_HEADER_LEN = common dso_local global i32 0, align 4
@TLS_HANDSHAKE_TYPE_CERTIFICATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"TLSv1: Not enough buffer space for Certificate (cert_len=%lu left=%lu)\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [74 x i8] c"TLSv1: Full server certificate chain not configured - validation may fail\00", align 1
@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"TLSv1: Failed to generate a record\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_server*, i32**, i32*)* @tls_write_server_certificate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_write_server_certificate(%struct.tlsv1_server* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_server*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.x509_certificate*, align 8
  %15 = alloca %struct.tls_cipher_suite*, align 8
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %17 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.tls_cipher_suite* @tls_get_cipher_suite(i32 %19)
  store %struct.tls_cipher_suite* %20, %struct.tls_cipher_suite** %15, align 8
  %21 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %15, align 8
  %22 = icmp ne %struct.tls_cipher_suite* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %15, align 8
  %25 = getelementptr inbounds %struct.tls_cipher_suite, %struct.tls_cipher_suite* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TLS_KEY_X_DH_anon, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %202

32:                                               ; preds = %23, %3
  %33 = load i32**, i32*** %6, align 8
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %8, align 8
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32*, i32** %8, align 8
  store i32* %37, i32** %9, align 8
  %38 = load i32, i32* @TLS_RECORD_HEADER_LEN, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32* %41, i32** %8, align 8
  %42 = load i32*, i32** %8, align 8
  store i32* %42, i32** %10, align 8
  %43 = load i32, i32* @TLS_HANDSHAKE_TYPE_CERTIFICATE, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  %46 = load i32*, i32** %8, align 8
  store i32* %46, i32** %11, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  store i32* %48, i32** %8, align 8
  %49 = load i32*, i32** %8, align 8
  store i32* %49, i32** %12, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  store i32* %51, i32** %8, align 8
  %52 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %53 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %52, i32 0, i32 2
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load %struct.x509_certificate*, %struct.x509_certificate** %55, align 8
  store %struct.x509_certificate* %56, %struct.x509_certificate** %14, align 8
  br label %57

57:                                               ; preds = %113, %32
  %58 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %59 = icmp ne %struct.x509_certificate* %58, null
  br i1 %59, label %60, label %122

60:                                               ; preds = %57
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  %63 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %64 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32*, i32** %7, align 8
  %69 = icmp ugt i32* %67, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %60
  %71 = load i32, i32* @MSG_DEBUG, align 4
  %72 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %73 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = load i32*, i32** %7, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = ptrtoint i32* %76 to i64
  %79 = ptrtoint i32* %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 4
  %82 = call i32 (i32, i8*, ...) @wpa_printf(i32 %71, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i64 %75, i64 %81)
  %83 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %84 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %85 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %86 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %83, i32 %84, i32 %85)
  store i32 -1, i32* %4, align 4
  br label %202

87:                                               ; preds = %60
  %88 = load i32*, i32** %8, align 8
  %89 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %90 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @WPA_PUT_BE24(i32* %88, i32 %91)
  %93 = load i32*, i32** %8, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  store i32* %94, i32** %8, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %97 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %100 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @os_memcpy(i32* %95, i32 %98, i32 %101)
  %103 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %104 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %8, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %8, align 8
  %109 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %110 = call i64 @x509_certificate_self_signed(%struct.x509_certificate* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %87
  br label %122

113:                                              ; preds = %87
  %114 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %115 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %114, i32 0, i32 2
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %120 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %119, i32 0, i32 1
  %121 = call %struct.x509_certificate* @x509_certificate_get_subject(i32 %118, i32* %120)
  store %struct.x509_certificate* %121, %struct.x509_certificate** %14, align 8
  br label %57

122:                                              ; preds = %112, %57
  %123 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %124 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %125 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %124, i32 0, i32 2
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load %struct.x509_certificate*, %struct.x509_certificate** %127, align 8
  %129 = icmp eq %struct.x509_certificate* %123, %128
  br i1 %129, label %133, label %130

130:                                              ; preds = %122
  %131 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %132 = icmp eq %struct.x509_certificate* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %130, %122
  %134 = load i32, i32* @MSG_DEBUG, align 4
  %135 = call i32 (i32, i8*, ...) @wpa_printf(i32 %134, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %130
  %137 = load i32*, i32** %12, align 8
  %138 = load i32*, i32** %8, align 8
  %139 = load i32*, i32** %12, align 8
  %140 = ptrtoint i32* %138 to i64
  %141 = ptrtoint i32* %139 to i64
  %142 = sub i64 %140, %141
  %143 = sdiv exact i64 %142, 4
  %144 = sub nsw i64 %143, 3
  %145 = trunc i64 %144 to i32
  %146 = call i32 @WPA_PUT_BE24(i32* %137, i32 %145)
  %147 = load i32*, i32** %11, align 8
  %148 = load i32*, i32** %8, align 8
  %149 = load i32*, i32** %11, align 8
  %150 = ptrtoint i32* %148 to i64
  %151 = ptrtoint i32* %149 to i64
  %152 = sub i64 %150, %151
  %153 = sdiv exact i64 %152, 4
  %154 = sub nsw i64 %153, 3
  %155 = trunc i64 %154 to i32
  %156 = call i32 @WPA_PUT_BE24(i32* %147, i32 %155)
  %157 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %158 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %157, i32 0, i32 1
  %159 = load i32, i32* @TLS_CONTENT_TYPE_HANDSHAKE, align 4
  %160 = load i32*, i32** %9, align 8
  %161 = load i32*, i32** %7, align 8
  %162 = load i32*, i32** %9, align 8
  %163 = ptrtoint i32* %161 to i64
  %164 = ptrtoint i32* %162 to i64
  %165 = sub i64 %163, %164
  %166 = sdiv exact i64 %165, 4
  %167 = trunc i64 %166 to i32
  %168 = load i32*, i32** %10, align 8
  %169 = load i32*, i32** %8, align 8
  %170 = load i32*, i32** %10, align 8
  %171 = ptrtoint i32* %169 to i64
  %172 = ptrtoint i32* %170 to i64
  %173 = sub i64 %171, %172
  %174 = sdiv exact i64 %173, 4
  %175 = trunc i64 %174 to i32
  %176 = call i64 @tlsv1_record_send(%struct.TYPE_4__* %158, i32 %159, i32* %160, i32 %167, i32* %168, i32 %175, i64* %13)
  %177 = icmp slt i64 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %136
  %179 = load i32, i32* @MSG_DEBUG, align 4
  %180 = call i32 (i32, i8*, ...) @wpa_printf(i32 %179, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %181 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %182 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %183 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %184 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %181, i32 %182, i32 %183)
  store i32 -1, i32* %4, align 4
  br label %202

185:                                              ; preds = %136
  %186 = load i32*, i32** %9, align 8
  %187 = load i64, i64* %13, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  store i32* %188, i32** %8, align 8
  %189 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %190 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %189, i32 0, i32 0
  %191 = load i32*, i32** %10, align 8
  %192 = load i32*, i32** %8, align 8
  %193 = load i32*, i32** %10, align 8
  %194 = ptrtoint i32* %192 to i64
  %195 = ptrtoint i32* %193 to i64
  %196 = sub i64 %194, %195
  %197 = sdiv exact i64 %196, 4
  %198 = trunc i64 %197 to i32
  %199 = call i32 @tls_verify_hash_add(i32* %190, i32* %191, i32 %198)
  %200 = load i32*, i32** %8, align 8
  %201 = load i32**, i32*** %6, align 8
  store i32* %200, i32** %201, align 8
  store i32 0, i32* %4, align 4
  br label %202

202:                                              ; preds = %185, %178, %70, %29
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local %struct.tls_cipher_suite* @tls_get_cipher_suite(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @tlsv1_server_alert(%struct.tlsv1_server*, i32, i32) #1

declare dso_local i32 @WPA_PUT_BE24(i32*, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

declare dso_local i64 @x509_certificate_self_signed(%struct.x509_certificate*) #1

declare dso_local %struct.x509_certificate* @x509_certificate_get_subject(i32, i32*) #1

declare dso_local i64 @tlsv1_record_send(%struct.TYPE_4__*, i32, i32*, i32, i32*, i32, i64*) #1

declare dso_local i32 @tls_verify_hash_add(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
