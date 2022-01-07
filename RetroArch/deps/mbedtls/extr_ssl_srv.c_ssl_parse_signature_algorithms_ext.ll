; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_srv.c_ssl_parse_signature_algorithms_ext.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_srv.c_ssl_parse_signature_algorithms_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"bad client hello message\00", align 1
@MBEDTLS_SSL_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO = common dso_local global i32 0, align 4
@MBEDTLS_PK_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"client hello v3, signature_algorithm ext unknown sig alg encoding %d\00", align 1
@MBEDTLS_MD_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [71 x i8] c"client hello v3, signature_algorithm ext: unknown hash alg encoding %d\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"client hello v3, signature_algorithm ext: match sig %d and hash %d\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"client hello v3, signature_algorithm ext: hash alg %d not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i64)* @ssl_parse_signature_algorithms_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_signature_algorithms_ext(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl i32 %19, 8
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %20, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %27, 2
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %3
  %32 = load i64, i64* %8, align 8
  %33 = urem i64 %32, 2
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31, %3
  %36 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %39 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR, align 4
  %40 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_7__* %37, i32 %38, i32 %39)
  %41 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO, align 4
  store i32 %41, i32* %4, align 4
  br label %104

42:                                               ; preds = %31
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  store i8* %44, i8** %9, align 8
  br label %45

45:                                               ; preds = %100, %42
  %46 = load i8*, i8** %9, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ult i8* %46, %47
  br i1 %48, label %49, label %103

49:                                               ; preds = %45
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = call i32 @mbedtls_ssl_pk_alg_from_sig(i8 zeroext %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* @MBEDTLS_PK_NONE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* %61)
  br label %100

63:                                               ; preds = %49
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = call i64 @mbedtls_ssl_md_alg_from_hash(i8 zeroext %66)
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* @MBEDTLS_MD_NONE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %63
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* %76)
  br label %100

78:                                               ; preds = %63
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i64 @mbedtls_ssl_check_sig_hash(%struct.TYPE_7__* %79, i64 %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %12, align 4
  %89 = load i64, i64* %11, align 8
  %90 = call i32 @mbedtls_ssl_sig_hash_set_add(i32* %87, i32 %88, i64 %89)
  %91 = load i32, i32* %12, align 4
  %92 = load i64, i64* %11, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* %93)
  br label %99

95:                                               ; preds = %78
  %96 = load i64, i64* %11, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* %97)
  br label %99

99:                                               ; preds = %95, %83
  br label %100

100:                                              ; preds = %99, %71, %56
  %101 = load i8*, i8** %9, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 2
  store i8* %102, i8** %9, align 8
  br label %45

103:                                              ; preds = %45
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %35
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @mbedtls_ssl_pk_alg_from_sig(i8 zeroext) #1

declare dso_local i64 @mbedtls_ssl_md_alg_from_hash(i8 zeroext) #1

declare dso_local i64 @mbedtls_ssl_check_sig_hash(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @mbedtls_ssl_sig_hash_set_add(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
