; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/rmt_nec_tx_rx/main/extr_infrared_nec_main.c_nec_parse_items.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/rmt_nec_tx_rx/main/extr_infrared_nec_main.c_nec_parse_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NEC_DATA_ITEM_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @nec_parse_items to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nec_parse_items(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @NEC_DATA_ITEM_NUM, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %97

20:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %6, align 8
  %23 = ptrtoint i32* %21 to i32
  %24 = call i32 @nec_header_if(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %97

27:                                               ; preds = %20
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %56, %27
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 16
  br i1 %30, label %31, label %59

31:                                               ; preds = %28
  %32 = load i32*, i32** %6, align 8
  %33 = call i64 @nec_bit_one_if(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32, i32* %12, align 4
  %37 = shl i32 1, %36
  %38 = load i32, i32* %13, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %13, align 4
  br label %51

40:                                               ; preds = %31
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 @nec_bit_zero_if(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* %12, align 4
  %46 = shl i32 0, %45
  %47 = load i32, i32* %13, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %13, align 4
  br label %50

49:                                               ; preds = %40
  store i32 -1, i32* %5, align 4
  br label %97

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %35
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %6, align 8
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %28

59:                                               ; preds = %28
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %88, %59
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 16
  br i1 %62, label %63, label %91

63:                                               ; preds = %60
  %64 = load i32*, i32** %6, align 8
  %65 = call i64 @nec_bit_one_if(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32, i32* %12, align 4
  %69 = shl i32 1, %68
  %70 = load i32, i32* %14, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %14, align 4
  br label %83

72:                                               ; preds = %63
  %73 = load i32*, i32** %6, align 8
  %74 = call i64 @nec_bit_zero_if(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i32, i32* %12, align 4
  %78 = shl i32 0, %77
  %79 = load i32, i32* %14, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %14, align 4
  br label %82

81:                                               ; preds = %72
  store i32 -1, i32* %5, align 4
  br label %97

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %67
  %84 = load i32*, i32** %6, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %6, align 8
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %83
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %60

91:                                               ; preds = %60
  %92 = load i32, i32* %13, align 4
  %93 = load i32*, i32** %8, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32*, i32** %9, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %91, %81, %49, %26, %19
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @nec_header_if(i32) #1

declare dso_local i64 @nec_bit_one_if(i32*) #1

declare dso_local i64 @nec_bit_zero_if(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
