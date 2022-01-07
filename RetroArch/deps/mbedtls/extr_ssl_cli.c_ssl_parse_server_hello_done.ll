; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cli.c_ssl_parse_server_hello_done.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cli.c_ssl_parse_server_hello_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64*, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"=> parse server hello done\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"mbedtls_ssl_read_record\00", align 1
@MBEDTLS_SSL_MSG_HANDSHAKE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"bad server hello done message\00", align 1
@MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@MBEDTLS_SSL_HS_SERVER_HELLO_DONE = common dso_local global i64 0, align 8
@MBEDTLS_SSL_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO_DONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"<= parse server hello done\00", align 1
@MBEDTLS_SSL_TRANSPORT_DATAGRAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @ssl_parse_server_hello_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_server_hello_done(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %5 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = call i32 @mbedtls_ssl_read_record(%struct.TYPE_9__* %6)
  store i32 %7, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @MBEDTLS_SSL_DEBUG_RET(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %50

13:                                               ; preds = %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MBEDTLS_SSL_MSG_HANDSHAKE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32, i32* @MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE, align 4
  store i32 %21, i32* %2, align 4
  br label %50

22:                                               ; preds = %13
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_9__* %26)
  %28 = icmp ne i64 %25, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %22
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MBEDTLS_SSL_HS_SERVER_HELLO_DONE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %29, %22
  %38 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %41 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR, align 4
  %42 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_9__* %39, i32 %40, i32 %41)
  %43 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO_DONE, align 4
  store i32 %43, i32* %2, align 4
  br label %50

44:                                               ; preds = %29
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %44, %37, %19, %9
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @mbedtls_ssl_read_record(%struct.TYPE_9__*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_RET(i32, i8*, i32) #1

declare dso_local i64 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_9__*) #1

declare dso_local i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
