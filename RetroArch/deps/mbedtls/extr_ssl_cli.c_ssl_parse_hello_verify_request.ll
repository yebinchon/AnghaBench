; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cli.c_ssl_parse_hello_verify_request.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cli.c_ssl_parse_hello_verify_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i8, i32* }
%struct.TYPE_9__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"=> parse hello verify request\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"server version\00", align 1
@MBEDTLS_SSL_MAJOR_VERSION_3 = common dso_local global i32 0, align 4
@MBEDTLS_SSL_MINOR_VERSION_2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"bad server version\00", align 1
@MBEDTLS_SSL_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_MSG_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_BAD_HS_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"cookie\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"cookie length does not match incoming message size\00", align 1
@MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"alloc failed (%d bytes)\00", align 1
@MBEDTLS_ERR_SSL_ALLOC_FAILED = common dso_local global i32 0, align 4
@MBEDTLS_SSL_CLIENT_HELLO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"<= parse hello verify request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @ssl_parse_hello_verify_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_hello_verify_request(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = call i32 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_11__* %11)
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  store i8* %14, i8** %4, align 8
  %15 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @MBEDTLS_SSL_DEBUG_BUF(i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %16, i8 zeroext 2)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @mbedtls_ssl_read_version(i32* %5, i32* %6, i32 %22, i8* %23)
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  store i8* %26, i8** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @MBEDTLS_SSL_MAJOR_VERSION_3, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %50, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MBEDTLS_SSL_MINOR_VERSION_2, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %50, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %35, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %43, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %42, %34, %30, %1
  %51 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %54 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_PROTOCOL_VERSION, align 4
  %55 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_11__* %52, i32 %53, i32 %54)
  %56 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_PROTOCOL_VERSION, align 4
  store i32 %56, i32* %2, align 4
  br label %133

57:                                               ; preds = %42
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %4, align 8
  %60 = load i8, i8* %58, align 1
  store i8 %60, i8* %7, align 1
  %61 = load i8*, i8** %4, align 8
  %62 = load i8, i8* %7, align 1
  %63 = call i32 @MBEDTLS_SSL_DEBUG_BUF(i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %61, i8 zeroext %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %66, i64 %70
  %72 = load i8*, i8** %4, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = load i8, i8* %7, align 1
  %77 = zext i8 %76 to i64
  %78 = icmp slt i64 %75, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %57
  %80 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %82 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %83 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR, align 4
  %84 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_11__* %81, i32 %82, i32 %83)
  %85 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO, align 4
  store i32 %85, i32* %2, align 4
  br label %133

86:                                               ; preds = %57
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @mbedtls_free(i32* %91)
  %93 = load i8, i8* %7, align 1
  %94 = call i32* @mbedtls_calloc(i32 1, i8 zeroext %93)
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  store i32* %94, i32** %98, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %86
  %106 = load i8, i8* %7, align 1
  %107 = zext i8 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* %108)
  %110 = load i32, i32* @MBEDTLS_ERR_SSL_ALLOC_FAILED, align 4
  store i32 %110, i32* %2, align 4
  br label %133

111:                                              ; preds = %86
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i8*, i8** %4, align 8
  %118 = load i8, i8* %7, align 1
  %119 = call i32 @memcpy(i32* %116, i8* %117, i8 zeroext %118)
  %120 = load i8, i8* %7, align 1
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  store i8 %120, i8* %124, align 8
  %125 = load i32, i32* @MBEDTLS_SSL_CLIENT_HELLO, align 4
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %129 = call i32 @mbedtls_ssl_reset_checksum(%struct.TYPE_11__* %128)
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %131 = call i32 @mbedtls_ssl_recv_flight_completed(%struct.TYPE_11__* %130)
  %132 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %111, %105, %79, %50
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_11__*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_BUF(i32, i8*, i8*, i8 zeroext) #1

declare dso_local i32 @mbedtls_ssl_read_version(i32*, i32*, i32, i8*) #1

declare dso_local i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @mbedtls_free(i32*) #1

declare dso_local i32* @mbedtls_calloc(i32, i8 zeroext) #1

declare dso_local i32 @memcpy(i32*, i8*, i8 zeroext) #1

declare dso_local i32 @mbedtls_ssl_reset_checksum(%struct.TYPE_11__*) #1

declare dso_local i32 @mbedtls_ssl_recv_flight_completed(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
