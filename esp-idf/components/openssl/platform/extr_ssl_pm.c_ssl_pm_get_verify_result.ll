; ModuleID = '/home/carl/AnghaBench/esp-idf/components/openssl/platform/extr_ssl_pm.c_ssl_pm_get_verify_result.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/openssl/platform/extr_ssl_pm.c_ssl_pm_get_verify_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.ssl_pm = type { i32 }

@SSL_PLATFORM_ERROR_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"mbedtls_ssl_get_verify_result() return 0x%x\00", align 1
@X509_V_ERR_UNSPECIFIED = common dso_local global i64 0, align 8
@X509_V_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ssl_pm_get_verify_result(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ssl_pm*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.ssl_pm*
  store %struct.ssl_pm* %9, %struct.ssl_pm** %5, align 8
  %10 = load %struct.ssl_pm*, %struct.ssl_pm** %5, align 8
  %11 = getelementptr inbounds %struct.ssl_pm, %struct.ssl_pm* %10, i32 0, i32 0
  %12 = call i64 @mbedtls_ssl_get_verify_result(i32* %11)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @SSL_PLATFORM_ERROR_LEVEL, align 4
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @SSL_DEBUG(i32 %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i64, i64* @X509_V_ERR_UNSPECIFIED, align 8
  store i64 %19, i64* %4, align 8
  br label %22

20:                                               ; preds = %1
  %21 = load i64, i64* @X509_V_OK, align 8
  store i64 %21, i64* %4, align 8
  br label %22

22:                                               ; preds = %20, %15
  %23 = load i64, i64* %4, align 8
  ret i64 %23
}

declare dso_local i64 @mbedtls_ssl_get_verify_result(i32*) #1

declare dso_local i32 @SSL_DEBUG(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
