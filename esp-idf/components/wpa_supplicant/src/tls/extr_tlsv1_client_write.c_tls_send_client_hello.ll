; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client_write.c_tls_send_client_hello.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client_write.c_tls_send_client_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32 }
%struct.os_time = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"TLSv1: Send ClientHello\00", align 1
@TLS_RANDOM_LEN = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"TLSv1: Could not generate client_random\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"TLSv1: client_random\00", align 1
@TLS_RECORD_HEADER_LEN = common dso_local global i32 0, align 4
@TLS_HANDSHAKE_TYPE_CLIENT_HELLO = common dso_local global i32 0, align 4
@TLS_VERSION = common dso_local global i32 0, align 4
@TLS_COMPRESSION_NULL = common dso_local global i32 0, align 4
@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"TLSv1: Failed to create TLS record\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SERVER_HELLO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @tls_send_client_hello(%struct.tlsv1_client* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.tlsv1_client*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.os_time, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %4, align 8
  store i64* %1, i64** %5, align 8
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = call i32 @wpa_printf(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load i64*, i64** %5, align 8
  store i64 0, i64* %17, align 8
  %18 = call i32 @os_get_time(%struct.os_time* %12)
  %19 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %20 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.os_time, %struct.os_time* %12, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @WPA_PUT_BE32(i32 %21, i32 %23)
  %25 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %26 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 4
  %29 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %30 = sub nsw i32 %29, 4
  %31 = call i64 @random_get_bytes(i32 %28, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @MSG_ERROR, align 4
  %35 = call i32 @wpa_printf(i32 %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %220

36:                                               ; preds = %2
  %37 = load i32, i32* @MSG_MSGDUMP, align 4
  %38 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %39 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %42 = call i32 @wpa_hexdump(i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %44 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %45, 2
  %47 = add nsw i32 100, %46
  %48 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %49 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %13, align 8
  %53 = load i64, i64* %13, align 8
  %54 = call i32* @os_malloc(i64 %53)
  store i32* %54, i32** %6, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %36
  store i32* null, i32** %3, align 8
  br label %220

58:                                               ; preds = %36
  %59 = load i32*, i32** %6, align 8
  %60 = load i64, i64* %13, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %7, align 8
  %62 = load i32*, i32** %6, align 8
  store i32* %62, i32** %11, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* @TLS_RECORD_HEADER_LEN, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32* %66, i32** %8, align 8
  %67 = load i32*, i32** %8, align 8
  store i32* %67, i32** %10, align 8
  %68 = load i32, i32* @TLS_HANDSHAKE_TYPE_CLIENT_HELLO, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %8, align 8
  store i32 %68, i32* %69, align 4
  %71 = load i32*, i32** %8, align 8
  store i32* %71, i32** %9, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  store i32* %73, i32** %8, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* @TLS_VERSION, align 4
  %76 = call i32 @WPA_PUT_BE16(i32* %74, i32 %75)
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  store i32* %78, i32** %8, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %81 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %80, i32 0, i32 9
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %84 = call i32 @os_memcpy(i32* %79, i32 %82, i32 %83)
  %85 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %8, align 8
  %89 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %90 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %8, align 8
  store i32 %91, i32* %92, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %96 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %99 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @os_memcpy(i32* %94, i32 %97, i32 %100)
  %102 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %103 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %8, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %110 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = mul nsw i32 2, %111
  %113 = call i32 @WPA_PUT_BE16(i32* %108, i32 %112)
  %114 = load i32*, i32** %8, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  store i32* %115, i32** %8, align 8
  store i64 0, i64* %14, align 8
  br label %116

116:                                              ; preds = %134, %58
  %117 = load i64, i64* %14, align 8
  %118 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %119 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = icmp ult i64 %117, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %116
  %124 = load i32*, i32** %8, align 8
  %125 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %126 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = load i64, i64* %14, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @WPA_PUT_BE16(i32* %124, i32 %130)
  %132 = load i32*, i32** %8, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 2
  store i32* %133, i32** %8, align 8
  br label %134

134:                                              ; preds = %123
  %135 = load i64, i64* %14, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %14, align 8
  br label %116

137:                                              ; preds = %116
  %138 = load i32*, i32** %8, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %8, align 8
  store i32 1, i32* %138, align 4
  %140 = load i32, i32* @TLS_COMPRESSION_NULL, align 4
  %141 = load i32*, i32** %8, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %8, align 8
  store i32 %140, i32* %141, align 4
  %143 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %144 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %137
  %148 = load i32*, i32** %8, align 8
  %149 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %150 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %153 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @os_memcpy(i32* %148, i32 %151, i32 %154)
  %156 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %157 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %8, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  store i32* %161, i32** %8, align 8
  br label %162

162:                                              ; preds = %147, %137
  %163 = load i32*, i32** %9, align 8
  %164 = load i32*, i32** %8, align 8
  %165 = load i32*, i32** %9, align 8
  %166 = ptrtoint i32* %164 to i64
  %167 = ptrtoint i32* %165 to i64
  %168 = sub i64 %166, %167
  %169 = sdiv exact i64 %168, 4
  %170 = sub nsw i64 %169, 3
  %171 = trunc i64 %170 to i32
  %172 = call i32 @WPA_PUT_BE24(i32* %163, i32 %171)
  %173 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %174 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %173, i32 0, i32 6
  %175 = load i32*, i32** %10, align 8
  %176 = load i32*, i32** %8, align 8
  %177 = load i32*, i32** %10, align 8
  %178 = ptrtoint i32* %176 to i64
  %179 = ptrtoint i32* %177 to i64
  %180 = sub i64 %178, %179
  %181 = sdiv exact i64 %180, 4
  %182 = trunc i64 %181 to i32
  %183 = call i32 @tls_verify_hash_add(i32* %174, i32* %175, i32 %182)
  %184 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %185 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %184, i32 0, i32 5
  %186 = load i32, i32* @TLS_CONTENT_TYPE_HANDSHAKE, align 4
  %187 = load i32*, i32** %11, align 8
  %188 = load i32*, i32** %7, align 8
  %189 = load i32*, i32** %11, align 8
  %190 = ptrtoint i32* %188 to i64
  %191 = ptrtoint i32* %189 to i64
  %192 = sub i64 %190, %191
  %193 = sdiv exact i64 %192, 4
  %194 = trunc i64 %193 to i32
  %195 = load i32*, i32** %10, align 8
  %196 = load i32*, i32** %8, align 8
  %197 = load i32*, i32** %10, align 8
  %198 = ptrtoint i32* %196 to i64
  %199 = ptrtoint i32* %197 to i64
  %200 = sub i64 %198, %199
  %201 = sdiv exact i64 %200, 4
  %202 = trunc i64 %201 to i32
  %203 = load i64*, i64** %5, align 8
  %204 = call i64 @tlsv1_record_send(i32* %185, i32 %186, i32* %187, i32 %194, i32* %195, i32 %202, i64* %203)
  %205 = icmp slt i64 %204, 0
  br i1 %205, label %206, label %215

206:                                              ; preds = %162
  %207 = load i32, i32* @MSG_DEBUG, align 4
  %208 = call i32 @wpa_printf(i32 %207, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %209 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %210 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %211 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %212 = call i32 @tls_alert(%struct.tlsv1_client* %209, i32 %210, i32 %211)
  %213 = load i32*, i32** %6, align 8
  %214 = call i32 @os_free(i32* %213)
  store i32* null, i32** %3, align 8
  br label %220

215:                                              ; preds = %162
  %216 = load i32, i32* @SERVER_HELLO, align 4
  %217 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %218 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %217, i32 0, i32 4
  store i32 %216, i32* %218, align 8
  %219 = load i32*, i32** %6, align 8
  store i32* %219, i32** %3, align 8
  br label %220

220:                                              ; preds = %215, %206, %57, %33
  %221 = load i32*, i32** %3, align 8
  ret i32* %221
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_get_time(%struct.os_time*) #1

declare dso_local i32 @WPA_PUT_BE32(i32, i32) #1

declare dso_local i64 @random_get_bytes(i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @WPA_PUT_BE16(i32*, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

declare dso_local i32 @WPA_PUT_BE24(i32*, i32) #1

declare dso_local i32 @tls_verify_hash_add(i32*, i32*, i32) #1

declare dso_local i64 @tlsv1_record_send(i32*, i32, i32*, i32, i32*, i32, i64*) #1

declare dso_local i32 @tls_alert(%struct.tlsv1_client*, i32, i32) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
