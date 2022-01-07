; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_cred.c_tlsv1_add_cert.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_cred.c_tlsv1_add_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_certificate = type { i32 }

@pem_cert_begin = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"TLSv1: No PEM certificate tag found - assume DER format\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"TLSv1: Converting PEM format certificate into DER format\00", align 1
@pem_cert_end = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"TLSv1: Could not find PEM certificate end tag (%s)\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"TLSv1: Could not decode PEM certificate\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"TLSv1: Failed to parse PEM certificate after DER conversion\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x509_certificate**, i8*, i64)* @tlsv1_add_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlsv1_add_cert(%struct.x509_certificate** %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.x509_certificate**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.x509_certificate** %0, %struct.x509_certificate*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* @pem_cert_begin, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i8* @search_tag(i32 %12, i8* %13, i32 %15)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.x509_certificate**, %struct.x509_certificate*** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @tlsv1_add_cert_der(%struct.x509_certificate** %22, i8* %23, i64 %24)
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %4, align 4
  br label %101

27:                                               ; preds = %3
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %81, %27
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %100

33:                                               ; preds = %30
  %34 = load i32, i32* @pem_cert_begin, align 4
  %35 = call i32 @os_strlen(i32 %34)
  %36 = load i8*, i8** %8, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %8, align 8
  %39 = load i32, i32* @pem_cert_end, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8*, i8** %8, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = call i8* @search_tag(i32 %39, i8* %40, i32 %48)
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %33
  %53 = load i32, i32* @MSG_INFO, align 4
  %54 = load i32, i32* @pem_cert_end, align 4
  %55 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  store i32 -1, i32* %4, align 4
  br label %101

56:                                               ; preds = %33
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  %64 = call i8* @base64_decode(i8* %57, i32 %63, i64* %11)
  store i8* %64, i8** %10, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load i32, i32* @MSG_INFO, align 4
  %69 = call i32 (i32, i8*, ...) @wpa_printf(i32 %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %101

70:                                               ; preds = %56
  %71 = load %struct.x509_certificate**, %struct.x509_certificate*** %5, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i64 @tlsv1_add_cert_der(%struct.x509_certificate** %71, i8* %72, i64 %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load i32, i32* @MSG_INFO, align 4
  %78 = call i32 (i32, i8*, ...) @wpa_printf(i32 %77, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @os_free(i8* %79)
  store i32 -1, i32* %4, align 4
  br label %101

81:                                               ; preds = %70
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @os_free(i8* %82)
  %84 = load i32, i32* @pem_cert_end, align 4
  %85 = call i32 @os_strlen(i32 %84)
  %86 = load i8*, i8** %9, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %9, align 8
  %89 = load i32, i32* @pem_cert_begin, align 4
  %90 = load i8*, i8** %9, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  %94 = load i8*, i8** %9, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = trunc i64 %97 to i32
  %99 = call i8* @search_tag(i32 %89, i8* %90, i32 %98)
  store i8* %99, i8** %8, align 8
  br label %30

100:                                              ; preds = %30
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %76, %67, %52, %19
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i8* @search_tag(i32, i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @tlsv1_add_cert_der(%struct.x509_certificate**, i8*, i64) #1

declare dso_local i32 @os_strlen(i32) #1

declare dso_local i8* @base64_decode(i8*, i32, i64*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
