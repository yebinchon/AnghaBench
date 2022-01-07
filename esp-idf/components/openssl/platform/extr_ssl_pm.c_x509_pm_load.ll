; ModuleID = '/home/carl/AnghaBench/esp-idf/components/openssl/platform/extr_ssl_pm.c_x509_pm_load.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/openssl/platform/extr_ssl_pm.c_x509_pm_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.x509_pm = type { i8* }

@SSL_PLATFORM_ERROR_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"no enough memory > (x509_pm->x509_crt)\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"no enough memory > (load_buf)\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"mbedtls_x509_crt_parse return -0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x509_pm_load(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.x509_pm*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.x509_pm*
  store %struct.x509_pm* %14, %struct.x509_pm** %10, align 8
  %15 = load %struct.x509_pm*, %struct.x509_pm** %10, align 8
  %16 = getelementptr inbounds %struct.x509_pm, %struct.x509_pm* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.x509_pm*, %struct.x509_pm** %10, align 8
  %21 = getelementptr inbounds %struct.x509_pm, %struct.x509_pm* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @mbedtls_x509_crt_free(i8* %22)
  br label %24

24:                                               ; preds = %19, %3
  %25 = load %struct.x509_pm*, %struct.x509_pm** %10, align 8
  %26 = getelementptr inbounds %struct.x509_pm, %struct.x509_pm* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %24
  %30 = call i8* @ssl_mem_malloc(i32 4)
  %31 = load %struct.x509_pm*, %struct.x509_pm** %10, align 8
  %32 = getelementptr inbounds %struct.x509_pm, %struct.x509_pm* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.x509_pm*, %struct.x509_pm** %10, align 8
  %34 = getelementptr inbounds %struct.x509_pm, %struct.x509_pm* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @SSL_PLATFORM_ERROR_LEVEL, align 4
  %39 = call i32 (i32, i8*, ...) @SSL_DEBUG(i32 %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %91

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %24
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  %44 = call i8* @ssl_mem_malloc(i32 %43)
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @SSL_PLATFORM_ERROR_LEVEL, align 4
  %49 = call i32 (i32, i8*, ...) @SSL_DEBUG(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %80

50:                                               ; preds = %41
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @ssl_memcpy(i8* %51, i8* %52, i32 %53)
  %55 = load i8*, i8** %9, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 0, i8* %58, align 1
  %59 = load %struct.x509_pm*, %struct.x509_pm** %10, align 8
  %60 = getelementptr inbounds %struct.x509_pm, %struct.x509_pm* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @mbedtls_x509_crt_init(i8* %61)
  %63 = load %struct.x509_pm*, %struct.x509_pm** %10, align 8
  %64 = getelementptr inbounds %struct.x509_pm, %struct.x509_pm* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  %69 = call i32 @mbedtls_x509_crt_parse(i8* %65, i8* %66, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @ssl_mem_free(i8* %70)
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %50
  %75 = load i32, i32* @SSL_PLATFORM_ERROR_LEVEL, align 4
  %76 = load i32, i32* %8, align 4
  %77 = sub nsw i32 0, %76
  %78 = call i32 (i32, i8*, ...) @SSL_DEBUG(i32 %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %80

79:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %92

80:                                               ; preds = %74, %47
  %81 = load %struct.x509_pm*, %struct.x509_pm** %10, align 8
  %82 = getelementptr inbounds %struct.x509_pm, %struct.x509_pm* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @mbedtls_x509_crt_free(i8* %83)
  %85 = load %struct.x509_pm*, %struct.x509_pm** %10, align 8
  %86 = getelementptr inbounds %struct.x509_pm, %struct.x509_pm* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @ssl_mem_free(i8* %87)
  %89 = load %struct.x509_pm*, %struct.x509_pm** %10, align 8
  %90 = getelementptr inbounds %struct.x509_pm, %struct.x509_pm* %89, i32 0, i32 0
  store i8* null, i8** %90, align 8
  br label %91

91:                                               ; preds = %80, %37
  store i32 -1, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %79
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @mbedtls_x509_crt_free(i8*) #1

declare dso_local i8* @ssl_mem_malloc(i32) #1

declare dso_local i32 @SSL_DEBUG(i32, i8*, ...) #1

declare dso_local i32 @ssl_memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mbedtls_x509_crt_init(i8*) #1

declare dso_local i32 @mbedtls_x509_crt_parse(i8*, i8*, i32) #1

declare dso_local i32 @ssl_mem_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
