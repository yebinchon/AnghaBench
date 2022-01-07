; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_parse_max_fragment_length_ext.h_ssl_parse_max_fragment_length_ext.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_parse_max_fragment_length_ext.h_ssl_parse_max_fragment_length_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8 }

@MBEDTLS_SSL_MAX_FRAG_LEN_INVALID = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [25 x i8] c"bad client hello message\00", align 1
@MBEDTLS_SSL_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_MSG_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i64)* @ssl_parse_max_fragment_length_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_max_fragment_length_ext(%struct.TYPE_6__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 1
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* @MBEDTLS_SSL_MAX_FRAG_LEN_INVALID, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp sge i32 %14, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %10, %3
  %19 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %22 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_ILLEGAL_PARAMETER, align 4
  %23 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_6__* %20, i32 %21, i32 %22)
  %24 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_CLIENT_HELLO, align 4
  store i32 %24, i32* %4, align 4
  br label %33

25:                                               ; preds = %10
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i8 %28, i8* %32, align 1
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %25, %18
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
