; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cli.c_ssl_cli_parse_alpn_ext.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cli.c_ssl_cli_parse_alpn_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8** }

@.str = private unnamed_addr constant [28 x i8] c"non-matching ALPN extension\00", align 1
@MBEDTLS_SSL_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_MSG_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"ALPN extension: no matching protocol\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i64)* @ssl_cli_parse_alpn_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_cli_parse_alpn_ext(%struct.TYPE_6__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  %16 = icmp eq i8** %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %21 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_HANDSHAKE_FAILURE, align 4
  %22 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_6__* %19, i32 %20, i32 %21)
  %23 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO, align 4
  store i32 %23, i32* %4, align 4
  br label %110

24:                                               ; preds = %3
  %25 = load i64, i64* %7, align 8
  %26 = icmp ult i64 %25, 4
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %30 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR, align 4
  %31 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_6__* %28, i32 %29, i32 %30)
  %32 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO, align 4
  store i32 %32, i32* %4, align 4
  br label %110

33:                                               ; preds = %24
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, 8
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %38, %42
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %7, align 8
  %47 = sub i64 %46, 2
  %48 = icmp ne i64 %45, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %33
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %52 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR, align 4
  %53 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_6__* %50, i32 %51, i32 %52)
  %54 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO, align 4
  store i32 %54, i32* %4, align 4
  br label %110

55:                                               ; preds = %33
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i64
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %8, align 8
  %62 = sub i64 %61, 1
  %63 = icmp ne i64 %60, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %67 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR, align 4
  %68 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_6__* %65, i32 %66, i32 %67)
  %69 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO, align 4
  store i32 %69, i32* %4, align 4
  br label %110

70:                                               ; preds = %55
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i8**, i8*** %74, align 8
  store i8** %75, i8*** %10, align 8
  br label %76

76:                                               ; preds = %100, %70
  %77 = load i8**, i8*** %10, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %103

80:                                               ; preds = %76
  %81 = load i64, i64* %9, align 8
  %82 = load i8**, i8*** %10, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @strlen(i8* %83)
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %80
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 3
  %89 = load i8**, i8*** %10, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = call i64 @memcmp(i8* %88, i8* %90, i64 %91)
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = load i8**, i8*** %10, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  store i32 0, i32* %4, align 4
  br label %110

99:                                               ; preds = %86, %80
  br label %100

100:                                              ; preds = %99
  %101 = load i8**, i8*** %10, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i32 1
  store i8** %102, i8*** %10, align 8
  br label %76

103:                                              ; preds = %76
  %104 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %106 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %107 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_HANDSHAKE_FAILURE, align 4
  %108 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_6__* %105, i32 %106, i32 %107)
  %109 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %103, %94, %64, %49, %27, %17
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
