; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cli.c_ssl_parse_signature_algorithm.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cli.c_ssl_parse_signature_algorithm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@MBEDTLS_MD_NONE = common dso_local global i32 0, align 4
@MBEDTLS_PK_NONE = common dso_local global i32 0, align 4
@MBEDTLS_SSL_MINOR_VERSION_3 = common dso_local global i64 0, align 8
@MBEDTLS_ERR_SSL_BAD_HS_SERVER_KEY_EXCHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Server used unsupported HashAlgorithm %d\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"server used unsupported SignatureAlgorithm %d\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"server used HashAlgorithm %d that was not offered\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Server used SignatureAlgorithm %d\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Server used HashAlgorithm %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8**, i8*, i32*, i32*)* @ssl_parse_signature_algorithm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_signature_algorithm(%struct.TYPE_4__* %0, i8** %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %13 = load i32, i32* @MBEDTLS_MD_NONE, align 4
  %14 = load i32*, i32** %10, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @MBEDTLS_PK_NONE, align 4
  %16 = load i32*, i32** %11, align 8
  store i32 %15, i32* %16, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MBEDTLS_SSL_MINOR_VERSION_3, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %100

23:                                               ; preds = %5
  %24 = load i8**, i8*** %8, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ugt i8* %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_SERVER_KEY_EXCHANGE, align 4
  store i32 %30, i32* %6, align 4
  br label %100

31:                                               ; preds = %23
  %32 = load i8**, i8*** %8, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = call i32 @mbedtls_ssl_md_alg_from_hash(i8 zeroext %35)
  %37 = load i32*, i32** %10, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @MBEDTLS_MD_NONE, align 4
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %31
  %41 = load i8**, i8*** %8, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* %46)
  %48 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_SERVER_KEY_EXCHANGE, align 4
  store i32 %48, i32* %6, align 4
  br label %100

49:                                               ; preds = %31
  %50 = load i8**, i8*** %8, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = call i32 @mbedtls_ssl_pk_alg_from_sig(i8 zeroext %53)
  %55 = load i32*, i32** %11, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @MBEDTLS_PK_NONE, align 4
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %49
  %59 = load i8**, i8*** %8, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* %64)
  %66 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_SERVER_KEY_EXCHANGE, align 4
  store i32 %66, i32* %6, align 4
  br label %100

67:                                               ; preds = %49
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @mbedtls_ssl_check_sig_hash(%struct.TYPE_4__* %68, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = load i8**, i8*** %8, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  %80 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* %79)
  %81 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_SERVER_KEY_EXCHANGE, align 4
  store i32 %81, i32* %6, align 4
  br label %100

82:                                               ; preds = %67
  %83 = load i8**, i8*** %8, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* %88)
  %90 = load i8**, i8*** %8, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* %95)
  %97 = load i8**, i8*** %8, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  store i8* %99, i8** %97, align 8
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %82, %73, %58, %40, %29, %22
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @mbedtls_ssl_md_alg_from_hash(i8 zeroext) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @mbedtls_ssl_pk_alg_from_sig(i8 zeroext) #1

declare dso_local i64 @mbedtls_ssl_check_sig_hash(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
