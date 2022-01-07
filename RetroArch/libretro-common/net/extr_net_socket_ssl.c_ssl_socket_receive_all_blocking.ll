; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_socket_ssl.c_ssl_socket_receive_all_blocking.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_socket_ssl.c_ssl_socket_receive_all_blocking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_state = type { i32, i32 }

@MBEDTLS_ERR_SSL_WANT_READ = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_WANT_WRITE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_socket_receive_all_blocking(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ssl_state*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.ssl_state*
  store %struct.ssl_state* %12, %struct.ssl_state** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %9, align 8
  %15 = load %struct.ssl_state*, %struct.ssl_state** %8, align 8
  %16 = getelementptr inbounds %struct.ssl_state, %struct.ssl_state* %15, i32 0, i32 1
  %17 = call i32 @mbedtls_net_set_block(i32* %16)
  br label %18

18:                                               ; preds = %3, %32, %46
  %19 = load %struct.ssl_state*, %struct.ssl_state** %8, align 8
  %20 = getelementptr inbounds %struct.ssl_state, %struct.ssl_state* %19, i32 0, i32 0
  %21 = load i32*, i32** %9, align 8
  %22 = bitcast i32* %21 to i8*
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @mbedtls_ssl_read(i32* %20, i8* %22, i64 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @MBEDTLS_ERR_SSL_WANT_READ, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @MBEDTLS_ERR_SSL_WANT_WRITE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %18
  br label %18

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %47

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %47

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 -1, i32* %4, align 4
  br label %48

46:                                               ; preds = %42
  br label %18

47:                                               ; preds = %41, %37
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %45
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @mbedtls_net_set_block(i32*) #1

declare dso_local i32 @mbedtls_ssl_read(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
