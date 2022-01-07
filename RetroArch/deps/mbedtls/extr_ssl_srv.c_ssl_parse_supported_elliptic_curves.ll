; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_srv.c_ssl_parse_supported_elliptic_curves.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_srv.c_ssl_parse_supported_elliptic_curves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32** }

@.str = private unnamed_addr constant [25 x i8] c"bad client hello message\00", align 1
@MBEDTLS_SSL_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO = common dso_local global i32 0, align 4
@MBEDTLS_ECP_DP_MAX = common dso_local global i64 0, align 8
@MBEDTLS_SSL_ALERT_MSG_INTERNAL_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_ALLOC_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i64)* @ssl_parse_supported_elliptic_curves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_supported_elliptic_curves(%struct.TYPE_6__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
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
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = add i64 %24, 2
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %3
  %29 = load i64, i64* %8, align 8
  %30 = urem i64 %29, 2
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28, %3
  %33 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %36 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR, align 4
  %37 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_6__* %34, i32 %35, i32 %36)
  %38 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO, align 4
  store i32 %38, i32* %4, align 4
  br label %115

39:                                               ; preds = %28
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = icmp ne i32** %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %50 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR, align 4
  %51 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_6__* %48, i32 %49, i32 %50)
  %52 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO, align 4
  store i32 %52, i32* %4, align 4
  br label %115

53:                                               ; preds = %39
  %54 = load i64, i64* %8, align 8
  %55 = udiv i64 %54, 2
  %56 = add i64 %55, 1
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @MBEDTLS_ECP_DP_MAX, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i64, i64* @MBEDTLS_ECP_DP_MAX, align 8
  store i64 %61, i64* %9, align 8
  br label %62

62:                                               ; preds = %60, %53
  %63 = load i64, i64* %9, align 8
  %64 = call i32** @mbedtls_calloc(i64 %63, i32 8)
  store i32** %64, i32*** %12, align 8
  %65 = icmp eq i32** %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %69 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_INTERNAL_ERROR, align 4
  %70 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_6__* %67, i32 %68, i32 %69)
  %71 = load i32, i32* @MBEDTLS_ERR_SSL_ALLOC_FAILED, align 4
  store i32 %71, i32* %4, align 4
  br label %115

72:                                               ; preds = %62
  %73 = load i32**, i32*** %12, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32** %73, i32*** %77, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  store i8* %79, i8** %10, align 8
  br label %80

80:                                               ; preds = %109, %72
  %81 = load i64, i64* %8, align 8
  %82 = icmp ugt i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i64, i64* %9, align 8
  %85 = icmp ugt i64 %84, 1
  br label %86

86:                                               ; preds = %83, %80
  %87 = phi i1 [ false, %80 ], [ %85, %83 ]
  br i1 %87, label %88, label %114

88:                                               ; preds = %86
  %89 = load i8*, i8** %10, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = shl i32 %92, 8
  %94 = load i8*, i8** %10, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = or i32 %93, %97
  %99 = trunc i32 %98 to i8
  %100 = call i32* @mbedtls_ecp_curve_info_from_tls_id(i8 zeroext %99)
  store i32* %100, i32** %11, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %88
  %104 = load i32*, i32** %11, align 8
  %105 = load i32**, i32*** %12, align 8
  %106 = getelementptr inbounds i32*, i32** %105, i32 1
  store i32** %106, i32*** %12, align 8
  store i32* %104, i32** %105, align 8
  %107 = load i64, i64* %9, align 8
  %108 = add i64 %107, -1
  store i64 %108, i64* %9, align 8
  br label %109

109:                                              ; preds = %103, %88
  %110 = load i64, i64* %8, align 8
  %111 = sub i64 %110, 2
  store i64 %111, i64* %8, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 2
  store i8* %113, i8** %10, align 8
  br label %80

114:                                              ; preds = %86
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %114, %66, %46, %32
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32** @mbedtls_calloc(i64, i32) #1

declare dso_local i32* @mbedtls_ecp_curve_info_from_tls_id(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
