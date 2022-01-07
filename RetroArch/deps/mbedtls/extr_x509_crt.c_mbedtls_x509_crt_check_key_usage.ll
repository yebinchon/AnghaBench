; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_mbedtls_x509_crt_check_key_usage.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_mbedtls_x509_crt_check_key_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@MBEDTLS_X509_KU_ENCIPHER_ONLY = common dso_local global i32 0, align 4
@MBEDTLS_X509_KU_DECIPHER_ONLY = common dso_local global i32 0, align 4
@MBEDTLS_X509_EXT_KEY_USAGE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_BAD_INPUT_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_crt_check_key_usage(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @MBEDTLS_X509_KU_ENCIPHER_ONLY, align 4
  %10 = load i32, i32* @MBEDTLS_X509_KU_DECIPHER_ONLY, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MBEDTLS_X509_EXT_KEY_USAGE, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %8, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  store i32 %23, i32* %6, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %19
  %35 = load i32, i32* @MBEDTLS_ERR_X509_BAD_INPUT_DATA, align 4
  store i32 %35, i32* %3, align 4
  br label %52

36:                                               ; preds = %19
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %7, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i32, i32* @MBEDTLS_ERR_X509_BAD_INPUT_DATA, align 4
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %49, %34, %18
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
