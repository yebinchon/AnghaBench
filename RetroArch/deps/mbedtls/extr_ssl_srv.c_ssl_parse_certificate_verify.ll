; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_srv.c_ssl_parse_certificate_verify.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_srv.c_ssl_parse_certificate_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32*, i64, i64, %struct.TYPE_17__*, %struct.TYPE_15__*, i32, %struct.TYPE_14__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_18__*, i8*)* }
%struct.TYPE_14__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }

@MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"=> parse certificate verify\00", align 1
@MBEDTLS_KEY_EXCHANGE_PSK = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_RSA_PSK = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_ECDHE_PSK = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_DHE_PSK = common dso_local global i64 0, align 8
@MBEDTLS_KEY_EXCHANGE_ECJPAKE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"<= skip parse certificate verify\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"mbedtls_ssl_read_record_layer\00", align 1
@MBEDTLS_ERR_SSL_NON_FATAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"mbedtls_ssl_handle_message_type\00", align 1
@MBEDTLS_SSL_MSG_HANDSHAKE = common dso_local global i64 0, align 8
@MBEDTLS_SSL_HS_CERTIFICATE_VERIFY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"bad certificate verify message\00", align 1
@MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_VERIFY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"should never happen\00", align 1
@MBEDTLS_ERR_SSL_INTERNAL_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_MD_NONE = common dso_local global i64 0, align 8
@MBEDTLS_MD_SHA1 = common dso_local global i64 0, align 8
@MBEDTLS_PK_ECDSA = common dso_local global i32 0, align 4
@MBEDTLS_PK_NONE = common dso_local global i32 0, align 4
@MBEDTLS_SSL_MINOR_VERSION_3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @ssl_parse_certificate_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_certificate_verify(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [48 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %12 = load i32, i32* @MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE, align 4
  store i32 %12, i32* %4, align 4
  %13 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i64 0, i64 0
  store i8* %13, i8** %8, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 7
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %11, align 8
  %19 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MBEDTLS_KEY_EXCHANGE_PSK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %56, label %25

25:                                               ; preds = %1
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MBEDTLS_KEY_EXCHANGE_RSA_PSK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %56, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MBEDTLS_KEY_EXCHANGE_ECDHE_PSK, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %56, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MBEDTLS_KEY_EXCHANGE_DHE_PSK, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %56, label %43

43:                                               ; preds = %37
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MBEDTLS_KEY_EXCHANGE_ECJPAKE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %43
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = icmp eq %struct.TYPE_16__* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %49, %43, %37, %31, %25, %1
  %57 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  store i32 0, i32* %2, align 4
  br label %111

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %74, %62
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %65 = call i32 @mbedtls_ssl_read_record_layer(%struct.TYPE_18__* %64)
  store i32 %65, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @MBEDTLS_SSL_DEBUG_RET(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %111

71:                                               ; preds = %63
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %73 = call i32 @mbedtls_ssl_handle_message_type(%struct.TYPE_18__* %72)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %71
  %75 = load i32, i32* @MBEDTLS_ERR_SSL_NON_FATAL, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %63, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 0, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @MBEDTLS_SSL_DEBUG_RET(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %111

85:                                               ; preds = %78
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @MBEDTLS_SSL_MSG_HANDSHAKE, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %103, label %95

95:                                               ; preds = %85
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @MBEDTLS_SSL_HS_CERTIFICATE_VERIFY, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %95, %85
  %104 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %105 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_CERTIFICATE_VERIFY, align 4
  store i32 %105, i32* %2, align 4
  br label %111

106:                                              ; preds = %95
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %108 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_18__* %107)
  store i64 %108, i64* %5, align 8
  %109 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %110 = load i32, i32* @MBEDTLS_ERR_SSL_INTERNAL_ERROR, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %106, %103, %81, %67, %56
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @mbedtls_ssl_read_record_layer(%struct.TYPE_18__*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_RET(i32, i8*, i32) #1

declare dso_local i32 @mbedtls_ssl_handle_message_type(%struct.TYPE_18__*) #1

declare dso_local i64 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
