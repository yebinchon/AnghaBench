; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spi_flash/extr_partition.c_ensure_partitions_loaded.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spi_flash/extr_partition.c_ensure_partitions_loaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_OK = common dso_local global i64 0, align 8
@s_partition_list = common dso_local global i32 0, align 4
@s_partition_list_lock = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Loading the partition table\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"load_partitions returned 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @ensure_partitions_loaded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ensure_partitions_loaded() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @ESP_OK, align 8
  store i64 %2, i64* %1, align 8
  %3 = call i64 @SLIST_EMPTY(i32* @s_partition_list)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %0
  %6 = call i32 @_lock_acquire(i32* @s_partition_list_lock)
  %7 = call i64 @SLIST_EMPTY(i32* @s_partition_list)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %5
  %10 = load i32, i32* @TAG, align 4
  %11 = call i32 @ESP_LOGD(i32 %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = call i64 (...) @load_partitions()
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @ESP_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load i32, i32* @TAG, align 4
  %18 = load i64, i64* %1, align 8
  %19 = call i32 @ESP_LOGE(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  br label %20

20:                                               ; preds = %16, %9
  br label %21

21:                                               ; preds = %20, %5
  %22 = call i32 @_lock_release(i32* @s_partition_list_lock)
  br label %23

23:                                               ; preds = %21, %0
  %24 = load i64, i64* %1, align 8
  ret i64 %24
}

declare dso_local i64 @SLIST_EMPTY(i32*) #1

declare dso_local i32 @_lock_acquire(i32*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

declare dso_local i64 @load_partitions(...) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i64) #1

declare dso_local i32 @_lock_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
