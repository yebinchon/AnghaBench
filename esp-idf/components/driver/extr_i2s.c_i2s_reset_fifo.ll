; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_i2s.c_i2s_reset_fifo.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_i2s.c_i2s_reset_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@I2S_NUM_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"i2s_num error\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@I2S = common dso_local global %struct.TYPE_4__** null, align 8
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @i2s_reset_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2s_reset_fifo(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @I2S_NUM_MAX, align 8
  %5 = icmp ult i64 %3, %4
  %6 = zext i1 %5 to i32
  %7 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %8 = call i32 @I2S_CHECK(i32 %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = call i32 (...) @I2S_ENTER_CRITICAL()
  %10 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @I2S, align 8
  %11 = load i64, i64* %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %10, i64 %11
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @I2S, align 8
  %17 = load i64, i64* %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %16, i64 %17
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @I2S, align 8
  %23 = load i64, i64* %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %22, i64 %23
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @I2S, align 8
  %29 = load i64, i64* %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %28, i64 %29
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = call i32 (...) @I2S_EXIT_CRITICAL()
  %35 = load i32, i32* @ESP_OK, align 4
  ret i32 %35
}

declare dso_local i32 @I2S_CHECK(i32, i8*, i32) #1

declare dso_local i32 @I2S_ENTER_CRITICAL(...) #1

declare dso_local i32 @I2S_EXIT_CRITICAL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
