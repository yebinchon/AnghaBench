; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_srv.c_ssl_parse_client_psk_identity.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_srv.c_ssl_parse_client_psk_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 (i32, %struct.TYPE_7__*, i8*, i64)*, i64, i64, i32*, i32, i32* }

@.str = private unnamed_addr constant [22 x i8] c"got no pre-shared key\00", align 1
@MBEDTLS_ERR_SSL_PRIVATE_KEY_REQUIRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"bad client key exchange message\00", align 1
@MBEDTLS_ERR_SSL_BAD_HS_CLIENT_KEY_EXCHANGE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_UNKNOWN_IDENTITY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Unknown PSK identity\00", align 1
@MBEDTLS_SSL_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_MSG_UNKNOWN_PSK_IDENTITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8**, i8*)* @ssl_parse_client_psk_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_client_psk_identity(%struct.TYPE_7__* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64 (i32, %struct.TYPE_7__*, i8*, i64)*, i64 (i32, %struct.TYPE_7__*, i8*, i64)** %13, align 8
  %15 = icmp eq i64 (i32, %struct.TYPE_7__*, i8*, i64)* %14, null
  br i1 %15, label %16, label %47

16:                                               ; preds = %3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %16
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %23
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37, %30, %23, %16
  %45 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @MBEDTLS_ERR_SSL_PRIVATE_KEY_REQUIRED, align 4
  store i32 %46, i32* %4, align 4
  br label %156

47:                                               ; preds = %37, %3
  %48 = load i8**, i8*** %6, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  %51 = load i8*, i8** %7, align 8
  %52 = icmp ugt i8* %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_CLIENT_KEY_EXCHANGE, align 4
  store i32 %55, i32* %4, align 4
  br label %156

56:                                               ; preds = %47
  %57 = load i8**, i8*** %6, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl i32 %61, 8
  %63 = load i8**, i8*** %6, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %62, %67
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %9, align 8
  %70 = load i8**, i8*** %6, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  store i8* %72, i8** %70, align 8
  %73 = load i64, i64* %9, align 8
  %74 = icmp ult i64 %73, 1
  br i1 %74, label %85, label %75

75:                                               ; preds = %56
  %76 = load i64, i64* %9, align 8
  %77 = icmp ugt i64 %76, 65535
  br i1 %77, label %85, label %78

78:                                               ; preds = %75
  %79 = load i8**, i8*** %6, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i8*, i8** %7, align 8
  %84 = icmp ugt i8* %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %78, %75, %56
  %86 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_CLIENT_KEY_EXCHANGE, align 4
  store i32 %87, i32* %4, align 4
  br label %156

88:                                               ; preds = %78
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64 (i32, %struct.TYPE_7__*, i8*, i64)*, i64 (i32, %struct.TYPE_7__*, i8*, i64)** %92, align 8
  %94 = icmp ne i64 (i32, %struct.TYPE_7__*, i8*, i64)* %93, null
  br i1 %94, label %95, label %115

95:                                               ; preds = %88
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64 (i32, %struct.TYPE_7__*, i8*, i64)*, i64 (i32, %struct.TYPE_7__*, i8*, i64)** %99, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %107 = load i8**, i8*** %6, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = load i64, i64* %9, align 8
  %110 = call i64 %100(i32 %105, %struct.TYPE_7__* %106, i8* %108, i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %95
  %113 = load i32, i32* @MBEDTLS_ERR_SSL_UNKNOWN_IDENTITY, align 4
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %112, %95
  br label %137

115:                                              ; preds = %88
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %116, %121
  br i1 %122, label %134, label %123

123:                                              ; preds = %115
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = load i8**, i8*** %6, align 8
  %130 = load i8*, i8** %129, align 8
  %131 = load i64, i64* %9, align 8
  %132 = call i64 @mbedtls_ssl_safer_memcmp(i32* %128, i8* %130, i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %123, %115
  %135 = load i32, i32* @MBEDTLS_ERR_SSL_UNKNOWN_IDENTITY, align 4
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %134, %123
  br label %137

137:                                              ; preds = %136, %114
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @MBEDTLS_ERR_SSL_UNKNOWN_IDENTITY, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %137
  %142 = load i8**, i8*** %6, align 8
  %143 = load i8*, i8** %142, align 8
  %144 = load i64, i64* %9, align 8
  %145 = call i32 @MBEDTLS_SSL_DEBUG_BUF(i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %143, i64 %144)
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %147 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %148 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_UNKNOWN_PSK_IDENTITY, align 4
  %149 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_7__* %146, i32 %147, i32 %148)
  %150 = load i32, i32* @MBEDTLS_ERR_SSL_UNKNOWN_IDENTITY, align 4
  store i32 %150, i32* %4, align 4
  br label %156

151:                                              ; preds = %137
  %152 = load i64, i64* %9, align 8
  %153 = load i8**, i8*** %6, align 8
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 %152
  store i8* %155, i8** %153, align 8
  store i32 0, i32* %4, align 4
  br label %156

156:                                              ; preds = %151, %141, %85, %53, %44
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i64 @mbedtls_ssl_safer_memcmp(i32*, i8*, i64) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_BUF(i32, i8*, i8*, i64) #1

declare dso_local i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
