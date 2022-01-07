; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pk_wrap.c_rsa_alt_sign_wrap.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pk_wrap.c_rsa_alt_sign_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32)*, i32 (i32, i32 (i8*, i8*, i64)*, i8*, i32, i32, i32, i8*, i8*)*, i32 }

@MBEDTLS_RSA_PRIVATE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PK_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64, i8*, i64*, i32 (i8*, i8*, i64)*, i8*)* @rsa_alt_sign_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_alt_sign_wrap(i8* %0, i32 %1, i8* %2, i64 %3, i8* %4, i64* %5, i32 (i8*, i8*, i64)* %6, i8* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32 (i8*, i8*, i64)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32 (i8*, i8*, i64)* %6, i32 (i8*, i8*, i64)** %15, align 8
  store i8* %7, i8** %16, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %19, %struct.TYPE_2__** %17, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64 (i32)*, i64 (i32)** %21, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i64 %22(i32 %25)
  %27 = load i64*, i64** %14, align 8
  store i64 %26, i64* %27, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32 (i32, i32 (i8*, i8*, i64)*, i8*, i32, i32, i32, i8*, i8*)*, i32 (i32, i32 (i8*, i8*, i64)*, i8*, i32, i32, i32, i8*, i8*)** %29, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %15, align 8
  %35 = load i8*, i8** %16, align 8
  %36 = load i32, i32* @MBEDTLS_RSA_PRIVATE, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i64, i64* %12, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i8*, i8** %11, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = call i32 %30(i32 %33, i32 (i8*, i8*, i64)* %34, i8* %35, i32 %36, i32 %37, i32 %39, i8* %40, i8* %41)
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
