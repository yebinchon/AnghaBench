; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkwrite.c_mbedtls_pk_write_key_pem.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkwrite.c_mbedtls_pk_write_key_pem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRV_DER_MAX_BYTES = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PK_FEATURE_UNAVAILABLE = common dso_local global i32 0, align 4
@MBEDTLS_PK_ECKEY = common dso_local global i64 0, align 8
@MBEDTLS_PK_RSA = common dso_local global i64 0, align 8
@PEM_BEGIN_PRIVATE_KEY_EC = common dso_local global i8* null, align 8
@PEM_BEGIN_PRIVATE_KEY_RSA = common dso_local global i8* null, align 8
@PEM_END_PRIVATE_KEY_EC = common dso_local global i8* null, align 8
@PEM_END_PRIVATE_KEY_RSA = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_write_key_pem(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i32, i32* @PRV_DER_MAX_BYTES, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  store i64 0, i64* %13, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = trunc i64 %16 to i32
  %21 = call i32 @mbedtls_pk_write_key_der(i32* %19, i8* %18, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @MBEDTLS_ERR_PK_FEATURE_UNAVAILABLE, align 4
  store i32 %26, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %28)
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mbedtls_pk_write_key_der(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
