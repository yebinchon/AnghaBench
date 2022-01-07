; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_SslCertVerifyCallback.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_SslCertVerifyCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SslClientCertInfo = type { i8*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }

@PREVERIFY_ERR_MESSAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"SslCertVerifyCallback preverify error: '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SslCertVerifyCallback(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.SslClientCertInfo*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 (...) @SSL_get_ex_data_X509_STORE_CTX_idx()
  %13 = call i32* @X509_STORE_CTX_get_ex_data(i32* %11, i32 %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 (...) @GetSslClientCertIndex()
  %16 = call %struct.SslClientCertInfo* @SSL_get_ex_data(i32* %14, i32 %15)
  store %struct.SslClientCertInfo* %16, %struct.SslClientCertInfo** %6, align 8
  %17 = load %struct.SslClientCertInfo*, %struct.SslClientCertInfo** %6, align 8
  %18 = icmp ne %struct.SslClientCertInfo* %17, null
  br i1 %18, label %19, label %62

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @X509_STORE_CTX_get_error(i32* %20)
  %22 = load %struct.SslClientCertInfo*, %struct.SslClientCertInfo** %6, align 8
  %23 = getelementptr inbounds %struct.SslClientCertInfo, %struct.SslClientCertInfo* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.SslClientCertInfo*, %struct.SslClientCertInfo** %6, align 8
  %25 = getelementptr inbounds %struct.SslClientCertInfo, %struct.SslClientCertInfo* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 0, i8* %27, align 1
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %19
  %31 = load %struct.SslClientCertInfo*, %struct.SslClientCertInfo** %6, align 8
  %32 = getelementptr inbounds %struct.SslClientCertInfo, %struct.SslClientCertInfo* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @X509_verify_cert_error_string(i32 %33)
  store i8* %34, i8** %8, align 8
  %35 = load %struct.SslClientCertInfo*, %struct.SslClientCertInfo** %6, align 8
  %36 = getelementptr inbounds %struct.SslClientCertInfo, %struct.SslClientCertInfo* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* @PREVERIFY_ERR_MESSAGE_SIZE, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @StrCpy(i8* %37, i32 %38, i8* %39)
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @Debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %41)
  br label %61

43:                                               ; preds = %19
  %44 = load i32*, i32** %4, align 8
  %45 = call i32* @X509_STORE_CTX_get0_cert(i32* %44)
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load i32*, i32** %7, align 8
  %50 = call %struct.TYPE_6__* @X509ToX(i32* %49)
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %9, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %52 = call %struct.TYPE_6__* @CloneX(%struct.TYPE_6__* %51)
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %10, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %56 = call i32 @FreeX(%struct.TYPE_6__* %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %58 = load %struct.SslClientCertInfo*, %struct.SslClientCertInfo** %6, align 8
  %59 = getelementptr inbounds %struct.SslClientCertInfo, %struct.SslClientCertInfo* %58, i32 0, i32 1
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %59, align 8
  br label %60

60:                                               ; preds = %48, %43
  br label %61

61:                                               ; preds = %60, %30
  br label %62

62:                                               ; preds = %61, %2
  ret i32 1
}

declare dso_local i32* @X509_STORE_CTX_get_ex_data(i32*, i32) #1

declare dso_local i32 @SSL_get_ex_data_X509_STORE_CTX_idx(...) #1

declare dso_local %struct.SslClientCertInfo* @SSL_get_ex_data(i32*, i32) #1

declare dso_local i32 @GetSslClientCertIndex(...) #1

declare dso_local i32 @X509_STORE_CTX_get_error(i32*) #1

declare dso_local i8* @X509_verify_cert_error_string(i32) #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

declare dso_local i32 @Debug(i8*, i8*) #1

declare dso_local i32* @X509_STORE_CTX_get0_cert(i32*) #1

declare dso_local %struct.TYPE_6__* @X509ToX(i32*) #1

declare dso_local %struct.TYPE_6__* @CloneX(%struct.TYPE_6__*) #1

declare dso_local i32 @FreeX(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
