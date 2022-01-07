; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/port/extr_net_sockets.c_mbedtls_net_recv_timeout.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/port/extr_net_sockets.c_mbedtls_net_recv_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MBEDTLS_ERR_NET_INVALID_CONTEXT = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_TIMEOUT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@MBEDTLS_ERR_SSL_WANT_READ = common dso_local global i32 0, align 4
@MBEDTLS_ERR_NET_RECV_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_net_recv_timeout(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.timeval, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @MBEDTLS_ERR_NET_INVALID_CONTEXT, align 4
  store i32 %21, i32* %5, align 4
  br label %62

22:                                               ; preds = %4
  %23 = call i32 @FD_ZERO(i32* %12)
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @FD_SET(i32 %24, i32* %12)
  %26 = load i32, i32* %9, align 4
  %27 = sdiv i32 %26, 1000
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = srem i32 %29, 1000
  %31 = mul nsw i32 %30, 1000
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  br label %39

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38, %37
  %40 = phi %struct.timeval* [ null, %37 ], [ %11, %38 ]
  %41 = call i32 @select(i32 %34, i32* %12, i32* null, i32* null, %struct.timeval* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @MBEDTLS_ERR_SSL_TIMEOUT, align 4
  store i32 %45, i32* %5, align 4
  br label %62

46:                                               ; preds = %39
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i64, i64* @errno, align 8
  %51 = load i64, i64* @EINTR, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @MBEDTLS_ERR_SSL_WANT_READ, align 4
  store i32 %54, i32* %5, align 4
  br label %62

55:                                               ; preds = %49
  %56 = load i32, i32* @MBEDTLS_ERR_NET_RECV_FAILED, align 4
  store i32 %56, i32* %5, align 4
  br label %62

57:                                               ; preds = %46
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @mbedtls_net_recv(i8* %58, i8* %59, i64 %60)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %57, %55, %53, %44, %20
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @mbedtls_net_recv(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
