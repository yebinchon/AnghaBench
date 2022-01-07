; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_timer.c_timer_set_counter_value.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_timer.c_timer_set_counter_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i8*, i8* }

@TIMER_GROUP_MAX = common dso_local global i64 0, align 8
@TIMER_GROUP_NUM_ERROR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@TIMER_MAX = common dso_local global i64 0, align 8
@TIMER_NUM_ERROR = common dso_local global i32 0, align 4
@timer_spinlock = common dso_local global i32* null, align 8
@TG = common dso_local global %struct.TYPE_4__** null, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timer_set_counter_value(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @TIMER_GROUP_MAX, align 8
  %9 = icmp ult i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* @TIMER_GROUP_NUM_ERROR, align 4
  %12 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %13 = call i32 @TIMER_CHECK(i32 %10, i32 %11, i32 %12)
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @TIMER_MAX, align 8
  %16 = icmp ult i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* @TIMER_NUM_ERROR, align 4
  %19 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %20 = call i32 @TIMER_CHECK(i32 %17, i32 %18, i32 %19)
  %21 = load i32*, i32** @timer_spinlock, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = call i32 @TIMER_ENTER_CRITICAL(i32* %23)
  %25 = load i32, i32* %6, align 4
  %26 = ashr i32 %25, 32
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @TG, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %29, i64 %30
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i8* %28, i8** %37, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @TG, align 8
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %41, i64 %42
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i8* %40, i8** %49, align 8
  %50 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @TG, align 8
  %51 = load i64, i64* %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %50, i64 %51
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load i32*, i32** @timer_spinlock, align 8
  %60 = load i64, i64* %4, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = call i32 @TIMER_EXIT_CRITICAL(i32* %61)
  %63 = load i32, i32* @ESP_OK, align 4
  ret i32 %63
}

declare dso_local i32 @TIMER_CHECK(i32, i32, i32) #1

declare dso_local i32 @TIMER_ENTER_CRITICAL(i32*) #1

declare dso_local i32 @TIMER_EXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
