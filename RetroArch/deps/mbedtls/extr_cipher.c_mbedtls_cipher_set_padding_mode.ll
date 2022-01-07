; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_cipher.c_mbedtls_cipher_set_padding_mode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_cipher.c_mbedtls_cipher_set_padding_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@MBEDTLS_MODE_CBC = common dso_local global i64 0, align 8
@MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@get_no_padding = common dso_local global i32 0, align 4
@MBEDTLS_ERR_CIPHER_FEATURE_UNAVAILABLE = common dso_local global i32 0, align 4
@add_one_and_zeros_padding = common dso_local global i32* null, align 8
@add_pkcs_padding = common dso_local global i32* null, align 8
@add_zeros_and_len_padding = common dso_local global i32* null, align 8
@add_zeros_padding = common dso_local global i32* null, align 8
@get_one_and_zeros_padding = common dso_local global i32 0, align 4
@get_pkcs_padding = common dso_local global i32 0, align 4
@get_zeros_and_len_padding = common dso_local global i32 0, align 4
@get_zeros_padding = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_cipher_set_padding_mode(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %7 = icmp eq %struct.TYPE_5__* null, %6
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* @MBEDTLS_MODE_CBC, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %9, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %8, %2
  %17 = load i32, i32* @MBEDTLS_ERR_CIPHER_BAD_INPUT_DATA, align 4
  store i32 %17, i32* %3, align 4
  br label %29

18:                                               ; preds = %8
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %26 [
    i32 132, label %20
  ]

20:                                               ; preds = %18
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load i32, i32* @get_no_padding, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  br label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @MBEDTLS_ERR_CIPHER_FEATURE_UNAVAILABLE, align 4
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %26, %16
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
