; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/spi_master/main/extr_spi_master_example_main.c_display_pretty_colors.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/spi_master/main/extr_spi_master_example_main.c_display_pretty_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARALLEL_LINES = common dso_local global i32 0, align 4
@MALLOC_CAP_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @display_pretty_colors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_pretty_colors(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32*], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %30, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %33

12:                                               ; preds = %9
  %13 = load i32, i32* @PARALLEL_LINES, align 4
  %14 = mul nsw i32 320, %13
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @MALLOC_CAP_DMA, align 4
  %19 = call i32* @heap_caps_malloc(i32 %17, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 %21
  store i32* %19, i32** %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  br label %30

30:                                               ; preds = %12
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %9

33:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %71
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %67, %34
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 240
  br i1 %39, label %40, label %71

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @PARALLEL_LINES, align 4
  %48 = call i32 @pretty_effect_calc_lines(i32* %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, -1
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @send_line_finish(i32 %52)
  br label %54

54:                                               ; preds = %51, %40
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 1
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 0, i32 1
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @send_lines(i32 %60, i32 %61, i32* %65)
  br label %67

67:                                               ; preds = %54
  %68 = load i32, i32* @PARALLEL_LINES, align 4
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %8, align 4
  br label %37

71:                                               ; preds = %37
  br label %34
}

declare dso_local i32* @heap_caps_malloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pretty_effect_calc_lines(i32*, i32, i32, i32) #1

declare dso_local i32 @send_line_finish(i32) #1

declare dso_local i32 @send_lines(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
