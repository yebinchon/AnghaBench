; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_srv.c_ssl_parse_servername_ext.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_srv.c_ssl_parse_servername_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32, %struct.TYPE_7__*, i8*, i64)*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"parse ServerName extension\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"bad client hello message\00", align 1
@MBEDTLS_SSL_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO = common dso_local global i32 0, align 4
@MBEDTLS_TLS_EXT_SERVERNAME_HOSTNAME = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ssl_sni_wrapper\00", align 1
@MBEDTLS_SSL_ALERT_MSG_UNRECOGNIZED_NAME = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_MSG_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i64)* @ssl_parse_servername_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_servername_ext(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl i32 %16, 8
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = or i32 %17, %21
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = add i64 %24, 2
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %32 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR, align 4
  %33 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_7__* %30, i32 %31, i32 %32)
  %34 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO, align 4
  store i32 %34, i32* %4, align 4
  br label %119

35:                                               ; preds = %3
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  store i8* %37, i8** %11, align 8
  br label %38

38:                                               ; preds = %99, %35
  %39 = load i64, i64* %9, align 8
  %40 = icmp ugt i64 %39, 0
  br i1 %40, label %41, label %108

41:                                               ; preds = %38
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl i32 %45, 8
  %47 = load i8*, i8** %11, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %46, %50
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = add i64 %53, 3
  %55 = load i64, i64* %9, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %41
  %58 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %61 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR, align 4
  %62 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_7__* %59, i32 %60, i32 %61)
  %63 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO, align 4
  store i32 %63, i32* %4, align 4
  br label %119

64:                                               ; preds = %41
  %65 = load i8*, i8** %11, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* @MBEDTLS_TLS_EXT_SERVERNAME_HOSTNAME, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %99

72:                                               ; preds = %64
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32 (i32, %struct.TYPE_7__*, i8*, i64)*, i32 (i32, %struct.TYPE_7__*, i8*, i64)** %76, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 3
  %86 = load i64, i64* %10, align 8
  %87 = call i32 %77(i32 %82, %struct.TYPE_7__* %83, i8* %85, i64 %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %72
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @MBEDTLS_SSL_DEBUG_RET(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %95 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_UNRECOGNIZED_NAME, align 4
  %96 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_7__* %93, i32 %94, i32 %95)
  %97 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO, align 4
  store i32 %97, i32* %4, align 4
  br label %119

98:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %119

99:                                               ; preds = %64
  %100 = load i64, i64* %10, align 8
  %101 = add i64 %100, 3
  %102 = load i64, i64* %9, align 8
  %103 = sub i64 %102, %101
  store i64 %103, i64* %9, align 8
  %104 = load i64, i64* %10, align 8
  %105 = add i64 %104, 3
  %106 = load i8*, i8** %11, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 %105
  store i8* %107, i8** %11, align 8
  br label %38

108:                                              ; preds = %38
  %109 = load i64, i64* %9, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %114 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %115 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_ILLEGAL_PARAMETER, align 4
  %116 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_7__* %113, i32 %114, i32 %115)
  %117 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO, align 4
  store i32 %117, i32* %4, align 4
  br label %119

118:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %111, %98, %90, %57, %28
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_RET(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
