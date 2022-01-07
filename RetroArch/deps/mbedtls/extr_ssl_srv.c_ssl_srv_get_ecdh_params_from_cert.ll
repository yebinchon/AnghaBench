; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_srv.c_ssl_srv_get_ecdh_params_from_cert.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_srv.c_ssl_srv_get_ecdh_params_from_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@MBEDTLS_PK_ECKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"server key not ECDH capable\00", align 1
@MBEDTLS_ERR_SSL_PK_TYPE_MISMATCH = common dso_local global i32 0, align 4
@MBEDTLS_ECDH_OURS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"mbedtls_ecdh_get_params\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @ssl_srv_get_ecdh_params_from_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_srv_get_ecdh_params_from_cert(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = call i32* @mbedtls_ssl_own_key(%struct.TYPE_6__* %5)
  %7 = load i32, i32* @MBEDTLS_PK_ECKEY, align 4
  %8 = call i32 @mbedtls_pk_can_do(i32* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @MBEDTLS_ERR_SSL_PK_TYPE_MISMATCH, align 4
  store i32 %12, i32* %2, align 4
  br label %30

13:                                               ; preds = %1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = call i32* @mbedtls_ssl_own_key(%struct.TYPE_6__* %18)
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mbedtls_pk_ec(i32 %20)
  %22 = load i32, i32* @MBEDTLS_ECDH_OURS, align 4
  %23 = call i32 @mbedtls_ecdh_get_params(i32* %17, i32 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %13
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @MBEDTLS_SSL_DEBUG_RET(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %25, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @mbedtls_pk_can_do(i32*, i32) #1

declare dso_local i32* @mbedtls_ssl_own_key(%struct.TYPE_6__*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @mbedtls_ecdh_get_params(i32*, i32, i32) #1

declare dso_local i32 @mbedtls_pk_ec(i32) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_RET(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
