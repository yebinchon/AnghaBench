; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_rmt.c_rmt_get_ringbuf_handle.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_rmt.c_rmt_get_ringbuf_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@RMT_CHANNEL_MAX = common dso_local global i64 0, align 8
@RMT_CHANNEL_ERROR_STR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@p_rmt_obj = common dso_local global %struct.TYPE_2__** null, align 8
@RMT_DRIVER_ERROR_STR = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@RMT_ADDR_ERROR_STR = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rmt_get_ringbuf_handle(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @RMT_CHANNEL_MAX, align 8
  %7 = icmp ult i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i32, i32* @RMT_CHANNEL_ERROR_STR, align 4
  %10 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %11 = call i32 @RMT_CHECK(i32 %8, i32 %9, i32 %10)
  %12 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @p_rmt_obj, align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %12, i64 %13
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* @RMT_DRIVER_ERROR_STR, align 4
  %19 = load i32, i32* @ESP_FAIL, align 4
  %20 = call i32 @RMT_CHECK(i32 %17, i32 %18, i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* @RMT_ADDR_ERROR_STR, align 4
  %25 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %26 = call i32 @RMT_CHECK(i32 %23, i32 %24, i32 %25)
  %27 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @p_rmt_obj, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %27, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %4, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @ESP_OK, align 4
  ret i32 %34
}

declare dso_local i32 @RMT_CHECK(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
