; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_ssl_encrypt_buf.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_ssl_encrypt_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i32, i64, i8*, i8, i8*, i8*, i8*, %struct.TYPE_13__*, %struct.TYPE_11__*, i32, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32, i8*, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_10__*, i32 }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 (i32, i8*, i64)*, i32, i32 }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"=> encrypt buf\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"should never happen\00", align 1
@MBEDTLS_ERR_SSL_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"before encrypt: output payload\00", align 1
@MBEDTLS_CIPHERSUITE_SHORT_TAG = common dso_local global i32 0, align 4
@MBEDTLS_MODE_CBC = common dso_local global i64 0, align 8
@MBEDTLS_MODE_CCM = common dso_local global i64 0, align 8
@MBEDTLS_MODE_GCM = common dso_local global i64 0, align 8
@MBEDTLS_MODE_STREAM = common dso_local global i64 0, align 8
@MBEDTLS_SSL_ETM_DISABLED = common dso_local global i64 0, align 8
@MBEDTLS_SSL_MINOR_VERSION_0 = common dso_local global i64 0, align 8
@MBEDTLS_SSL_MINOR_VERSION_1 = common dso_local global i64 0, align 8
@MBEDTLS_SSL_MINOR_VERSION_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @ssl_encrypt_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_encrypt_buf(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 11
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %10 = icmp eq %struct.TYPE_12__* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = icmp eq %struct.TYPE_13__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11, %1
  %17 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @MBEDTLS_ERR_SSL_INTERNAL_ERROR, align 4
  store i32 %18, i32* %2, align 4
  br label %34

19:                                               ; preds = %11
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 5
  %24 = call i64 @mbedtls_cipher_get_cipher_mode(%struct.TYPE_15__* %23)
  store i64 %24, i64* %4, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @MBEDTLS_SSL_DEBUG_BUF(i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %27, i32 %30)
  %32 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @MBEDTLS_ERR_SSL_INTERNAL_ERROR, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %19, %16
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i64 @mbedtls_cipher_get_cipher_mode(%struct.TYPE_15__*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_BUF(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
