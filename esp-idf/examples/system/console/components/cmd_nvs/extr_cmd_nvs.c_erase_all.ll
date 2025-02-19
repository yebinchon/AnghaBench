; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/console/components/cmd_nvs/extr_cmd_nvs.c_erase_all.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/console/components/cmd_nvs/extr_cmd_nvs.c_erase_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NVS_READWRITE = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Namespace '%s' was %s erased\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @erase_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @erase_all(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = load i32, i32* @NVS_READWRITE, align 4
  %7 = call i64 @nvs_open(i8* %5, i32 %6, i32* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @ESP_OK, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @nvs_erase_all(i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @ESP_OK, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @nvs_commit(i32 %18)
  store i64 %19, i64* %4, align 8
  br label %20

20:                                               ; preds = %17, %11
  br label %21

21:                                               ; preds = %20, %1
  %22 = load i32, i32* @TAG, align 4
  %23 = load i8*, i8** %2, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @ESP_OK, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %29 = call i32 @ESP_LOGI(i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %28)
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @nvs_close(i32 %30)
  %32 = load i64, i64* @ESP_OK, align 8
  ret i64 %32
}

declare dso_local i64 @nvs_open(i8*, i32, i32*) #1

declare dso_local i64 @nvs_erase_all(i32) #1

declare dso_local i64 @nvs_commit(i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i8*, i8*) #1

declare dso_local i32 @nvs_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
