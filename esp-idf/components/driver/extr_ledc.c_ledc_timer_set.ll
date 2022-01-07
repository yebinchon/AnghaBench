; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_ledc.c_ledc_timer_set.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_ledc.c_ledc_timer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i8*, i8* }
%struct.TYPE_6__ = type { i32 }

@LEDC_SPEED_MODE_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"speed_mode\00", align 1
@LEDC_TIMER_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"timer_select\00", align 1
@ledc_spinlock = common dso_local global i32 0, align 4
@LEDC = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ESP_OK = common dso_local global i32 0, align 4
@LEDC_REF_TICK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ledc_timer_set(i64 %0, i64 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @LEDC_SPEED_MODE_MAX, align 8
  %13 = icmp ult i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @LEDC_ARG_CHECK(i32 %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @LEDC_TIMER_MAX, align 8
  %18 = icmp ult i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @LEDC_ARG_CHECK(i32 %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @portENTER_CRITICAL(i32* @ledc_spinlock)
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @LEDC, i32 0, i32 0), align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  store i8* %22, i8** %31, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @LEDC, i32 0, i32 0), align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store i8* %32, i8** %41, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @ledc_ls_timer_update(i64 %42, i64 %43)
  %45 = call i32 @portEXIT_CRITICAL(i32* @ledc_spinlock)
  %46 = load i32, i32* @ESP_OK, align 4
  ret i32 %46
}

declare dso_local i32 @LEDC_ARG_CHECK(i32, i8*) #1

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @ledc_ls_timer_update(i64, i64) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
