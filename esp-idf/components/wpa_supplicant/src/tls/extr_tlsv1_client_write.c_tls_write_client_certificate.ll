; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client_write.c_tls_write_client_certificate.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client_write.c_tls_write_client_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.x509_certificate*, i32 }
%struct.x509_certificate = type { i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"TLSv1: Send Certificate\00", align 1
@TLS_RECORD_HEADER_LEN = common dso_local global i32 0, align 4
@TLS_HANDSHAKE_TYPE_CERTIFICATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"TLSv1: Not enough buffer space for Certificate (cert_len=%lu left=%lu)\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [74 x i8] c"TLSv1: Full client certificate chain not configured - validation may fail\00", align 1
@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"TLSv1: Failed to generate a record\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_client*, i32**, i32*)* @tls_write_client_certificate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_write_client_certificate(%struct.tlsv1_client* %0, i32** %1, i32* %2) #0 {
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
  %14 = alloca %struct.x509_certificate*, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32**, i32*** %6, align 8
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %8, align 8
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = call i32 (i32, i8*, ...) @wpa_printf(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %8, align 8
  store i32* %19, i32** %9, align 8
  %20 = load i32, i32* @TLS_RECORD_HEADER_LEN, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  store i32* %24, i32** %10, align 8
  %25 = load i32, i32* @TLS_HANDSHAKE_TYPE_CERTIFICATE, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  %28 = load i32*, i32** %8, align 8
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  store i32* %31, i32** %12, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  store i32* %33, i32** %8, align 8
  %34 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %35 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = icmp ne %struct.TYPE_2__* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %3
  %39 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %40 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.x509_certificate*, %struct.x509_certificate** %42, align 8
  br label %45

44:                                               ; preds = %3
  br label %45

45:                                               ; preds = %44, %38
  %46 = phi %struct.x509_certificate* [ %43, %38 ], [ null, %44 ]
  store %struct.x509_certificate* %46, %struct.x509_certificate** %14, align 8
  br label %47

47:                                               ; preds = %103, %45
  %48 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %49 = icmp ne %struct.x509_certificate* %48, null
  br i1 %49, label %50, label %112

50:                                               ; preds = %47
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  %53 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %54 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32*, i32** %7, align 8
  %59 = icmp ugt i32* %57, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %50
  %61 = load i32, i32* @MSG_DEBUG, align 4
  %62 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %63 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = load i32*, i32** %7, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = ptrtoint i32* %66 to i64
  %69 = ptrtoint i32* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv exact i64 %70, 4
  %72 = call i32 (i32, i8*, ...) @wpa_printf(i32 %61, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i64 %65, i64 %71)
  %73 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %74 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %75 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %76 = call i32 @tls_alert(%struct.tlsv1_client* %73, i32 %74, i32 %75)
  store i32 -1, i32* %4, align 4
  br label %197

77:                                               ; preds = %50
  %78 = load i32*, i32** %8, align 8
  %79 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %80 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @WPA_PUT_BE24(i32* %78, i32 %81)
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  store i32* %84, i32** %8, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %87 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %90 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @os_memcpy(i32* %85, i32 %88, i32 %91)
  %93 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %94 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %8, align 8
  %99 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %100 = call i64 @x509_certificate_self_signed(%struct.x509_certificate* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %77
  br label %112

103:                                              ; preds = %77
  %104 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %105 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %104, i32 0, i32 2
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %110 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %109, i32 0, i32 1
  %111 = call %struct.x509_certificate* @x509_certificate_get_subject(i32 %108, i32* %110)
  store %struct.x509_certificate* %111, %struct.x509_certificate** %14, align 8
  br label %47

112:                                              ; preds = %102, %47
  %113 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %114 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %113, i32 0, i32 2
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = icmp eq %struct.TYPE_2__* %115, null
  br i1 %116, label %128, label %117

117:                                              ; preds = %112
  %118 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %119 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %120 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %119, i32 0, i32 2
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load %struct.x509_certificate*, %struct.x509_certificate** %122, align 8
  %124 = icmp eq %struct.x509_certificate* %118, %123
  br i1 %124, label %128, label %125

125:                                              ; preds = %117
  %126 = load %struct.x509_certificate*, %struct.x509_certificate** %14, align 8
  %127 = icmp eq %struct.x509_certificate* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %125, %117, %112
  %129 = load i32, i32* @MSG_DEBUG, align 4
  %130 = call i32 (i32, i8*, ...) @wpa_printf(i32 %129, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i32*, i32** %12, align 8
  %133 = load i32*, i32** %8, align 8
  %134 = load i32*, i32** %12, align 8
  %135 = ptrtoint i32* %133 to i64
  %136 = ptrtoint i32* %134 to i64
  %137 = sub i64 %135, %136
  %138 = sdiv exact i64 %137, 4
  %139 = sub nsw i64 %138, 3
  %140 = trunc i64 %139 to i32
  %141 = call i32 @WPA_PUT_BE24(i32* %132, i32 %140)
  %142 = load i32*, i32** %11, align 8
  %143 = load i32*, i32** %8, align 8
  %144 = load i32*, i32** %11, align 8
  %145 = ptrtoint i32* %143 to i64
  %146 = ptrtoint i32* %144 to i64
  %147 = sub i64 %145, %146
  %148 = sdiv exact i64 %147, 4
  %149 = sub nsw i64 %148, 3
  %150 = trunc i64 %149 to i32
  %151 = call i32 @WPA_PUT_BE24(i32* %142, i32 %150)
  %152 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %153 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %152, i32 0, i32 1
  %154 = load i32, i32* @TLS_CONTENT_TYPE_HANDSHAKE, align 4
  %155 = load i32*, i32** %9, align 8
  %156 = load i32*, i32** %7, align 8
  %157 = load i32*, i32** %9, align 8
  %158 = ptrtoint i32* %156 to i64
  %159 = ptrtoint i32* %157 to i64
  %160 = sub i64 %158, %159
  %161 = sdiv exact i64 %160, 4
  %162 = trunc i64 %161 to i32
  %163 = load i32*, i32** %10, align 8
  %164 = load i32*, i32** %8, align 8
  %165 = load i32*, i32** %10, align 8
  %166 = ptrtoint i32* %164 to i64
  %167 = ptrtoint i32* %165 to i64
  %168 = sub i64 %166, %167
  %169 = sdiv exact i64 %168, 4
  %170 = trunc i64 %169 to i32
  %171 = call i64 @tlsv1_record_send(i32* %153, i32 %154, i32* %155, i32 %162, i32* %163, i32 %170, i64* %13)
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %131
  %174 = load i32, i32* @MSG_DEBUG, align 4
  %175 = call i32 (i32, i8*, ...) @wpa_printf(i32 %174, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %176 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %177 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %178 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %179 = call i32 @tls_alert(%struct.tlsv1_client* %176, i32 %177, i32 %178)
  store i32 -1, i32* %4, align 4
  br label %197

180:                                              ; preds = %131
  %181 = load i32*, i32** %9, align 8
  %182 = load i64, i64* %13, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  store i32* %183, i32** %8, align 8
  %184 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %185 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %184, i32 0, i32 0
  %186 = load i32*, i32** %10, align 8
  %187 = load i32*, i32** %8, align 8
  %188 = load i32*, i32** %10, align 8
  %189 = ptrtoint i32* %187 to i64
  %190 = ptrtoint i32* %188 to i64
  %191 = sub i64 %189, %190
  %192 = sdiv exact i64 %191, 4
  %193 = trunc i64 %192 to i32
  %194 = call i32 @tls_verify_hash_add(i32* %185, i32* %186, i32 %193)
  %195 = load i32*, i32** %8, align 8
  %196 = load i32**, i32*** %6, align 8
  store i32* %195, i32** %196, align 8
  store i32 0, i32* %4, align 4
  br label %197

197:                                              ; preds = %180, %173, %60
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @tls_alert(%struct.tlsv1_client*, i32, i32) #1

declare dso_local i32 @WPA_PUT_BE24(i32*, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

declare dso_local i64 @x509_certificate_self_signed(%struct.x509_certificate*) #1

declare dso_local %struct.x509_certificate* @x509_certificate_get_subject(i32, i32*) #1

declare dso_local i64 @tlsv1_record_send(i32*, i32, i32*, i32, i32*, i32, i64*) #1

declare dso_local i32 @tls_verify_hash_add(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
