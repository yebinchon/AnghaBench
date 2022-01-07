; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cookie.c_mbedtls_ssl_cookie_setup.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cookie.c_mbedtls_ssl_cookie_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@COOKIE_MD_OUTLEN = common dso_local global i32 0, align 4
@COOKIE_MD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_cookie_setup(%struct.TYPE_3__* %0, i32 (i8*, i8*, i64)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32 (i8*, i8*, i64)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 (i8*, i8*, i64)* %1, i32 (i8*, i8*, i64)** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* @COOKIE_MD_OUTLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 %16(i8* %17, i8* %15, i64 %13)
  store i32 %18, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %44

22:                                               ; preds = %3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* @COOKIE_MD, align 4
  %26 = call i32 @mbedtls_md_info_from_type(i32 %25)
  %27 = call i32 @mbedtls_md_setup(i32* %24, i32 %26, i32 1)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %44

32:                                               ; preds = %22
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = trunc i64 %13 to i32
  %36 = call i32 @mbedtls_md_hmac_starts(i32* %34, i8* %15, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %44

41:                                               ; preds = %32
  %42 = trunc i64 %13 to i32
  %43 = call i32 @mbedtls_zeroize(i8* %15, i32 %42)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %44

44:                                               ; preds = %41, %39, %30, %20
  %45 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mbedtls_md_setup(i32*, i32, i32) #2

declare dso_local i32 @mbedtls_md_info_from_type(i32) #2

declare dso_local i32 @mbedtls_md_hmac_starts(i32*, i8*, i32) #2

declare dso_local i32 @mbedtls_zeroize(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
