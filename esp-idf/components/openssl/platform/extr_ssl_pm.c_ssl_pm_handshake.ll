; ModuleID = '/home/carl/AnghaBench/esp-idf/components/openssl/platform/extr_ssl_pm.c_ssl_pm_handshake.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/openssl/platform/extr_ssl_pm.c_ssl_pm_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.ssl_pm = type { i32 }
%struct.x509_pm = type { i32* }

@MBEDTLS_ERR_SSL_WANT_READ = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_WANT_WRITE = common dso_local global i32 0, align 4
@SSL_PLATFORM_ERROR_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"mbedtls_ssl_handshake() return -0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_pm_handshake(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssl_pm*, align 8
  %6 = alloca %struct.x509_pm*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.ssl_pm*
  store %struct.ssl_pm* %10, %struct.ssl_pm** %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = call i32 @ssl_pm_reload_crt(%struct.TYPE_8__* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

16:                                               ; preds = %1
  %17 = call i32 (...) @ssl_speed_up_enter()
  br label %18

18:                                               ; preds = %32, %16
  %19 = load %struct.ssl_pm*, %struct.ssl_pm** %5, align 8
  %20 = getelementptr inbounds %struct.ssl_pm, %struct.ssl_pm* %19, i32 0, i32 0
  %21 = call i32 @mbedtls_handshake(i32* %20)
  store i32 %21, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @MBEDTLS_ERR_SSL_WANT_READ, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @MBEDTLS_ERR_SSL_WANT_WRITE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %33

32:                                               ; preds = %27, %23
  br label %18

33:                                               ; preds = %31, %18
  %34 = call i32 (...) @ssl_speed_up_exit()
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* @SSL_PLATFORM_ERROR_LEVEL, align 4
  %39 = load i32, i32* %4, align 4
  %40 = sub nsw i32 0, %39
  %41 = call i32 @SSL_DEBUG(i32 %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32 0, i32* %4, align 4
  br label %57

42:                                               ; preds = %33
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.x509_pm*
  store %struct.x509_pm* %50, %struct.x509_pm** %6, align 8
  %51 = load %struct.ssl_pm*, %struct.ssl_pm** %5, align 8
  %52 = getelementptr inbounds %struct.ssl_pm, %struct.ssl_pm* %51, i32 0, i32 0
  %53 = call i64 @mbedtls_ssl_get_peer_cert(i32* %52)
  %54 = inttoptr i64 %53 to i32*
  %55 = load %struct.x509_pm*, %struct.x509_pm** %6, align 8
  %56 = getelementptr inbounds %struct.x509_pm, %struct.x509_pm* %55, i32 0, i32 0
  store i32* %54, i32** %56, align 8
  store i32 1, i32* %4, align 4
  br label %57

57:                                               ; preds = %42, %37
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %15
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @ssl_pm_reload_crt(%struct.TYPE_8__*) #1

declare dso_local i32 @ssl_speed_up_enter(...) #1

declare dso_local i32 @mbedtls_handshake(i32*) #1

declare dso_local i32 @ssl_speed_up_exit(...) #1

declare dso_local i32 @SSL_DEBUG(i32, i8*, i32) #1

declare dso_local i64 @mbedtls_ssl_get_peer_cert(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
