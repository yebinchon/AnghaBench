; ModuleID = '/home/carl/AnghaBench/esp-idf/components/openssl/platform/extr_ssl_pm.c_ssl_pm_read.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/openssl/platform/extr_ssl_pm.c_ssl_pm_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.ssl_pm = type { i32 }

@SSL_PLATFORM_ERROR_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"mbedtls_ssl_read() return -0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_pm_read(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ssl_pm*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ssl_pm*
  store %struct.ssl_pm* %12, %struct.ssl_pm** %8, align 8
  %13 = load %struct.ssl_pm*, %struct.ssl_pm** %8, align 8
  %14 = getelementptr inbounds %struct.ssl_pm, %struct.ssl_pm* %13, i32 0, i32 0
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @mbedtls_ssl_read(i32* %14, i8* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* @SSL_PLATFORM_ERROR_LEVEL, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 0, %22
  %24 = call i32 @SSL_DEBUG(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 -1, i32* %7, align 4
  br label %25

25:                                               ; preds = %20, %3
  %26 = load i32, i32* %7, align 4
  ret i32 %26
}

declare dso_local i32 @mbedtls_ssl_read(i32*, i8*, i32) #1

declare dso_local i32 @SSL_DEBUG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
