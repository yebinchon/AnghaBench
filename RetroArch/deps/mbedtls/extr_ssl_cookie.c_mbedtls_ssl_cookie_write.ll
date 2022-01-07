; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cookie.c_mbedtls_ssl_cookie_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cookie.c_mbedtls_ssl_cookie_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@MBEDTLS_ERR_SSL_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@COOKIE_LEN = common dso_local global i64 0, align 8
@MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_INTERNAL_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_ERR_THREADING_MUTEX_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_cookie_write(i8* %0, i8** %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_2__*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %13, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %18 = icmp eq %struct.TYPE_2__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i8*, i8** %10, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %5
  %23 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_INPUT_DATA, align 4
  store i32 %23, i32* %6, align 4
  br label %78

24:                                               ; preds = %19
  %25 = load i8*, i8** %9, align 8
  %26 = load i8**, i8*** %8, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = ptrtoint i8* %25 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = load i64, i64* @COOKIE_LEN, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL, align 4
  store i32 %34, i32* %6, align 4
  br label %78

35:                                               ; preds = %24
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = sext i32 %38 to i64
  store i64 %40, i64* %14, align 8
  %41 = load i64, i64* %14, align 8
  %42 = lshr i64 %41, 24
  %43 = trunc i64 %42 to i8
  %44 = load i8**, i8*** %8, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 %43, i8* %46, align 1
  %47 = load i64, i64* %14, align 8
  %48 = lshr i64 %47, 16
  %49 = trunc i64 %48 to i8
  %50 = load i8**, i8*** %8, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  store i8 %49, i8* %52, align 1
  %53 = load i64, i64* %14, align 8
  %54 = lshr i64 %53, 8
  %55 = trunc i64 %54 to i8
  %56 = load i8**, i8*** %8, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  store i8 %55, i8* %58, align 1
  %59 = load i64, i64* %14, align 8
  %60 = trunc i64 %59 to i8
  %61 = load i8**, i8*** %8, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 3
  store i8 %60, i8* %63, align 1
  %64 = load i8**, i8*** %8, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 4
  store i8* %66, i8** %64, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i8**, i8*** %8, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 -4
  %72 = load i8**, i8*** %8, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @ssl_cookie_hmac(i32* %68, i8* %71, i8** %72, i8* %73, i8* %74, i64 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %35, %33, %22
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @ssl_cookie_hmac(i32*, i8*, i8**, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
