; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cli.c_ssl_write_client_key_exchange.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cli.c_ssl_write_client_key_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i8*, i64, i32, i32, %struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i64, i32, i32, i32*, i32* }
%struct.TYPE_19__ = type { i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_16__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"=> write client key exchange\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"should never happen\00", align 1
@MBEDTLS_ERR_SSL_INTERNAL_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_PRIVATE_KEY_REQUIRED = common dso_local global i32 0, align 4
@MBEDTLS_KEY_EXCHANGE_DHE_PSK = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_DHE_RSA = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_ECDHE_PSK = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_ECDHE_RSA = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_ECDH_ECDSA = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_ECDH_RSA = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_ECJPAKE = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_PSK = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_RSA = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_RSA_PSK = common dso_local global i64 0, align 8
@MBEDTLS_MPI_MAX_SIZE = common dso_local global i32 0, align 4
@MBEDTLS_PREMASTER_SIZE = common dso_local global i32 0, align 4
@MBEDTLS_SSL_HS_CLIENT_KEY_EXCHANGE = common dso_local global i8 0, align 1
@MBEDTLS_SSL_MAX_CONTENT_LEN = common dso_local global i64 0, align 8
@MBEDTLS_SSL_MSG_HANDSHAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @ssl_write_client_key_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write_client_key_exchange(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 6
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_21__* %11, %struct.TYPE_21__** %6, align 8
  %12 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %14 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @MBEDTLS_ERR_SSL_INTERNAL_ERROR, align 4
  ret i32 %15
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
