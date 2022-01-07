; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_curlx.c_sslctxfun.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_curlx.c_sslctxfun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"SSL_CTX_use_certificate problem\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"SSL_CTX_use_PrivateKey\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"SSL_CTX_check_private_key\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"RC4-MD5\00", align 1
@SSL_MODE_AUTO_RETRY = common dso_local global i32 0, align 4
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@ZERO_NULL = common dso_local global i32 0, align 4
@ssl_app_verify_callback = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@CURLE_SSL_CERTPROBLEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @sslctxfun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sslctxfun(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @SSL_CTX_use_certificate(i32* %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @BIO_printf(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %77

25:                                               ; preds = %3
  %26 = load i32*, i32** %9, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @SSL_CTX_use_PrivateKey(i32* %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @BIO_printf(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %77

37:                                               ; preds = %25
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @SSL_CTX_check_private_key(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @BIO_printf(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %77

46:                                               ; preds = %37
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @SSL_CTX_set_quiet_shutdown(i32* %47, i32 1)
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @SSL_CTX_set_cipher_list(i32* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* @SSL_MODE_AUTO_RETRY, align 4
  %53 = call i32 @SSL_CTX_set_mode(i32* %51, i32 %52)
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @SSL_CTX_get_cert_store(i32* %54)
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @sk_X509_num(i32 %61)
  %63 = sub nsw i64 %62, 1
  %64 = call i32 @sk_X509_value(i32 %58, i64 %63)
  %65 = call i32 @X509_STORE_add_cert(i32 %55, i32 %64)
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @SSL_CTX_set_verify_depth(i32* %66, i32 2)
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %70 = load i32, i32* @ZERO_NULL, align 4
  %71 = call i32 @SSL_CTX_set_verify(i32* %68, i32 %69, i32 %70)
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* @ssl_app_verify_callback, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @SSL_CTX_set_cert_verify_callback(i32* %72, i32 %73, i8* %74)
  %76 = load i32, i32* @CURLE_OK, align 4
  store i32 %76, i32* %4, align 4
  br label %83

77:                                               ; preds = %41, %32, %20
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ERR_print_errors(i32 %80)
  %82 = load i32, i32* @CURLE_SSL_CERTPROBLEM, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %77, %46
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @SSL_CTX_use_certificate(i32*, i32) #1

declare dso_local i32 @BIO_printf(i32, i8*) #1

declare dso_local i32 @SSL_CTX_use_PrivateKey(i32*, i32) #1

declare dso_local i32 @SSL_CTX_check_private_key(i32*) #1

declare dso_local i32 @SSL_CTX_set_quiet_shutdown(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_cipher_list(i32*, i8*) #1

declare dso_local i32 @SSL_CTX_set_mode(i32*, i32) #1

declare dso_local i32 @X509_STORE_add_cert(i32, i32) #1

declare dso_local i32 @SSL_CTX_get_cert_store(i32*) #1

declare dso_local i32 @sk_X509_value(i32, i64) #1

declare dso_local i64 @sk_X509_num(i32) #1

declare dso_local i32 @SSL_CTX_set_verify_depth(i32*, i32) #1

declare dso_local i32 @SSL_CTX_set_verify(i32*, i32, i32) #1

declare dso_local i32 @SSL_CTX_set_cert_verify_callback(i32*, i32, i8*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
