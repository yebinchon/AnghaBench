; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pk_wrap.c_rsa_alt_decrypt_wrap.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pk_wrap.c_rsa_alt_decrypt_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32)*, i32 (i32, i32, i64*, i8*, i8*, i64)*, i32 }

@MBEDTLS_ERR_RSA_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_RSA_PRIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i8*, i64*, i64, i32 (i8*, i8*, i64)*, i8*)* @rsa_alt_decrypt_wrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_alt_decrypt_wrap(i8* %0, i8* %1, i64 %2, i8* %3, i64* %4, i64 %5, i32 (i8*, i8*, i64)* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32 (i8*, i8*, i64)*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i64* %4, i64** %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 (i8*, i8*, i64)* %6, i32 (i8*, i8*, i64)** %16, align 8
  store i8* %7, i8** %17, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %18, align 8
  %21 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %16, align 8
  %22 = load i8*, i8** %17, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64 (i32)*, i64 (i32)** %25, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 %26(i32 %29)
  %31 = icmp ne i64 %23, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %8
  %33 = load i32, i32* @MBEDTLS_ERR_RSA_BAD_INPUT_DATA, align 4
  store i32 %33, i32* %9, align 4
  br label %47

34:                                               ; preds = %8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32 (i32, i32, i64*, i8*, i8*, i64)*, i32 (i32, i32, i64*, i8*, i8*, i64)** %36, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MBEDTLS_RSA_PRIVATE, align 4
  %42 = load i64*, i64** %14, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = load i64, i64* %15, align 8
  %46 = call i32 %37(i32 %40, i32 %41, i64* %42, i8* %43, i8* %44, i64 %45)
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %34, %32
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
