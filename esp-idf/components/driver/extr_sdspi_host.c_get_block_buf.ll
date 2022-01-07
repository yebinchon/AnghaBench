; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_sdspi_host.c_get_block_buf.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_sdspi_host.c_get_block_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@s_slots = common dso_local global %struct.TYPE_2__* null, align 8
@SDSPI_BLOCK_BUF_SIZE = common dso_local global i32 0, align 4
@MALLOC_CAP_DMA = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**)* @get_block_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_block_buf(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_slots, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = load i32, i32* @SDSPI_BLOCK_BUF_SIZE, align 4
  %15 = load i32, i32* @MALLOC_CAP_DMA, align 4
  %16 = call i32* @heap_caps_malloc(i32 %14, i32 %15)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_slots, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32* %16, i32** %21, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_slots, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %13
  %30 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %30, i32* %3, align 4
  br label %41

31:                                               ; preds = %13
  br label %32

32:                                               ; preds = %31, %2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_slots, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32**, i32*** %5, align 8
  store i32* %38, i32** %39, align 8
  %40 = load i32, i32* @ESP_OK, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %32, %29
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32* @heap_caps_malloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
