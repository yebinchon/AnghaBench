; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/ethernet/basic/main/extr_ethernet_example_main.c_eth_event_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/ethernet/basic/main/extr_ethernet_example_main.c_eth_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ETH_CMD_G_MAC_ADDR = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Ethernet Link Up\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Ethernet HW Addr %02x:%02x:%02x:%02x:%02x:%02x\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Ethernet Link Down\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Ethernet Started\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Ethernet Stopped\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8*)* @eth_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eth_event_handler(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [6 x i32], align 16
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = bitcast [6 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 24, i1 false)
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %46 [
    i32 131, label %16
    i32 130, label %37
    i32 129, label %40
    i32 128, label %43
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @ETH_CMD_G_MAC_ADDR, align 4
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %20 = call i32 @esp_eth_ioctl(i32 %17, i32 %18, i32* %19)
  %21 = load i32, i32* @TAG, align 4
  %22 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @TAG, align 4
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %25 = load i32, i32* %24, align 16
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 2
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 4
  %33 = load i32, i32* %32, align 16
  %34 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 5
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %23, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %27, i32 %29, i32 %31, i32 %33, i32 %35)
  br label %47

37:                                               ; preds = %4
  %38 = load i32, i32* @TAG, align 4
  %39 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %47

40:                                               ; preds = %4
  %41 = load i32, i32* @TAG, align 4
  %42 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %47

43:                                               ; preds = %4
  %44 = load i32, i32* @TAG, align 4
  %45 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %47

46:                                               ; preds = %4
  br label %47

47:                                               ; preds = %46, %43, %40, %37, %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @esp_eth_ioctl(i32, i32, i32*) #2

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
