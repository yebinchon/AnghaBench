; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/slave/main/extr_app_main.c_task_write_reg.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/slave/main/extr_app_main.c_task_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"write regs:\00", align 1
@ESP_LOG_INFO = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @task_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_write_reg() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca [64 x i64], align 16
  %4 = alloca i32, align 4
  %5 = call i64 @sdio_slave_read_reg(i32 1)
  store i64 %5, i64* %1, align 8
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %24, %0
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 64
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = icmp sge i32 %10, 28
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = icmp sle i32 %13, 31
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %24

16:                                               ; preds = %12, %9
  %17 = load i32, i32* %2, align 4
  %18 = load i64, i64* %1, align 8
  %19 = load i32, i32* %2, align 4
  %20 = mul nsw i32 3, %19
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = call i32 @sdio_slave_write_reg(i32 %17, i64 %22)
  br label %24

24:                                               ; preds = %16, %15
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %6

27:                                               ; preds = %6
  %28 = bitcast [64 x i64]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %28, i8 0, i64 512, i1 false)
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %45, %27
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 64
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = icmp sge i32 %33, 28
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = icmp sle i32 %36, 31
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %45

39:                                               ; preds = %35, %32
  %40 = load i32, i32* %4, align 4
  %41 = call i64 @sdio_slave_read_reg(i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [64 x i64], [64 x i64]* %3, i64 0, i64 %43
  store i64 %41, i64* %44, align 8
  br label %45

45:                                               ; preds = %39, %38
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %29

48:                                               ; preds = %29
  %49 = load i32, i32* @TAG, align 4
  %50 = call i32 @ESP_LOGI(i32 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @TAG, align 4
  %52 = getelementptr inbounds [64 x i64], [64 x i64]* %3, i64 0, i64 0
  %53 = load i32, i32* @ESP_LOG_INFO, align 4
  %54 = call i32 @ESP_LOG_BUFFER_HEXDUMP(i32 %51, i64* %52, i32 64, i32 %53)
  %55 = load i32, i32* @ESP_OK, align 4
  ret i32 %55
}

declare dso_local i64 @sdio_slave_read_reg(i32) #1

declare dso_local i32 @sdio_slave_write_reg(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @ESP_LOG_BUFFER_HEXDUMP(i32, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
