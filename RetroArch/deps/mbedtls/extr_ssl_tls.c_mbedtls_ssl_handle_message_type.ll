; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_mbedtls_ssl_handle_message_type.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_mbedtls_ssl_handle_message_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64*, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@MBEDTLS_SSL_MSG_HANDSHAKE = common dso_local global i64 0, align 8
@MBEDTLS_SSL_MSG_ALERT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"got an alert message, type: [%d:%d]\00", align 1
@MBEDTLS_SSL_ALERT_LEVEL_FATAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"is a fatal alert message (msg %d)\00", align 1
@MBEDTLS_ERR_SSL_FATAL_ALERT_MESSAGE = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_LEVEL_WARNING = common dso_local global i64 0, align 8
@MBEDTLS_SSL_ALERT_MSG_CLOSE_NOTIFY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"is a close notify message\00", align 1
@MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_NON_FATAL = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_MSG_NO_CERT = common dso_local global i64 0, align 8
@MBEDTLS_SSL_ALERT_MSG_NO_RENEGOTIATION = common dso_local global i64 0, align 8
@MBEDTLS_SSL_IS_SERVER = common dso_local global i64 0, align 8
@MBEDTLS_SSL_MINOR_VERSION_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_handle_message_type(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MBEDTLS_SSL_MSG_HANDSHAKE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = call i32 @mbedtls_ssl_prepare_handshake_record(%struct.TYPE_6__* %11)
  store i32 %12, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %74

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16, %1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MBEDTLS_SSL_MSG_ALERT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %73

23:                                               ; preds = %17
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %23
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* %49)
  %51 = load i32, i32* @MBEDTLS_ERR_SSL_FATAL_ALERT_MESSAGE, align 4
  store i32 %51, i32* %2, align 4
  br label %74

52:                                               ; preds = %23
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MBEDTLS_SSL_ALERT_LEVEL_WARNING, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %52
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MBEDTLS_SSL_ALERT_MSG_CLOSE_NOTIFY, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY, align 4
  store i32 %70, i32* %2, align 4
  br label %74

71:                                               ; preds = %60, %52
  %72 = load i32, i32* @MBEDTLS_ERR_SSL_NON_FATAL, align 4
  store i32 %72, i32* %2, align 4
  br label %74

73:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %71, %68, %43, %14
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @mbedtls_ssl_prepare_handshake_record(%struct.TYPE_6__*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
