; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_rmt.c_rmt_set_idle_level.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_rmt.c_rmt_set_idle_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@RMT_CHANNEL_MAX = common dso_local global i64 0, align 8
@RMT_CHANNEL_ERROR_STR = common dso_local global i8* null, align 8
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@RMT_IDLE_LEVEL_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"RMT IDLE LEVEL ERR\00", align 1
@rmt_spinlock = common dso_local global i32 0, align 4
@RMT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rmt_set_idle_level(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @RMT_CHANNEL_MAX, align 8
  %9 = icmp ult i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i8*, i8** @RMT_CHANNEL_ERROR_STR, align 8
  %12 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %13 = call i32 @RMT_CHECK(i32 %10, i8* %11, i32 %12)
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @RMT_IDLE_LEVEL_MAX, align 8
  %16 = icmp slt i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %19 = call i32 @RMT_CHECK(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = call i32 @portENTER_CRITICAL(i32* @rmt_spinlock)
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @RMT, i32 0, i32 0), align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %21, i32* %26, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @RMT, i32 0, i32 0), align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i64 %27, i64* %32, align 8
  %33 = call i32 @portEXIT_CRITICAL(i32* @rmt_spinlock)
  %34 = load i32, i32* @ESP_OK, align 4
  ret i32 %34
}

declare dso_local i32 @RMT_CHECK(i32, i8*, i32) #1

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
