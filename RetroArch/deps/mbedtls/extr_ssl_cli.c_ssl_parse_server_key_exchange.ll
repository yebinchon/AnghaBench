; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cli.c_ssl_parse_server_key_exchange.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cli.c_ssl_parse_server_key_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i64*, i32, i32, i64, i32, %struct.TYPE_19__*, %struct.TYPE_21__*, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i8*, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"=> parse server key exchange\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"mbedtls_ssl_read_record\00", align 1
@MBEDTLS_SSL_MSG_HANDSHAKE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"bad server key exchange message\00", align 1
@MBEDTLS_SSL_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_MSG_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@MBEDTLS_SSL_HS_SERVER_KEY_EXCHANGE = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_PSK = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_RSA_PSK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"server key exchange message must not be skipped\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"server key exchange\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"should never happen\00", align 1
@MBEDTLS_ERR_SSL_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"<= parse server key exchange\00", align 1
@MBEDTLS_ERR_SSL_BAD_HS_SERVER_KEY_EXCHANGE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_PK_TYPE_MISMATCH = common dso_local global i32 0, align 4
@MBEDTLS_KEY_EXCHANGE_DHE_PSK = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_DHE_RSA = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_ECDHE_PSK = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_ECDHE_RSA = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_ECDH_RSA = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_ECJPAKE = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_RSA = common dso_local global i64 0, align 8
@MBEDTLS_MD_NONE = common dso_local global i64 0, align 8
@MBEDTLS_MD_SHA1 = common dso_local global i64 0, align 8
@MBEDTLS_PK_ECDSA = common dso_local global i64 0, align 8
@MBEDTLS_PK_NONE = common dso_local global i64 0, align 8
@MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_MSG_DECRYPT_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_MSG_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_MSG_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_MSG_INTERNAL_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_SSL_MINOR_VERSION_3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*)* @ssl_parse_server_key_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_server_key_exchange(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  store %struct.TYPE_23__* %12, %struct.TYPE_23__** %5, align 8
  %13 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %15 = call i32 @mbedtls_ssl_read_record(%struct.TYPE_22__* %14)
  store i32 %15, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @MBEDTLS_SSL_DEBUG_RET(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %97

21:                                               ; preds = %1
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MBEDTLS_SSL_MSG_HANDSHAKE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %30 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %31 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_UNEXPECTED_MESSAGE, align 4
  %32 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_22__* %29, i32 %30, i32 %31)
  %33 = load i32, i32* @MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE, align 4
  store i32 %33, i32* %2, align 4
  br label %97

34:                                               ; preds = %21
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MBEDTLS_SSL_HS_SERVER_KEY_EXCHANGE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %34
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MBEDTLS_KEY_EXCHANGE_PSK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MBEDTLS_KEY_EXCHANGE_RSA_PSK, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48, %42
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 2
  store i32 1, i32* %56, align 8
  br label %91

57:                                               ; preds = %48
  %58 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %60 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %61 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_UNEXPECTED_MESSAGE, align 4
  %62 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_22__* %59, i32 %60, i32 %61)
  %63 = load i32, i32* @MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE, align 4
  store i32 %63, i32* %2, align 4
  br label %97

64:                                               ; preds = %34
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %69 = call i32 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_22__* %68)
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %67, i64 %70
  %72 = bitcast i64* %71 to i8*
  store i8* %72, i8** %6, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %75, i64 %79
  %81 = bitcast i64* %80 to i8*
  store i8* %81, i8** %7, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = call i32 @MBEDTLS_SSL_DEBUG_BUF(i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %82, i64 %87)
  %89 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %90 = load i32, i32* @MBEDTLS_ERR_SSL_INTERNAL_ERROR, align 4
  store i32 %90, i32* %2, align 4
  br label %97

91:                                               ; preds = %54
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %91, %64, %57, %27, %17
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @mbedtls_ssl_read_record(%struct.TYPE_22__*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_RET(i32, i8*, i32) #1

declare dso_local i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_22__*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_BUF(i32, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
