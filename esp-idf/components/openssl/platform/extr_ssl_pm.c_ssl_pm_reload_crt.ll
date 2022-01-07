; ModuleID = '/home/carl/AnghaBench/esp-idf/components/openssl/platform/extr_ssl_pm.c_ssl_pm_reload_crt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/openssl/platform/extr_ssl_pm.c_ssl_pm_reload_crt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_7__*, %struct.ssl_pm* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.ssl_pm = type { i32 }
%struct.x509_pm = type { i64, i64 }
%struct.pkey_pm = type { i64, i64 }

@SSL_VERIFY_FAIL_IF_NO_PEER_CERT = common dso_local global i32 0, align 4
@MBEDTLS_SSL_VERIFY_REQUIRED = common dso_local global i32 0, align 4
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@MBEDTLS_SSL_VERIFY_OPTIONAL = common dso_local global i32 0, align 4
@SSL_VERIFY_CLIENT_ONCE = common dso_local global i32 0, align 4
@MBEDTLS_SSL_VERIFY_UNSET = common dso_local global i32 0, align 4
@MBEDTLS_SSL_VERIFY_NONE = common dso_local global i32 0, align 4
@SSL_PLATFORM_ERROR_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"mbedtls_ssl_conf_own_cert() return -0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @ssl_pm_reload_crt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_pm_reload_crt(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssl_pm*, align 8
  %6 = alloca %struct.x509_pm*, align 8
  %7 = alloca %struct.pkey_pm*, align 8
  %8 = alloca %struct.x509_pm*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 3
  %11 = load %struct.ssl_pm*, %struct.ssl_pm** %10, align 8
  store %struct.ssl_pm* %11, %struct.ssl_pm** %5, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.x509_pm*
  store %struct.x509_pm* %17, %struct.x509_pm** %6, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.pkey_pm*
  store %struct.pkey_pm* %25, %struct.pkey_pm** %7, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.x509_pm*
  store %struct.x509_pm* %33, %struct.x509_pm** %8, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SSL_VERIFY_FAIL_IF_NO_PEER_CERT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = load i32, i32* @MBEDTLS_SSL_VERIFY_REQUIRED, align 4
  store i32 %41, i32* %4, align 4
  br label %64

42:                                               ; preds = %1
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @MBEDTLS_SSL_VERIFY_OPTIONAL, align 4
  store i32 %50, i32* %4, align 4
  br label %63

51:                                               ; preds = %42
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SSL_VERIFY_CLIENT_ONCE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @MBEDTLS_SSL_VERIFY_UNSET, align 4
  store i32 %59, i32* %4, align 4
  br label %62

60:                                               ; preds = %51
  %61 = load i32, i32* @MBEDTLS_SSL_VERIFY_NONE, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %58
  br label %63

63:                                               ; preds = %62, %49
  br label %64

64:                                               ; preds = %63, %40
  %65 = load %struct.ssl_pm*, %struct.ssl_pm** %5, align 8
  %66 = getelementptr inbounds %struct.ssl_pm, %struct.ssl_pm* %65, i32 0, i32 0
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @mbedtls_ssl_conf_authmode(i32* %66, i32 %67)
  %69 = load %struct.x509_pm*, %struct.x509_pm** %6, align 8
  %70 = getelementptr inbounds %struct.x509_pm, %struct.x509_pm* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %64
  %74 = load %struct.ssl_pm*, %struct.ssl_pm** %5, align 8
  %75 = getelementptr inbounds %struct.ssl_pm, %struct.ssl_pm* %74, i32 0, i32 0
  %76 = load %struct.x509_pm*, %struct.x509_pm** %6, align 8
  %77 = getelementptr inbounds %struct.x509_pm, %struct.x509_pm* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @mbedtls_ssl_conf_ca_chain(i32* %75, i64 %78, i32* null)
  br label %93

80:                                               ; preds = %64
  %81 = load %struct.x509_pm*, %struct.x509_pm** %6, align 8
  %82 = getelementptr inbounds %struct.x509_pm, %struct.x509_pm* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load %struct.ssl_pm*, %struct.ssl_pm** %5, align 8
  %87 = getelementptr inbounds %struct.ssl_pm, %struct.ssl_pm* %86, i32 0, i32 0
  %88 = load %struct.x509_pm*, %struct.x509_pm** %6, align 8
  %89 = getelementptr inbounds %struct.x509_pm, %struct.x509_pm* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @mbedtls_ssl_conf_ca_chain(i32* %87, i64 %90, i32* null)
  br label %92

92:                                               ; preds = %85, %80
  br label %93

93:                                               ; preds = %92, %73
  %94 = load %struct.x509_pm*, %struct.x509_pm** %8, align 8
  %95 = getelementptr inbounds %struct.x509_pm, %struct.x509_pm* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %93
  %99 = load %struct.pkey_pm*, %struct.pkey_pm** %7, align 8
  %100 = getelementptr inbounds %struct.pkey_pm, %struct.pkey_pm* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %98
  %104 = load %struct.ssl_pm*, %struct.ssl_pm** %5, align 8
  %105 = getelementptr inbounds %struct.ssl_pm, %struct.ssl_pm* %104, i32 0, i32 0
  %106 = load %struct.x509_pm*, %struct.x509_pm** %8, align 8
  %107 = getelementptr inbounds %struct.x509_pm, %struct.x509_pm* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.pkey_pm*, %struct.pkey_pm** %7, align 8
  %110 = getelementptr inbounds %struct.pkey_pm, %struct.pkey_pm* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @mbedtls_ssl_conf_own_cert(i32* %105, i64 %108, i64 %111)
  store i32 %112, i32* %3, align 4
  br label %135

113:                                              ; preds = %98, %93
  %114 = load %struct.x509_pm*, %struct.x509_pm** %8, align 8
  %115 = getelementptr inbounds %struct.x509_pm, %struct.x509_pm* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %113
  %119 = load %struct.pkey_pm*, %struct.pkey_pm** %7, align 8
  %120 = getelementptr inbounds %struct.pkey_pm, %struct.pkey_pm* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %118
  %124 = load %struct.ssl_pm*, %struct.ssl_pm** %5, align 8
  %125 = getelementptr inbounds %struct.ssl_pm, %struct.ssl_pm* %124, i32 0, i32 0
  %126 = load %struct.x509_pm*, %struct.x509_pm** %8, align 8
  %127 = getelementptr inbounds %struct.x509_pm, %struct.x509_pm* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.pkey_pm*, %struct.pkey_pm** %7, align 8
  %130 = getelementptr inbounds %struct.pkey_pm, %struct.pkey_pm* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @mbedtls_ssl_conf_own_cert(i32* %125, i64 %128, i64 %131)
  store i32 %132, i32* %3, align 4
  br label %134

133:                                              ; preds = %118, %113
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %123
  br label %135

135:                                              ; preds = %134, %103
  %136 = load i32, i32* %3, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load i32, i32* @SSL_PLATFORM_ERROR_LEVEL, align 4
  %140 = load i32, i32* %3, align 4
  %141 = sub nsw i32 0, %140
  %142 = call i32 @SSL_DEBUG(i32 %139, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %141)
  store i32 -1, i32* %3, align 4
  br label %143

143:                                              ; preds = %138, %135
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @mbedtls_ssl_conf_authmode(i32*, i32) #1

declare dso_local i32 @mbedtls_ssl_conf_ca_chain(i32*, i64, i32*) #1

declare dso_local i32 @mbedtls_ssl_conf_own_cert(i32*, i64, i64) #1

declare dso_local i32 @SSL_DEBUG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
