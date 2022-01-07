; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cli.c_ssl_parse_server_psk_hint.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cli.c_ssl_parse_server_psk_hint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"bad server key exchange message (psk_identity_hint length)\00", align 1
@MBEDTLS_ERR_SSL_BAD_HS_SERVER_KEY_EXCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i8*)* @ssl_parse_server_psk_hint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_server_psk_hint(i32* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @MBEDTLS_ERR_SSL_FEATURE_UNAVAILABLE, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl i32 %16, 8
  %18 = load i8**, i8*** %6, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %17, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %9, align 8
  %25 = load i8**, i8*** %6, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  store i8* %27, i8** %25, align 8
  %28 = load i8**, i8*** %6, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ugt i8* %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_SERVER_KEY_EXCHANGE, align 4
  store i32 %36, i32* %4, align 4
  br label %43

37:                                               ; preds = %3
  %38 = load i64, i64* %9, align 8
  %39 = load i8**, i8*** %6, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 %38
  store i8* %41, i8** %39, align 8
  store i32 0, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %37, %34
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
