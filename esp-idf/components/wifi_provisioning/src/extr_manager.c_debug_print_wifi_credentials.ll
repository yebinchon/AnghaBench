; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_debug_print_wifi_credentials.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_debug_print_wifi_credentials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s Wi-Fi SSID     : %.*s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s Wi-Fi Password : %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i8*)* @debug_print_wifi_credentials to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_print_wifi_credentials(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = bitcast %struct.TYPE_3__* %4 to { i64, i64 }*
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %0, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %6, align 8
  %14 = load i32, i32* @TAG, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @strnlen(i8* %18, i32 8)
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 (i32, i8*, i8*, i8*, ...) @ESP_LOGD(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %21, i8* %24)
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ugt i64 %31, 3
  %33 = zext i1 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %30, %34
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp ugt i64 %37, 3
  %39 = zext i1 %38 to i32
  %40 = mul nsw i32 2, %39
  %41 = sext i32 %40 to i64
  %42 = sub i64 %36, %41
  %43 = call i32 @memset(i64 %35, i8 signext 42, i64 %42)
  %44 = load i32, i32* @TAG, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 (i32, i8*, i8*, i8*, ...) @ESP_LOGD(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %45, i8* %48)
  br label %50

50:                                               ; preds = %28, %3
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @memset(i64, i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
