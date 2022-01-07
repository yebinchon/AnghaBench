; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_nimble.c_simple_ble_gatts_set_attr_value.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_nimble.c_simple_ble_gatts_set_attr_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_mbuf = type { i32, i32*, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Failed to allocate memory for storing outbuf and outlen\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@data_mbuf_list = common dso_local global i32 0, align 4
@node = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @simple_ble_gatts_set_attr_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_ble_gatts_set_attr_value(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.data_mbuf*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.data_mbuf* @find_attr_with_handle(i32 %9)
  store %struct.data_mbuf* %10, %struct.data_mbuf** %8, align 8
  %11 = load %struct.data_mbuf*, %struct.data_mbuf** %8, align 8
  %12 = icmp ne %struct.data_mbuf* %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %3
  %14 = call %struct.data_mbuf* @calloc(i32 1, i32 24)
  store %struct.data_mbuf* %14, %struct.data_mbuf** %8, align 8
  %15 = load %struct.data_mbuf*, %struct.data_mbuf** %8, align 8
  %16 = icmp ne %struct.data_mbuf* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @TAG, align 4
  %19 = call i32 @ESP_LOGE(i32 %18, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %20, i32* %4, align 4
  br label %41

21:                                               ; preds = %13
  %22 = load %struct.data_mbuf*, %struct.data_mbuf** %8, align 8
  %23 = load i32, i32* @node, align 4
  %24 = call i32 @SLIST_INSERT_HEAD(i32* @data_mbuf_list, %struct.data_mbuf* %22, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.data_mbuf*, %struct.data_mbuf** %8, align 8
  %27 = getelementptr inbounds %struct.data_mbuf, %struct.data_mbuf* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  br label %33

28:                                               ; preds = %3
  %29 = load %struct.data_mbuf*, %struct.data_mbuf** %8, align 8
  %30 = getelementptr inbounds %struct.data_mbuf, %struct.data_mbuf* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @free(i32* %31)
  br label %33

33:                                               ; preds = %28, %21
  %34 = load i32*, i32** %7, align 8
  %35 = load %struct.data_mbuf*, %struct.data_mbuf** %8, align 8
  %36 = getelementptr inbounds %struct.data_mbuf, %struct.data_mbuf* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.data_mbuf*, %struct.data_mbuf** %8, align 8
  %39 = getelementptr inbounds %struct.data_mbuf, %struct.data_mbuf* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @ESP_OK, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %33, %17
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.data_mbuf* @find_attr_with_handle(i32) #1

declare dso_local %struct.data_mbuf* @calloc(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.data_mbuf*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
