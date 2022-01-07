; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_sessioninfo.c_wrfu.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_sessioninfo.c_wrfu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_tlssessioninfo = type { i32, i32 }
%struct.TYPE_5__ = type { i8*, i32 }

@curl = common dso_local global i32 0, align 4
@CURLINFO_TLS_SESSION = common dso_local global i32 0, align 4
@GNUTLS_E_SUCCESS = common dso_local global i32 0, align 4
@GNUTLS_X509_FMT_DER = common dso_local global i32 0, align 4
@GNUTLS_CRT_PRINT_FULL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Certificate #%u: %.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i8*)* @wrfu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wrfu(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.curl_tlssessioninfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* @curl, align 4
  %19 = load i32, i32* @CURLINFO_TLS_SESSION, align 4
  %20 = call i32 @curl_easy_getinfo(i32 %18, i32 %19, %struct.curl_tlssessioninfo** %9)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %86, label %23

23:                                               ; preds = %4
  %24 = load %struct.curl_tlssessioninfo*, %struct.curl_tlssessioninfo** %9, align 8
  %25 = getelementptr inbounds %struct.curl_tlssessioninfo, %struct.curl_tlssessioninfo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %84 [
    i32 129, label %27
    i32 128, label %83
  ]

27:                                               ; preds = %23
  %28 = load %struct.curl_tlssessioninfo*, %struct.curl_tlssessioninfo** %9, align 8
  %29 = getelementptr inbounds %struct.curl_tlssessioninfo, %struct.curl_tlssessioninfo* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.TYPE_5__* @gnutls_certificate_get_peers(i32 %30, i32* %10)
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %11, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %82

34:                                               ; preds = %27
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %82

37:                                               ; preds = %34
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %78, %37
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %81

42:                                               ; preds = %38
  %43 = load i32, i32* @GNUTLS_E_SUCCESS, align 4
  %44 = call i32 @gnutls_x509_crt_init(i32* %14)
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %77

46:                                               ; preds = %42
  %47 = load i32, i32* @GNUTLS_E_SUCCESS, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %50 = load i32, i32* %13, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = load i32, i32* @GNUTLS_X509_FMT_DER, align 4
  %54 = call i32 @gnutls_x509_crt_import(i32 %48, %struct.TYPE_5__* %52, i32 %53)
  %55 = icmp eq i32 %47, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %46
  %57 = load i32, i32* @GNUTLS_E_SUCCESS, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @GNUTLS_CRT_PRINT_FULL, align 4
  %60 = call i32 @gnutls_x509_crt_print(i32 %58, i32 %59, %struct.TYPE_5__* %15)
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = load i32, i32* @stderr, align 4
  %64 = load i32, i32* %13, align 4
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %64, i8* %66, i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @gnutls_free(i32 %71)
  br label %73

73:                                               ; preds = %62, %56
  br label %74

74:                                               ; preds = %73, %46
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @gnutls_x509_crt_deinit(i32 %75)
  br label %77

77:                                               ; preds = %74, %42
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %13, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %13, align 4
  br label %38

81:                                               ; preds = %38
  br label %82

82:                                               ; preds = %81, %34, %27
  br label %85

83:                                               ; preds = %23
  br label %84

84:                                               ; preds = %23, %83
  br label %85

85:                                               ; preds = %84, %82
  br label %86

86:                                               ; preds = %85, %4
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* %7, align 8
  %89 = mul i64 %87, %88
  ret i64 %89
}

declare dso_local i32 @curl_easy_getinfo(i32, i32, %struct.curl_tlssessioninfo**) #1

declare dso_local %struct.TYPE_5__* @gnutls_certificate_get_peers(i32, i32*) #1

declare dso_local i32 @gnutls_x509_crt_init(i32*) #1

declare dso_local i32 @gnutls_x509_crt_import(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @gnutls_x509_crt_print(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @gnutls_free(i32) #1

declare dso_local i32 @gnutls_x509_crt_deinit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
