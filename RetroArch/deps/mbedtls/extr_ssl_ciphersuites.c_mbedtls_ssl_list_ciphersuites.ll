; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_ciphersuites.c_mbedtls_ssl_list_ciphersuites.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_ciphersuites.c_mbedtls_ssl_list_ciphersuites.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@ssl_ciphersuites_supported_init = common dso_local global i32 0, align 4
@ciphersuite_preference = common dso_local global i32* null, align 8
@supported_ciphersuites = common dso_local global i32* null, align 8
@MAX_CIPHERSUITES = common dso_local global i32 0, align 4
@MBEDTLS_CIPHER_ARC4_128 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mbedtls_ssl_list_ciphersuites() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @ssl_ciphersuites_supported_init, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %38

5:                                                ; preds = %0
  %6 = load i32*, i32** @ciphersuite_preference, align 8
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** @supported_ciphersuites, align 8
  store i32* %7, i32** %2, align 8
  br label %8

8:                                                ; preds = %33, %5
  %9 = load i32*, i32** %1, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load i32*, i32** %2, align 8
  %14 = load i32*, i32** @supported_ciphersuites, align 8
  %15 = load i32, i32* @MAX_CIPHERSUITES, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = getelementptr inbounds i32, i32* %17, i64 -1
  %19 = icmp ult i32* %13, %18
  br label %20

20:                                               ; preds = %12, %8
  %21 = phi i1 [ false, %8 ], [ %19, %12 ]
  br i1 %21, label %22, label %36

22:                                               ; preds = %20
  %23 = load i32*, i32** %1, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.TYPE_3__* @mbedtls_ssl_ciphersuite_from_id(i32 %24)
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32*, i32** %1, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %2, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %2, align 8
  store i32 %29, i32* %30, align 4
  br label %32

32:                                               ; preds = %27, %22
  br label %33

33:                                               ; preds = %32
  %34 = load i32*, i32** %1, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %1, align 8
  br label %8

36:                                               ; preds = %20
  %37 = load i32*, i32** %2, align 8
  store i32 0, i32* %37, align 4
  store i32 1, i32* @ssl_ciphersuites_supported_init, align 4
  br label %38

38:                                               ; preds = %36, %0
  %39 = load i32*, i32** @supported_ciphersuites, align 8
  ret i32* %39
}

declare dso_local %struct.TYPE_3__* @mbedtls_ssl_ciphersuite_from_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
