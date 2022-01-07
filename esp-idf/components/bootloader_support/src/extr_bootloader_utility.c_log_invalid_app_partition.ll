; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_bootloader_utility.c_log_invalid_app_partition.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_bootloader_utility.c_log_invalid_app_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c" is not bootable\00", align 1
@TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Factory app partition%s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Factory test app partition%s\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"OTA app partition slot %d%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @log_invalid_app_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_invalid_app_partition(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %13 [
    i32 129, label %5
    i32 128, label %9
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @TAG, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %7)
  br label %18

9:                                                ; preds = %1
  %10 = load i32, i32* @TAG, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %11)
  br label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @TAG, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %15, i8* %16)
  br label %18

18:                                               ; preds = %13, %9, %5
  ret void
}

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
