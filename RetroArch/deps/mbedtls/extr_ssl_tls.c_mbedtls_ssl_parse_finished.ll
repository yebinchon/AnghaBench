; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_mbedtls_ssl_parse_finished.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_mbedtls_ssl_parse_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64*, i64, i32, %struct.TYPE_11__*, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i64, i32 (%struct.TYPE_12__*, i8*, i32)* }

@SSL_MAX_HASH_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"=> parse finished\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"mbedtls_ssl_read_record\00", align 1
@MBEDTLS_SSL_MSG_HANDSHAKE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"bad finished message\00", align 1
@MBEDTLS_SSL_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_MSG_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@MBEDTLS_SSL_HS_FINISHED = common dso_local global i64 0, align 8
@MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_BAD_HS_FINISHED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"<= parse finished\00", align 1
@MBEDTLS_SSL_CLIENT_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@MBEDTLS_SSL_HANDSHAKE_WRAPUP = common dso_local global i32 0, align 4
@MBEDTLS_SSL_IS_CLIENT = common dso_local global i32 0, align 4
@MBEDTLS_SSL_IS_SERVER = common dso_local global i32 0, align 4
@MBEDTLS_SSL_MINOR_VERSION_0 = common dso_local global i64 0, align 8
@MBEDTLS_SSL_TRANSPORT_DATAGRAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_parse_finished(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %9 = load i32, i32* @SSL_MAX_HASH_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 7
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i32 (%struct.TYPE_12__*, i8*, i32)*, i32 (%struct.TYPE_12__*, i8*, i32)** %17, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 5
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = xor i32 %24, 1
  %26 = call i32 %18(%struct.TYPE_12__* %19, i8* %12, i32 %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = call i32 @mbedtls_ssl_read_record(%struct.TYPE_12__* %27)
  store i32 %28, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @MBEDTLS_SSL_DEBUG_RET(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %105

34:                                               ; preds = %1
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MBEDTLS_SSL_MSG_HANDSHAKE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %44 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_UNEXPECTED_MESSAGE, align 4
  %45 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_12__* %42, i32 %43, i32 %44)
  %46 = load i32, i32* @MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE, align 4
  store i32 %46, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %105

47:                                               ; preds = %34
  store i32 12, i32* %5, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MBEDTLS_SSL_HS_FINISHED, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %47
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %60 = call i32 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_12__* %59)
  %61 = load i32, i32* %5, align 4
  %62 = add i32 %60, %61
  %63 = zext i32 %62 to i64
  %64 = icmp ne i64 %58, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %55, %47
  %66 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %69 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR, align 4
  %70 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_12__* %67, i32 %68, i32 %69)
  %71 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_FINISHED, align 4
  store i32 %71, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %105

72:                                               ; preds = %55
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = load i64*, i64** %74, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %77 = call i32 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_12__* %76)
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %75, i64 %78
  %80 = load i32, i32* %5, align 4
  %81 = call i64 @mbedtls_ssl_safer_memcmp(i64* %79, i8* %12, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %72
  %84 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %86 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %87 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR, align 4
  %88 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_12__* %85, i32 %86, i32 %87)
  %89 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_FINISHED, align 4
  store i32 %89, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %105

90:                                               ; preds = %72
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 7
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %103

98:                                               ; preds = %90
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %98, %97
  %104 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %105

105:                                              ; preds = %103, %83, %65, %40, %30
  %106 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #2

declare dso_local i32 @mbedtls_ssl_read_record(%struct.TYPE_12__*) #2

declare dso_local i32 @MBEDTLS_SSL_DEBUG_RET(i32, i8*, i32) #2

declare dso_local i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_12__*, i32, i32) #2

declare dso_local i32 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_12__*) #2

declare dso_local i64 @mbedtls_ssl_safer_memcmp(i64*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
