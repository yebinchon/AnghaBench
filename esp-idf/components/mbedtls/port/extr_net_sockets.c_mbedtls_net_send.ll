; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/port/extr_net_sockets.c_mbedtls_net_send.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/port/extr_net_sockets.c_mbedtls_net_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MBEDTLS_ERR_NET_INVALID_CONTEXT = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_WANT_WRITE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i64 0, align 8
@MBEDTLS_ERR_NET_CONN_RESET = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@MBEDTLS_ERR_NET_SEND_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_net_send(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @MBEDTLS_ERR_NET_INVALID_CONTEXT, align 4
  store i32 %17, i32* %4, align 4
  br label %52

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @write(i32 %19, i8* %20, i64 %21)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %18
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @net_would_block(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @MBEDTLS_ERR_SSL_WANT_WRITE, align 4
  store i32 %31, i32* %4, align 4
  br label %52

32:                                               ; preds = %26
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @EPIPE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* @errno, align 8
  %38 = load i64, i64* @ECONNRESET, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %32
  %41 = load i32, i32* @MBEDTLS_ERR_NET_CONN_RESET, align 4
  store i32 %41, i32* %4, align 4
  br label %52

42:                                               ; preds = %36
  %43 = load i64, i64* @errno, align 8
  %44 = load i64, i64* @EINTR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @MBEDTLS_ERR_SSL_WANT_WRITE, align 4
  store i32 %47, i32* %4, align 4
  br label %52

48:                                               ; preds = %42
  %49 = load i32, i32* @MBEDTLS_ERR_NET_SEND_FAILED, align 4
  store i32 %49, i32* %4, align 4
  br label %52

50:                                               ; preds = %18
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %48, %46, %40, %30, %16
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i64 @net_would_block(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
