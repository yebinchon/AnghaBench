; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/spi_master/main/extr_spi_master_example_main.c_send_lines.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/spi_master/main/extr_spi_master_example_main.c_send_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i64, i32*, i8* }

@send_lines.trans = internal global [6 x %struct.TYPE_4__] zeroinitializer, align 16
@SPI_TRANS_USE_TXDATA = common dso_local global i64 0, align 8
@PARALLEL_LINES = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*)* @send_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_lines(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %44, %3
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 6
  br i1 %11, label %12, label %47

12:                                               ; preds = %9
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* @send_lines.trans, i64 0, i64 %14
  %16 = call i32 @memset(%struct.TYPE_4__* %15, i32 0, i32 40)
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %12
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* @send_lines.trans, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 8, i32* %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* @send_lines.trans, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  store i8* null, i8** %28, align 8
  br label %38

29:                                               ; preds = %12
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* @send_lines.trans, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 32, i32* %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* @send_lines.trans, i64 0, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  store i8* inttoptr (i64 1 to i8*), i8** %37, align 8
  br label %38

38:                                               ; preds = %29, %20
  %39 = load i64, i64* @SPI_TRANS_USE_TXDATA, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* @send_lines.trans, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i64 %39, i64* %43, align 8
  br label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %9

47:                                               ; preds = %9
  %48 = load i32*, i32** getelementptr inbounds ([6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* @send_lines.trans, i64 0, i64 0, i32 1), align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 42, i32* %49, align 4
  %50 = load i32*, i32** getelementptr inbounds ([6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* @send_lines.trans, i64 0, i64 1, i32 1), align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 0, i32* %51, align 4
  %52 = load i32*, i32** getelementptr inbounds ([6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* @send_lines.trans, i64 0, i64 1, i32 1), align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 0, i32* %53, align 4
  %54 = load i32*, i32** getelementptr inbounds ([6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* @send_lines.trans, i64 0, i64 1, i32 1), align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 1, i32* %55, align 4
  %56 = load i32*, i32** getelementptr inbounds ([6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* @send_lines.trans, i64 0, i64 1, i32 1), align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  store i32 64, i32* %57, align 4
  %58 = load i32*, i32** getelementptr inbounds ([6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* @send_lines.trans, i64 0, i64 2, i32 1), align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 43, i32* %59, align 4
  %60 = load i32, i32* %5, align 4
  %61 = ashr i32 %60, 8
  %62 = load i32*, i32** getelementptr inbounds ([6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* @send_lines.trans, i64 0, i64 3, i32 1), align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %5, align 4
  %65 = and i32 %64, 255
  %66 = load i32*, i32** getelementptr inbounds ([6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* @send_lines.trans, i64 0, i64 3, i32 1), align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @PARALLEL_LINES, align 4
  %70 = add nsw i32 %68, %69
  %71 = ashr i32 %70, 8
  %72 = load i32*, i32** getelementptr inbounds ([6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* @send_lines.trans, i64 0, i64 3, i32 1), align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @PARALLEL_LINES, align 4
  %76 = add nsw i32 %74, %75
  %77 = and i32 %76, 255
  %78 = load i32*, i32** getelementptr inbounds ([6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* @send_lines.trans, i64 0, i64 3, i32 1), align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  store i32 %77, i32* %79, align 4
  %80 = load i32*, i32** getelementptr inbounds ([6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* @send_lines.trans, i64 0, i64 4, i32 1), align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 44, i32* %81, align 4
  %82 = load i32*, i32** %6, align 8
  store i32* %82, i32** getelementptr inbounds ([6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* @send_lines.trans, i64 0, i64 5, i32 3), align 8
  %83 = load i32, i32* @PARALLEL_LINES, align 4
  %84 = mul nsw i32 5120, %83
  store i32 %84, i32* getelementptr inbounds ([6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* @send_lines.trans, i64 0, i64 5, i32 0), align 8
  store i64 0, i64* getelementptr inbounds ([6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* @send_lines.trans, i64 0, i64 5, i32 2), align 8
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %100, %47
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 6
  br i1 %87, label %88, label %103

88:                                               ; preds = %85
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* @send_lines.trans, i64 0, i64 %91
  %93 = load i32, i32* @portMAX_DELAY, align 4
  %94 = call i64 @spi_device_queue_trans(i32 %89, %struct.TYPE_4__* %92, i32 %93)
  store i64 %94, i64* %7, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* @ESP_OK, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  br label %100

100:                                              ; preds = %88
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %85

103:                                              ; preds = %85
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @spi_device_queue_trans(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
