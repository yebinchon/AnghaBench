; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_socket_ssl.c_ssl_socket_connect.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_socket_ssl.c_ssl_socket_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_state = type { %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MBEDTLS_SSL_IS_CLIENT = common dso_local global i32 0, align 4
@MBEDTLS_SSL_TRANSPORT_STREAM = common dso_local global i32 0, align 4
@MBEDTLS_SSL_PRESET_DEFAULT = common dso_local global i32 0, align 4
@MBEDTLS_SSL_VERIFY_OPTIONAL = common dso_local global i32 0, align 4
@mbedtls_ctr_drbg_random = common dso_local global i32 0, align 4
@ssl_debug = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@mbedtls_net_send = common dso_local global i32 0, align 4
@mbedtls_net_recv = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_WANT_READ = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_WANT_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"  ! \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_socket_connect(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ssl_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [512 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.ssl_state*
  store %struct.ssl_state* %15, %struct.ssl_state** %10, align 8
  %16 = load %struct.ssl_state*, %struct.ssl_state** %10, align 8
  %17 = getelementptr inbounds %struct.ssl_state, %struct.ssl_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @socket_connect(i32 %19, i8* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %99

25:                                               ; preds = %4
  %26 = load %struct.ssl_state*, %struct.ssl_state** %10, align 8
  %27 = getelementptr inbounds %struct.ssl_state, %struct.ssl_state* %26, i32 0, i32 3
  %28 = load i32, i32* @MBEDTLS_SSL_IS_CLIENT, align 4
  %29 = load i32, i32* @MBEDTLS_SSL_TRANSPORT_STREAM, align 4
  %30 = load i32, i32* @MBEDTLS_SSL_PRESET_DEFAULT, align 4
  %31 = call i64 @mbedtls_ssl_config_defaults(i32* %27, i32 %28, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %99

34:                                               ; preds = %25
  %35 = load %struct.ssl_state*, %struct.ssl_state** %10, align 8
  %36 = getelementptr inbounds %struct.ssl_state, %struct.ssl_state* %35, i32 0, i32 3
  %37 = load i32, i32* @MBEDTLS_SSL_VERIFY_OPTIONAL, align 4
  %38 = call i32 @mbedtls_ssl_conf_authmode(i32* %36, i32 %37)
  %39 = load %struct.ssl_state*, %struct.ssl_state** %10, align 8
  %40 = getelementptr inbounds %struct.ssl_state, %struct.ssl_state* %39, i32 0, i32 3
  %41 = load %struct.ssl_state*, %struct.ssl_state** %10, align 8
  %42 = getelementptr inbounds %struct.ssl_state, %struct.ssl_state* %41, i32 0, i32 5
  %43 = call i32 @mbedtls_ssl_conf_ca_chain(i32* %40, i32* %42, i32* null)
  %44 = load %struct.ssl_state*, %struct.ssl_state** %10, align 8
  %45 = getelementptr inbounds %struct.ssl_state, %struct.ssl_state* %44, i32 0, i32 3
  %46 = load i32, i32* @mbedtls_ctr_drbg_random, align 4
  %47 = load %struct.ssl_state*, %struct.ssl_state** %10, align 8
  %48 = getelementptr inbounds %struct.ssl_state, %struct.ssl_state* %47, i32 0, i32 4
  %49 = call i32 @mbedtls_ssl_conf_rng(i32* %45, i32 %46, i32* %48)
  %50 = load %struct.ssl_state*, %struct.ssl_state** %10, align 8
  %51 = getelementptr inbounds %struct.ssl_state, %struct.ssl_state* %50, i32 0, i32 3
  %52 = load i32, i32* @ssl_debug, align 4
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 @mbedtls_ssl_conf_dbg(i32* %51, i32 %52, i32 %53)
  %55 = load %struct.ssl_state*, %struct.ssl_state** %10, align 8
  %56 = getelementptr inbounds %struct.ssl_state, %struct.ssl_state* %55, i32 0, i32 1
  %57 = load %struct.ssl_state*, %struct.ssl_state** %10, align 8
  %58 = getelementptr inbounds %struct.ssl_state, %struct.ssl_state* %57, i32 0, i32 3
  %59 = call i64 @mbedtls_ssl_setup(i32* %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %99

62:                                               ; preds = %34
  %63 = load %struct.ssl_state*, %struct.ssl_state** %10, align 8
  %64 = getelementptr inbounds %struct.ssl_state, %struct.ssl_state* %63, i32 0, i32 1
  %65 = load %struct.ssl_state*, %struct.ssl_state** %10, align 8
  %66 = getelementptr inbounds %struct.ssl_state, %struct.ssl_state* %65, i32 0, i32 0
  %67 = load i32, i32* @mbedtls_net_send, align 4
  %68 = load i32, i32* @mbedtls_net_recv, align 4
  %69 = call i32 @mbedtls_ssl_set_bio(i32* %64, %struct.TYPE_2__* %66, i32 %67, i32 %68, i32* null)
  br label %70

70:                                               ; preds = %84, %62
  %71 = load %struct.ssl_state*, %struct.ssl_state** %10, align 8
  %72 = getelementptr inbounds %struct.ssl_state, %struct.ssl_state* %71, i32 0, i32 1
  %73 = call i32 @mbedtls_ssl_handshake(i32* %72)
  store i32 %73, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @MBEDTLS_ERR_SSL_WANT_READ, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @MBEDTLS_ERR_SSL_WANT_WRITE, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 -1, i32* %5, align 4
  br label %99

84:                                               ; preds = %79, %75
  br label %70

85:                                               ; preds = %70
  %86 = load %struct.ssl_state*, %struct.ssl_state** %10, align 8
  %87 = getelementptr inbounds %struct.ssl_state, %struct.ssl_state* %86, i32 0, i32 1
  %88 = call i32 @mbedtls_ssl_get_verify_result(i32* %87)
  store i32 %88, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @mbedtls_x509_crt_verify_info(i8* %91, i32 512, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %90, %85
  %95 = load %struct.ssl_state*, %struct.ssl_state** %10, align 8
  %96 = getelementptr inbounds %struct.ssl_state, %struct.ssl_state* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %94, %83, %61, %33, %24
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i64 @socket_connect(i32, i8*, i32) #1

declare dso_local i64 @mbedtls_ssl_config_defaults(i32*, i32, i32, i32) #1

declare dso_local i32 @mbedtls_ssl_conf_authmode(i32*, i32) #1

declare dso_local i32 @mbedtls_ssl_conf_ca_chain(i32*, i32*, i32*) #1

declare dso_local i32 @mbedtls_ssl_conf_rng(i32*, i32, i32*) #1

declare dso_local i32 @mbedtls_ssl_conf_dbg(i32*, i32, i32) #1

declare dso_local i64 @mbedtls_ssl_setup(i32*, i32*) #1

declare dso_local i32 @mbedtls_ssl_set_bio(i32*, %struct.TYPE_2__*, i32, i32, i32*) #1

declare dso_local i32 @mbedtls_ssl_handshake(i32*) #1

declare dso_local i32 @mbedtls_ssl_get_verify_result(i32*) #1

declare dso_local i32 @mbedtls_x509_crt_verify_info(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
