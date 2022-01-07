; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cli.c_ssl_parse_certificate_request.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cli.c_ssl_parse_certificate_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i64*, i32, i32, i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }

@.str = private unnamed_addr constant [29 x i8] c"=> parse certificate request\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"<= skip parse certificate request\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"mbedtls_ssl_read_record\00", align 1
@MBEDTLS_SSL_MSG_HANDSHAKE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"bad certificate request message\00", align 1
@MBEDTLS_SSL_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_MSG_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@MBEDTLS_SSL_HS_CERTIFICATE_REQUEST = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"got %s certificate request\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_REQUEST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"<= parse certificate request\00", align 1
@MBEDTLS_SSL_MINOR_VERSION_3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @ssl_parse_certificate_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_certificate_request(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 7
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %9, align 8
  %15 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @mbedtls_ssl_ciphersuite_cert_req_allowed(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  store i32 0, i32* %2, align 4
  br label %154

25:                                               ; preds = %1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = call i32 @mbedtls_ssl_read_record(%struct.TYPE_8__* %26)
  store i32 %27, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @MBEDTLS_SSL_DEBUG_RET(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %154

33:                                               ; preds = %25
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MBEDTLS_SSL_MSG_HANDSHAKE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %43 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_UNEXPECTED_MESSAGE, align 4
  %44 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_8__* %41, i32 %42, i32 %43)
  %45 = load i32, i32* @MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE, align 4
  store i32 %45, i32* %2, align 4
  br label %154

46:                                               ; preds = %33
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MBEDTLS_SSL_HS_CERTIFICATE_REQUEST, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %67 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %46
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  store i32 1, i32* %74, align 8
  br label %152

75:                                               ; preds = %46
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load i64*, i64** %77, align 8
  %79 = bitcast i64* %78 to i8*
  store i8* %79, i8** %5, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %82 = call i32 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_8__* %81)
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i64
  store i64 %86, i64* %7, align 8
  %87 = load i64, i64* %7, align 8
  store i64 %87, i64* %6, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %93 = call i32 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_8__* %92)
  %94 = add nsw i32 %93, 2
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %6, align 8
  %97 = add i64 %95, %96
  %98 = icmp ult i64 %91, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %75
  %100 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %102 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %103 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR, align 4
  %104 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_8__* %101, i32 %102, i32 %103)
  %105 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_REQUEST, align 4
  store i32 %105, i32* %2, align 4
  br label %154

106:                                              ; preds = %75
  %107 = load i8*, i8** %5, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %109 = call i32 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_8__* %108)
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %6, align 8
  %113 = add i64 %111, %112
  %114 = getelementptr inbounds i8, i8* %107, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = shl i32 %116, 8
  %118 = load i8*, i8** %5, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %120 = call i32 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_8__* %119)
  %121 = add nsw i32 %120, 2
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %6, align 8
  %124 = add i64 %122, %123
  %125 = getelementptr inbounds i8, i8* %118, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = or i32 %117, %127
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %8, align 8
  %130 = load i64, i64* %8, align 8
  %131 = load i64, i64* %6, align 8
  %132 = add i64 %131, %130
  store i64 %132, i64* %6, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %138 = call i32 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_8__* %137)
  %139 = add nsw i32 %138, 3
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %6, align 8
  %142 = add i64 %140, %141
  %143 = icmp ne i64 %136, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %106
  %145 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %147 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %148 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR, align 4
  %149 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_8__* %146, i32 %147, i32 %148)
  %150 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_REQUEST, align 4
  store i32 %150, i32* %2, align 4
  br label %154

151:                                              ; preds = %106
  br label %152

152:                                              ; preds = %151, %72
  %153 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %152, %144, %99, %39, %29, %19
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @mbedtls_ssl_ciphersuite_cert_req_allowed(i32*) #1

declare dso_local i32 @mbedtls_ssl_read_record(%struct.TYPE_8__*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_RET(i32, i8*, i32) #1

declare dso_local i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
