; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/console/components/cmd_nvs/extr_cmd_nvs.c_erase.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/console/components/cmd_nvs/extr_cmd_nvs.c_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_namespace = common dso_local global i32 0, align 4
@NVS_READWRITE = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Value with key '%s' erased\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @erase(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @current_namespace, align 4
  %6 = load i32, i32* @NVS_READWRITE, align 4
  %7 = call i64 @nvs_open(i32 %5, i32 %6, i32* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @ESP_OK, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = call i64 @nvs_erase_key(i32 %12, i8* %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @ESP_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @nvs_commit(i32 %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @ESP_OK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @TAG, align 4
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @ESP_LOGI(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %24, %18
  br label %29

29:                                               ; preds = %28, %11
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @nvs_close(i32 %30)
  br label %32

32:                                               ; preds = %29, %1
  %33 = load i64, i64* %4, align 8
  ret i64 %33
}

declare dso_local i64 @nvs_open(i32, i32, i32*) #1

declare dso_local i64 @nvs_erase_key(i32, i8*) #1

declare dso_local i64 @nvs_commit(i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i8*) #1

declare dso_local i32 @nvs_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
