; ModuleID = '/home/carl/AnghaBench/esp-idf/components/openssl/platform/extr_ssl_pm.c_x509_pm_show_info.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/openssl/platform/extr_ssl_pm.c_x509_pm_show_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.x509_pm* }
%struct.x509_pm = type { i32*, i32* }

@X509_INFO_STRING_LENGTH = common dso_local global i64 0, align 8
@SSL_PLATFORM_ERROR_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no enough memory > (buf)\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"mbedtls_x509_crt_info() return -0x%x\00", align 1
@SSL_DEBUG_ON = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x509_pm_show_info(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.x509_pm*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.x509_pm*, %struct.x509_pm** %9, align 8
  store %struct.x509_pm* %10, %struct.x509_pm** %7, align 8
  %11 = load %struct.x509_pm*, %struct.x509_pm** %7, align 8
  %12 = getelementptr inbounds %struct.x509_pm, %struct.x509_pm* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.x509_pm*, %struct.x509_pm** %7, align 8
  %17 = getelementptr inbounds %struct.x509_pm, %struct.x509_pm* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %6, align 8
  br label %30

19:                                               ; preds = %1
  %20 = load %struct.x509_pm*, %struct.x509_pm** %7, align 8
  %21 = getelementptr inbounds %struct.x509_pm, %struct.x509_pm* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.x509_pm*, %struct.x509_pm** %7, align 8
  %26 = getelementptr inbounds %struct.x509_pm, %struct.x509_pm* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %6, align 8
  br label %29

28:                                               ; preds = %19
  store i32* null, i32** %6, align 8
  br label %29

29:                                               ; preds = %28, %24
  br label %30

30:                                               ; preds = %29, %15
  %31 = load i32*, i32** %6, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 -1, i32* %2, align 4
  br label %69

34:                                               ; preds = %30
  %35 = load i64, i64* @X509_INFO_STRING_LENGTH, align 8
  %36 = call i8* @ssl_mem_malloc(i64 %35)
  store i8* %36, i8** %5, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @SSL_PLATFORM_ERROR_LEVEL, align 4
  %41 = call i32 (i32, i8*, ...) @SSL_DEBUG(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %68

42:                                               ; preds = %34
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* @X509_INFO_STRING_LENGTH, align 8
  %45 = sub nsw i64 %44, 1
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @mbedtls_x509_crt_info(i8* %43, i64 %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load i32, i32* @SSL_PLATFORM_ERROR_LEVEL, align 4
  %52 = load i32, i32* %4, align 4
  %53 = sub nsw i32 0, %52
  %54 = call i32 (i32, i8*, ...) @SSL_DEBUG(i32 %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %65

55:                                               ; preds = %42
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8 0, i8* %59, align 1
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @ssl_mem_free(i8* %60)
  %62 = load i32, i32* @SSL_DEBUG_ON, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 (i32, i8*, ...) @SSL_DEBUG(i32 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  store i32 0, i32* %2, align 4
  br label %69

65:                                               ; preds = %50
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @ssl_mem_free(i8* %66)
  br label %68

68:                                               ; preds = %65, %39
  store i32 -1, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %55, %33
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i8* @ssl_mem_malloc(i64) #1

declare dso_local i32 @SSL_DEBUG(i32, i8*, ...) #1

declare dso_local i32 @mbedtls_x509_crt_info(i8*, i64, i8*, i32*) #1

declare dso_local i32 @ssl_mem_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
