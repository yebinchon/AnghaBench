; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_mbedtls_ssl_write_certificate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_mbedtls_ssl_write_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i32, i8*, i32, i32, %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_15__*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32 }

@MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"=> write certificate\00", align 1
@MBEDTLS_KEY_EXCHANGE_PSK = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_DHE_PSK = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_ECDHE_PSK = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_ECJPAKE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"<= skip write certificate\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"own certificate\00", align 1
@MBEDTLS_SSL_MAX_CONTENT_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"certificate too large, %d > %d\00", align 1
@MBEDTLS_ERR_SSL_CERTIFICATE_TOO_LARGE = common dso_local global i32 0, align 4
@MBEDTLS_SSL_MSG_HANDSHAKE = common dso_local global i32 0, align 4
@MBEDTLS_SSL_HS_CERTIFICATE = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"mbedtls_ssl_write_record\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"<= write certificate\00", align 1
@MBEDTLS_ERR_SSL_CERTIFICATE_REQUIRED = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_LEVEL_WARNING = common dso_local global i8 0, align 1
@MBEDTLS_SSL_ALERT_MSG_NO_CERT = common dso_local global i8 0, align 1
@MBEDTLS_SSL_IS_CLIENT = common dso_local global i64 0, align 8
@MBEDTLS_SSL_IS_SERVER = common dso_local global i64 0, align 8
@MBEDTLS_SSL_MINOR_VERSION_0 = common dso_local global i64 0, align 8
@MBEDTLS_SSL_MSG_ALERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_write_certificate(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %9 = load i32, i32* @MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 7
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %8, align 8
  %15 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MBEDTLS_KEY_EXCHANGE_PSK, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %39, label %21

21:                                               ; preds = %1
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MBEDTLS_KEY_EXCHANGE_DHE_PSK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MBEDTLS_KEY_EXCHANGE_ECDHE_PSK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MBEDTLS_KEY_EXCHANGE_ECJPAKE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33, %27, %21, %1
  %40 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  store i32 0, i32* %2, align 4
  br label %171

45:                                               ; preds = %33
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %47 = call %struct.TYPE_15__* @mbedtls_ssl_own_cert(%struct.TYPE_16__* %46)
  %48 = call i32 @MBEDTLS_SSL_DEBUG_CRT(i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_15__* %47)
  store i64 7, i64* %5, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = call %struct.TYPE_15__* @mbedtls_ssl_own_cert(%struct.TYPE_16__* %49)
  store %struct.TYPE_15__* %50, %struct.TYPE_15__** %7, align 8
  br label %51

51:                                               ; preds = %76, %45
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %53 = icmp ne %struct.TYPE_15__* %52, null
  br i1 %53, label %54, label %121

54:                                               ; preds = %51
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i32, i32* @MBEDTLS_SSL_MAX_CONTENT_LEN, align 4
  %61 = sub nsw i32 %60, 3
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %5, align 8
  %64 = sub i64 %62, %63
  %65 = icmp ugt i64 %59, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %54
  %67 = load i64, i64* %5, align 8
  %68 = add i64 %67, 3
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %68, %69
  %71 = load i32, i32* @MBEDTLS_SSL_MAX_CONTENT_LEN, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* %73)
  %75 = load i32, i32* @MBEDTLS_ERR_SSL_CERTIFICATE_TOO_LARGE, align 4
  store i32 %75, i32* %2, align 4
  br label %171

76:                                               ; preds = %54
  %77 = load i64, i64* %6, align 8
  %78 = lshr i64 %77, 16
  %79 = trunc i64 %78 to i8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 3
  %82 = load i8*, i8** %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8 %79, i8* %84, align 1
  %85 = load i64, i64* %6, align 8
  %86 = lshr i64 %85, 8
  %87 = trunc i64 %86 to i8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 3
  %90 = load i8*, i8** %89, align 8
  %91 = load i64, i64* %5, align 8
  %92 = add i64 %91, 1
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  store i8 %87, i8* %93, align 1
  %94 = load i64, i64* %6, align 8
  %95 = trunc i64 %94 to i8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 3
  %98 = load i8*, i8** %97, align 8
  %99 = load i64, i64* %5, align 8
  %100 = add i64 %99, 2
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  store i8 %95, i8* %101, align 1
  %102 = load i64, i64* %5, align 8
  %103 = add i64 %102, 3
  store i64 %103, i64* %5, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 3
  %106 = load i8*, i8** %105, align 8
  %107 = load i64, i64* %5, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i64, i64* %6, align 8
  %114 = call i32 @memcpy(i8* %108, i32 %112, i64 %113)
  %115 = load i64, i64* %6, align 8
  %116 = load i64, i64* %5, align 8
  %117 = add i64 %116, %115
  store i64 %117, i64* %5, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  store %struct.TYPE_15__* %120, %struct.TYPE_15__** %7, align 8
  br label %51

121:                                              ; preds = %51
  %122 = load i64, i64* %5, align 8
  %123 = sub i64 %122, 7
  %124 = lshr i64 %123, 16
  %125 = trunc i64 %124 to i8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 3
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 4
  store i8 %125, i8* %129, align 1
  %130 = load i64, i64* %5, align 8
  %131 = sub i64 %130, 7
  %132 = lshr i64 %131, 8
  %133 = trunc i64 %132 to i8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 3
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 5
  store i8 %133, i8* %137, align 1
  %138 = load i64, i64* %5, align 8
  %139 = sub i64 %138, 7
  %140 = trunc i64 %139 to i8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 3
  %143 = load i8*, i8** %142, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 6
  store i8 %140, i8* %144, align 1
  %145 = load i64, i64* %5, align 8
  %146 = trunc i64 %145 to i32
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* @MBEDTLS_SSL_MSG_HANDSHAKE, align 4
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 5
  store i32 %149, i32* %151, align 4
  %152 = load i8, i8* @MBEDTLS_SSL_HS_CERTIFICATE, align 1
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 3
  %155 = load i8*, i8** %154, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 0
  store i8 %152, i8* %156, align 1
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 8
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %162 = call i32 @mbedtls_ssl_write_record(%struct.TYPE_16__* %161)
  store i32 %162, i32* %4, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %121
  %165 = load i32, i32* %4, align 4
  %166 = call i32 @MBEDTLS_SSL_DEBUG_RET(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* %4, align 4
  store i32 %167, i32* %2, align 4
  br label %171

168:                                              ; preds = %121
  %169 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %170 = load i32, i32* %4, align 4
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %168, %164, %66, %39
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_CRT(i32, i8*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @mbedtls_ssl_own_cert(%struct.TYPE_16__*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @mbedtls_ssl_write_record(%struct.TYPE_16__*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_RET(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
