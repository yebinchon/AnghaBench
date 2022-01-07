; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/rmt_nec_tx_rx/main/extr_infrared_nec_main.c_nec_build_items.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/rmt_nec_tx_rx/main/extr_infrared_nec_main.c_nec_build_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NEC_DATA_ITEM_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32, i32)* @nec_build_items to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nec_build_items(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @NEC_DATA_ITEM_NUM, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %78

18:                                               ; preds = %5
  %19 = load i32*, i32** %8, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %8, align 8
  %21 = ptrtoint i32* %19 to i32
  %22 = call i32 @nec_fill_item_header(i32 %21)
  %23 = load i32, i32* %12, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %45, %18
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 16
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @nec_fill_item_bit_one(i32* %33)
  br label %38

35:                                               ; preds = %28
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @nec_fill_item_bit_zero(i32* %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %8, align 8
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %10, align 4
  %44 = ashr i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %13, align 4
  br label %25

48:                                               ; preds = %25
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %69, %48
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 16
  br i1 %51, label %52, label %72

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @nec_fill_item_bit_one(i32* %57)
  br label %62

59:                                               ; preds = %52
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @nec_fill_item_bit_zero(i32* %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %8, align 8
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %11, align 4
  %68 = ashr i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %49

72:                                               ; preds = %49
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @nec_fill_item_end(i32* %73)
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %72, %17
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @nec_fill_item_header(i32) #1

declare dso_local i32 @nec_fill_item_bit_one(i32*) #1

declare dso_local i32 @nec_fill_item_bit_zero(i32*) #1

declare dso_local i32 @nec_fill_item_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
