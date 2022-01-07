; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cookie.c_ssl_cookie_hmac.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cookie.c_ssl_cookie_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COOKIE_MD_OUTLEN = common dso_local global i32 0, align 4
@COOKIE_HMAC_LEN = common dso_local global i64 0, align 8
@MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8**, i8*, i8*, i64)* @ssl_cookie_hmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_cookie_hmac(i32* %0, i8* %1, i8** %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load i32, i32* @COOKIE_MD_OUTLEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load i8**, i8*** %10, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = ptrtoint i8* %21 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = load i64, i64* @COOKIE_HMAC_LEN, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i32, i32* @MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL, align 4
  store i32 %30, i32* %7, align 4
  store i32 1, i32* %16, align 4
  br label %61

31:                                               ; preds = %6
  %32 = load i32*, i32** %8, align 8
  %33 = call i64 @mbedtls_md_hmac_reset(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %31
  %36 = load i32*, i32** %8, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i64 @mbedtls_md_hmac_update(i32* %36, i8* %37, i64 4)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = load i32*, i32** %8, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call i64 @mbedtls_md_hmac_update(i32* %41, i8* %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = load i32*, i32** %8, align 8
  %48 = call i64 @mbedtls_md_hmac_finish(i32* %47, i8* %20)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46, %40, %35, %31
  %51 = load i32, i32* @MBEDTLS_ERR_SSL_INTERNAL_ERROR, align 4
  store i32 %51, i32* %7, align 4
  store i32 1, i32* %16, align 4
  br label %61

52:                                               ; preds = %46
  %53 = load i8**, i8*** %10, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = load i64, i64* @COOKIE_HMAC_LEN, align 8
  %56 = call i32 @memcpy(i8* %54, i8* %20, i64 %55)
  %57 = load i64, i64* @COOKIE_HMAC_LEN, align 8
  %58 = load i8**, i8*** %10, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 %57
  store i8* %60, i8** %58, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %16, align 4
  br label %61

61:                                               ; preds = %52, %50, %29
  %62 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @mbedtls_md_hmac_reset(i32*) #2

declare dso_local i64 @mbedtls_md_hmac_update(i32*, i8*, i64) #2

declare dso_local i64 @mbedtls_md_hmac_finish(i32*, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
