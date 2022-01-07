; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_srv.c_ssl_srv_parse_alpn_ext.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_srv.c_ssl_srv_parse_alpn_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8** }

@MBEDTLS_SSL_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_MSG_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_MSG_NO_APPLICATION_PROTOCOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i64)* @ssl_srv_parse_alpn_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_srv_parse_alpn_ext(%struct.TYPE_6__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  %20 = icmp eq i8** %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %131

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = icmp ult i64 %23, 4
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %28 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR, align 4
  %29 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_6__* %26, i32 %27, i32 %28)
  %30 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO, align 4
  store i32 %30, i32* %4, align 4
  br label %131

31:                                               ; preds = %22
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl i32 %35, 8
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %36, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %7, align 8
  %45 = sub i64 %44, 2
  %46 = icmp ne i64 %43, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %31
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %50 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR, align 4
  %51 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_6__* %48, i32 %49, i32 %50)
  %52 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO, align 4
  store i32 %52, i32* %4, align 4
  br label %131

53:                                               ; preds = %31
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  store i8* %55, i8** %12, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %13, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  store i8** %63, i8*** %14, align 8
  br label %64

64:                                               ; preds = %122, %53
  %65 = load i8**, i8*** %14, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %125

68:                                               ; preds = %64
  %69 = load i8**, i8*** %14, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @strlen(i8* %70)
  store i64 %71, i64* %10, align 8
  %72 = load i8*, i8** %12, align 8
  store i8* %72, i8** %11, align 8
  br label %73

73:                                               ; preds = %117, %68
  %74 = load i8*, i8** %11, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = icmp ne i8* %74, %75
  br i1 %76, label %77, label %121

77:                                               ; preds = %73
  %78 = load i8*, i8** %11, align 8
  %79 = load i8*, i8** %13, align 8
  %80 = icmp ugt i8* %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %84 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_ILLEGAL_PARAMETER, align 4
  %85 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_6__* %82, i32 %83, i32 %84)
  %86 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO, align 4
  store i32 %86, i32* %4, align 4
  br label %131

87:                                               ; preds = %77
  %88 = load i8*, i8** %11, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %11, align 8
  %90 = load i8, i8* %88, align 1
  %91 = zext i8 %90 to i64
  store i64 %91, i64* %9, align 8
  %92 = load i64, i64* %9, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %97 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_ILLEGAL_PARAMETER, align 4
  %98 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_6__* %95, i32 %96, i32 %97)
  %99 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO, align 4
  store i32 %99, i32* %4, align 4
  br label %131

100:                                              ; preds = %87
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* %10, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %100
  %105 = load i8*, i8** %11, align 8
  %106 = load i8**, i8*** %14, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = load i64, i64* %9, align 8
  %109 = call i64 @memcmp(i8* %105, i8* %107, i64 %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load i8**, i8*** %14, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  store i8* %113, i8** %115, align 8
  store i32 0, i32* %4, align 4
  br label %131

116:                                              ; preds = %104, %100
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %9, align 8
  %119 = load i8*, i8** %11, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 %118
  store i8* %120, i8** %11, align 8
  br label %73

121:                                              ; preds = %73
  br label %122

122:                                              ; preds = %121
  %123 = load i8**, i8*** %14, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i32 1
  store i8** %124, i8*** %14, align 8
  br label %64

125:                                              ; preds = %64
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %127 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %128 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_NO_APPLICATION_PROTOCOL, align 4
  %129 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_6__* %126, i32 %127, i32 %128)
  %130 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %125, %111, %94, %81, %47, %25, %21
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
