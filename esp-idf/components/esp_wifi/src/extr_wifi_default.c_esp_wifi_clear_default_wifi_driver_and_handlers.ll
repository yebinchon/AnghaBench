; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_wifi/src/extr_wifi_default.c_esp_wifi_clear_default_wifi_driver_and_handlers.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_wifi/src/extr_wifi_default.c_esp_wifi_clear_default_wifi_driver_and_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_WIFI_IFS = common dso_local global i32 0, align 4
@s_wifi_netifs = common dso_local global i8** null, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Clearing wifi default handlers\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_wifi_clear_default_wifi_driver_and_handlers(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %30, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MAX_WIFI_IFS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %33

8:                                                ; preds = %4
  %9 = load i8**, i8*** @s_wifi_netifs, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8*, i8** %9, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = icmp eq i8* %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %8
  %17 = load i8**, i8*** @s_wifi_netifs, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  store i8* null, i8** %20, align 8
  br label %21

21:                                               ; preds = %16, %8
  %22 = load i8**, i8*** @s_wifi_netifs, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %33

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %4

33:                                               ; preds = %28, %4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @MAX_WIFI_IFS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @TAG, align 4
  %39 = call i32 @ESP_LOGD(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 (...) @_esp_wifi_clear_default_wifi_handlers()
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i8*, i8** %2, align 8
  %43 = call i32 @disconnect_and_destroy(i8* %42)
  ret i32 %43
}

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

declare dso_local i32 @_esp_wifi_clear_default_wifi_handlers(...) #1

declare dso_local i32 @disconnect_and_destroy(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
