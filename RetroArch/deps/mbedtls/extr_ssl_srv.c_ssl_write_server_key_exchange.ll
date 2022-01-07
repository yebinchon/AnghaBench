; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_srv.c_ssl_write_server_key_exchange.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_srv.c_ssl_write_server_key_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i8*, i64, i32, i32, i32, %struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_23__* }
%struct.TYPE_25__ = type { i64*, i32, i32, %struct.TYPE_20__, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_24__ = type { i8*, i32, %struct.TYPE_21__, %struct.TYPE_28__**, %struct.TYPE_22__, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_28__ = type { i64, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"=> write server key exchange\00", align 1
@MBEDTLS_SSL_MSG_HANDSHAKE = common dso_local global i32 0, align 4
@MBEDTLS_SSL_HS_SERVER_KEY_EXCHANGE = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"mbedtls_ssl_write_record\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"<= write server key exchange\00", align 1
@MBEDTLS_ECP_DP_NONE = common dso_local global i64 0, align 8
@MBEDTLS_ERR_SSL_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_INTERNAL_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_NO_CIPHER_CHOSEN = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_PRIVATE_KEY_REQUIRED = common dso_local global i32 0, align 4
@MBEDTLS_KEY_EXCHANGE_DHE_PSK = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_ECDHE_ECDSA = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_ECDHE_PSK = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_ECJPAKE = common dso_local global i64 0, align 8
@MBEDTLS_MD_NONE = common dso_local global i64 0, align 8
@MBEDTLS_MD_SHA1 = common dso_local global i64 0, align 8
@MBEDTLS_PK_NONE = common dso_local global i64 0, align 8
@MBEDTLS_SSL_MAX_CONTENT_LEN = common dso_local global i32 0, align 4
@MBEDTLS_SSL_MINOR_VERSION_3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*)* @ssl_write_server_key_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_write_server_key_exchange(%struct.TYPE_26__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 7
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  store %struct.TYPE_27__* %11, %struct.TYPE_27__** %6, align 8
  %12 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* %5, align 8
  %14 = add i64 4, %13
  %15 = trunc i64 %14 to i32
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @MBEDTLS_SSL_MSG_HANDSHAKE, align 4
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load i8, i8* @MBEDTLS_SSL_HS_SERVER_KEY_EXCHANGE, align 1
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 %21, i8* %25, align 1
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %31 = call i32 @mbedtls_ssl_write_record(%struct.TYPE_26__* %30)
  store i32 %31, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @MBEDTLS_SSL_DEBUG_RET(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %39

37:                                               ; preds = %1
  %38 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @mbedtls_ssl_write_record(%struct.TYPE_26__*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_RET(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
