; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_ssl_prepare_record_content.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_ssl_prepare_record_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_11__*, %struct.TYPE_10__*, i32*, i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"input record from network\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"ssl_decrypt_buf\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"input payload after decrypt\00", align 1
@MBEDTLS_SSL_MAX_CONTENT_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"bad message length\00", align 1
@MBEDTLS_ERR_SSL_INVALID_RECORD = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_HW_ACCEL_FAILED = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_HW_ACCEL_FALLTHROUGH = common dso_local global i32 0, align 4
@MBEDTLS_SSL_COMPRESS_DEFLATE = common dso_local global i64 0, align 8
@MBEDTLS_SSL_TRANSPORT_DATAGRAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @ssl_prepare_record_content to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_prepare_record_content(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = call i64 @mbedtls_ssl_hdr_len(%struct.TYPE_12__* %9)
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  %15 = call i32 @MBEDTLS_SSL_DEBUG_BUF(i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %8, i64 %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %48, label %18

18:                                               ; preds = %1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %48

23:                                               ; preds = %18
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = call i32 @ssl_decrypt_buf(%struct.TYPE_12__* %24)
  store i32 %25, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @MBEDTLS_SSL_DEBUG_RET(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %49

31:                                               ; preds = %23
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @MBEDTLS_SSL_DEBUG_BUF(i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %34, i64 %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MBEDTLS_SSL_MAX_CONTENT_LEN, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32, i32* @MBEDTLS_ERR_SSL_INVALID_RECORD, align 4
  store i32 %46, i32* %2, align 4
  br label %49

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47, %18, %1
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %44, %27
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_BUF(i32, i8*, i32, i64) #1

declare dso_local i64 @mbedtls_ssl_hdr_len(%struct.TYPE_12__*) #1

declare dso_local i32 @ssl_decrypt_buf(%struct.TYPE_12__*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_RET(i32, i8*, i32) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
