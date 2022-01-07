; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_srv.c_ssl_write_certificate_request.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_srv.c_ssl_write_certificate_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i64, i32, i32, %struct.TYPE_13__*, %struct.TYPE_12__*, i32, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32, i32*, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_15__*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_11__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }

@MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE = common dso_local global i32 0, align 4
@MBEDTLS_SSL_MAX_CONTENT_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"=> write certificate request\00", align 1
@MBEDTLS_KEY_EXCHANGE_PSK = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_RSA_PSK = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_DHE_PSK = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_ECDHE_PSK = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_ECJPAKE = common dso_local global i64 0, align 8
@MBEDTLS_SSL_VERIFY_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"<= skip write certificate request\00", align 1
@MBEDTLS_SSL_CERT_REQ_CA_LIST_ENABLED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"skipping CAs: buffer too short\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"requested DN\00", align 1
@MBEDTLS_SSL_MSG_HANDSHAKE = common dso_local global i32 0, align 4
@MBEDTLS_SSL_HS_CERTIFICATE_REQUEST = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"<= write certificate request\00", align 1
@MBEDTLS_MD_NONE = common dso_local global i32 0, align 4
@MBEDTLS_SSL_CERT_TYPE_ECDSA_SIGN = common dso_local global i8 0, align 1
@MBEDTLS_SSL_CERT_TYPE_RSA_SIGN = common dso_local global i8 0, align 1
@MBEDTLS_SSL_HASH_NONE = common dso_local global i8 0, align 1
@MBEDTLS_SSL_MINOR_VERSION_3 = common dso_local global i64 0, align 8
@MBEDTLS_SSL_SIG_ECDSA = common dso_local global i8 0, align 1
@MBEDTLS_SSL_SIG_RSA = common dso_local global i8 0, align 1
@MBEDTLS_SSL_VERIFY_UNSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @ssl_write_certificate_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write_certificate_request(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %15 = load i32, i32* @MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 7
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %5, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* @MBEDTLS_SSL_MAX_CONTENT_LEN, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8* %26, i8** %12, align 8
  %27 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %14, align 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MBEDTLS_KEY_EXCHANGE_PSK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %70, label %42

42:                                               ; preds = %1
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MBEDTLS_KEY_EXCHANGE_RSA_PSK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %70, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MBEDTLS_KEY_EXCHANGE_DHE_PSK, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %70, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MBEDTLS_KEY_EXCHANGE_ECDHE_PSK, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %70, label %60

60:                                               ; preds = %54
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MBEDTLS_KEY_EXCHANGE_ECJPAKE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @MBEDTLS_SSL_VERIFY_NONE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66, %60, %54, %48, %42, %1
  %71 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %214

72:                                               ; preds = %66
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %10, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 4
  store i8* %77, i8** %11, align 8
  store i64 0, i64* %8, align 8
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %8, align 8
  %80 = trunc i64 %78 to i8
  %81 = load i8*, i8** %11, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  store i8 %80, i8* %82, align 1
  %83 = load i64, i64* %8, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 %83
  store i8* %85, i8** %11, align 8
  store i64 0, i64* %9, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  store i8* %87, i8** %11, align 8
  store i64 0, i64* %7, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @MBEDTLS_SSL_CERT_REQ_CA_LIST_ENABLED, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %172

95:                                               ; preds = %72
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  store %struct.TYPE_15__* %100, %struct.TYPE_15__** %13, align 8
  br label %101

101:                                              ; preds = %138, %95
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %103 = icmp ne %struct.TYPE_15__* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br label %109

109:                                              ; preds = %104, %101
  %110 = phi i1 [ false, %101 ], [ %108, %104 ]
  br i1 %110, label %111, label %171

111:                                              ; preds = %109
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %6, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = icmp ult i8* %116, %117
  br i1 %118, label %136, label %119

119:                                              ; preds = %111
  %120 = load i8*, i8** %12, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = ptrtoint i8* %120 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = load i64, i64* %6, align 8
  %126 = icmp ult i64 %124, %125
  br i1 %126, label %136, label %127

127:                                              ; preds = %119
  %128 = load i8*, i8** %12, align 8
  %129 = load i8*, i8** %11, align 8
  %130 = ptrtoint i8* %128 to i64
  %131 = ptrtoint i8* %129 to i64
  %132 = sub i64 %130, %131
  %133 = load i64, i64* %6, align 8
  %134 = add i64 2, %133
  %135 = icmp ult i64 %132, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %127, %119, %111
  %137 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %171

138:                                              ; preds = %127
  %139 = load i64, i64* %6, align 8
  %140 = lshr i64 %139, 8
  %141 = trunc i64 %140 to i8
  %142 = load i8*, i8** %11, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %11, align 8
  store i8 %141, i8* %142, align 1
  %144 = load i64, i64* %6, align 8
  %145 = trunc i64 %144 to i8
  %146 = load i8*, i8** %11, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %11, align 8
  store i8 %145, i8* %146, align 1
  %148 = load i8*, i8** %11, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i64, i64* %6, align 8
  %154 = call i32 @memcpy(i8* %148, i32 %152, i64 %153)
  %155 = load i64, i64* %6, align 8
  %156 = load i8*, i8** %11, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 %155
  store i8* %157, i8** %11, align 8
  %158 = load i8*, i8** %11, align 8
  %159 = load i64, i64* %6, align 8
  %160 = sub i64 0, %159
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = load i64, i64* %6, align 8
  %163 = call i32 @MBEDTLS_SSL_DEBUG_BUF(i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %161, i64 %162)
  %164 = load i64, i64* %6, align 8
  %165 = add i64 2, %164
  %166 = load i64, i64* %7, align 8
  %167 = add i64 %166, %165
  store i64 %167, i64* %7, align 8
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %169, align 8
  store %struct.TYPE_15__* %170, %struct.TYPE_15__** %13, align 8
  br label %101

171:                                              ; preds = %136, %109
  br label %172

172:                                              ; preds = %171, %72
  %173 = load i8*, i8** %11, align 8
  %174 = load i8*, i8** %10, align 8
  %175 = ptrtoint i8* %173 to i64
  %176 = ptrtoint i8* %174 to i64
  %177 = sub i64 %175, %176
  %178 = trunc i64 %177 to i32
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  %181 = load i32, i32* @MBEDTLS_SSL_MSG_HANDSHAKE, align 4
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 4
  %184 = load i8, i8* @MBEDTLS_SSL_HS_CERTIFICATE_REQUEST, align 1
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 0
  store i8 %184, i8* %188, align 1
  %189 = load i64, i64* %7, align 8
  %190 = lshr i64 %189, 8
  %191 = trunc i64 %190 to i8
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = load i64, i64* %8, align 8
  %196 = add i64 4, %195
  %197 = load i64, i64* %9, align 8
  %198 = add i64 %196, %197
  %199 = getelementptr inbounds i8, i8* %194, i64 %198
  store i8 %191, i8* %199, align 1
  %200 = load i64, i64* %7, align 8
  %201 = trunc i64 %200 to i8
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = load i64, i64* %8, align 8
  %206 = add i64 5, %205
  %207 = load i64, i64* %9, align 8
  %208 = add i64 %206, %207
  %209 = getelementptr inbounds i8, i8* %204, i64 %208
  store i8 %201, i8* %209, align 1
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %211 = call i32 @mbedtls_ssl_write_record(%struct.TYPE_16__* %210)
  store i32 %211, i32* %4, align 4
  %212 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %213 = load i32, i32* %4, align 4
  store i32 %213, i32* %2, align 4
  br label %214

214:                                              ; preds = %172, %70
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_BUF(i32, i8*, i8*, i64) #1

declare dso_local i32 @mbedtls_ssl_write_record(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
