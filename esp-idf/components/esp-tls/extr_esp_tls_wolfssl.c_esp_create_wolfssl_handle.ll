; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls_wolfssl.c_esp_create_wolfssl_handle.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls_wolfssl.c_esp_create_wolfssl_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i32, i8* }
%struct.TYPE_6__ = type { i32, i32*, i32*, i32, i32, i64, i32, i32*, i64 }

@WOLFSSL_SUCCESS = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Init wolfSSL failed: %d\00", align 1
@ERR_TYPE_WOLFSSL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Set wolfSSL ctx failed\00", align 1
@global_cacert = common dso_local global i32* null, align 8
@global_cacert_pem_bytes = common dso_local global i32 0, align 4
@WOLFSSL_FILETYPE_PEM = common dso_local global i32 0, align 4
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"psk_hint_key not supported in wolfssl\00", align 1
@SSL_VERIFY_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [94 x i8] c"You have to provide both clientcert_pem_buf and clientkey_pem_buf for mutual authentication\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Create wolfSSL failed\00", align 1
@WOLFSSL_ALPN_FAILED_ON_MISMATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_create_wolfssl_handle(i8* %0, i64 %1, i8* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %10, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = call i32 (...) @wolfSSL_Init()
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @WOLFSSL_SUCCESS, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %4
  %27 = load i32, i32* @TAG, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ERR_TYPE_WOLFSSL, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sub nsw i32 0, %34
  %36 = call i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32 %32, i32 %33, i32 %35)
  br label %199

37:                                               ; preds = %4
  %38 = call i32 (...) @wolfTLSv1_2_client_method()
  %39 = call i64 @wolfSSL_CTX_new(i32 %38)
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %57, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* @TAG, align 4
  %49 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ERR_TYPE_WOLFSSL, align 4
  %54 = load i32, i32* %11, align 4
  %55 = sub nsw i32 0, %54
  %56 = call i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32 %52, i32 %53, i32 %55)
  br label %199

57:                                               ; preds = %37
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %77

62:                                               ; preds = %57
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = load i8*, i8** %64, align 8
  %66 = bitcast i8* %65 to i32*
  %67 = load i32*, i32** @global_cacert, align 8
  %68 = load i32, i32* @global_cacert_pem_bytes, align 4
  %69 = load i32, i32* @WOLFSSL_FILETYPE_PEM, align 4
  %70 = call i32 @wolfSSL_CTX_load_verify_buffer(i32* %66, i32* %67, i32 %68, i32 %69)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = bitcast i8* %73 to i32*
  %75 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %76 = call i32 @wolfSSL_CTX_set_verify(i32* %74, i32 %75, i32* null)
  br label %118

77:                                               ; preds = %57
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 7
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %101

82:                                               ; preds = %77
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  %85 = load i8*, i8** %84, align 8
  %86 = bitcast i8* %85 to i32*
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 7
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @WOLFSSL_FILETYPE_PEM, align 4
  %94 = call i32 @wolfSSL_CTX_load_verify_buffer(i32* %86, i32* %89, i32 %92, i32 %93)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 3
  %97 = load i8*, i8** %96, align 8
  %98 = bitcast i8* %97 to i32*
  %99 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %100 = call i32 @wolfSSL_CTX_set_verify(i32* %98, i32 %99, i32* null)
  br label %117

101:                                              ; preds = %77
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32, i32* @TAG, align 4
  %108 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %107, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %199

109:                                              ; preds = %101
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  %113 = bitcast i8* %112 to i32*
  %114 = load i32, i32* @SSL_VERIFY_NONE, align 4
  %115 = call i32 @wolfSSL_CTX_set_verify(i32* %113, i32 %114, i32* null)
  br label %116

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %116, %82
  br label %118

118:                                              ; preds = %117, %62
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %153

123:                                              ; preds = %118
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %153

128:                                              ; preds = %123
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 3
  %131 = load i8*, i8** %130, align 8
  %132 = bitcast i8* %131 to i32*
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @WOLFSSL_FILETYPE_PEM, align 4
  %140 = call i32 @wolfSSL_CTX_use_certificate_buffer(i32* %132, i32* %135, i32 %138, i32 %139)
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 3
  %143 = load i8*, i8** %142, align 8
  %144 = bitcast i8* %143 to i32*
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @WOLFSSL_FILETYPE_PEM, align 4
  %152 = call i32 @wolfSSL_CTX_use_PrivateKey_buffer(i32* %144, i32* %147, i32 %150, i32 %151)
  br label %167

153:                                              ; preds = %123, %118
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %158, %153
  %164 = load i32, i32* @TAG, align 4
  %165 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %164, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.3, i64 0, i64 0))
  br label %199

166:                                              ; preds = %158
  br label %167

167:                                              ; preds = %166, %128
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 3
  %170 = load i8*, i8** %169, align 8
  %171 = bitcast i8* %170 to i32*
  %172 = call i64 @wolfSSL_new(i32* %171)
  %173 = inttoptr i64 %172 to i8*
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  store i8* %173, i8** %175, align 8
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %190, label %180

180:                                              ; preds = %167
  %181 = load i32, i32* @TAG, align 4
  %182 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %181, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @ERR_TYPE_WOLFSSL, align 4
  %187 = load i32, i32* %11, align 4
  %188 = sub nsw i32 0, %187
  %189 = call i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32 %185, i32 %186, i32 %188)
  br label %199

190:                                              ; preds = %167
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = bitcast i8* %193 to i32*
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @wolfSSL_set_fd(i32* %194, i32 %197)
  store i32 0, i32* %5, align 4
  br label %203

199:                                              ; preds = %180, %163, %106, %47, %26
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %201 = call i32 @esp_wolfssl_cleanup(%struct.TYPE_5__* %200)
  %202 = load i32, i32* %11, align 4
  store i32 %202, i32* %5, align 4
  br label %203

203:                                              ; preds = %199, %190
  %204 = load i32, i32* %5, align 4
  ret i32 %204
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @wolfSSL_Init(...) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @ESP_INT_EVENT_TRACKER_CAPTURE(i32, i32, i32) #1

declare dso_local i64 @wolfSSL_CTX_new(i32) #1

declare dso_local i32 @wolfTLSv1_2_client_method(...) #1

declare dso_local i32 @wolfSSL_CTX_load_verify_buffer(i32*, i32*, i32, i32) #1

declare dso_local i32 @wolfSSL_CTX_set_verify(i32*, i32, i32*) #1

declare dso_local i32 @wolfSSL_CTX_use_certificate_buffer(i32*, i32*, i32, i32) #1

declare dso_local i32 @wolfSSL_CTX_use_PrivateKey_buffer(i32*, i32*, i32, i32) #1

declare dso_local i64 @wolfSSL_new(i32*) #1

declare dso_local i32 @wolfSSL_set_fd(i32*, i32) #1

declare dso_local i32 @esp_wolfssl_cleanup(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
