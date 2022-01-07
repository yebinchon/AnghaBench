; ModuleID = '/home/carl/AnghaBench/esp-idf/components/efuse/src/extr_esp_efuse_utility.c_esp_efuse_utility_fill_buff.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/efuse/src/extr_esp_efuse_utility.c_esp_efuse_utility_fill_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_efuse_utility_fill_buff(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %13, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @esp_efuse_utility_read_reg(i32 %20, i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %9, align 4
  %25 = ashr i32 %23, %24
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @get_mask(i32 %26, i32 0)
  %28 = and i32 %25, %27
  store i32 %28, i32* %15, align 4
  %29 = load i32*, i32** %12, align 8
  %30 = load i32, i32* %29, align 4
  %31 = srem i32 %30, 8
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %6
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %16, align 4
  %37 = shl i32 %35, %36
  %38 = load i32*, i32** %13, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %37
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %16, align 4
  %47 = sub nsw i32 8, %46
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %34
  %51 = load i32, i32* %16, align 4
  %52 = sub nsw i32 8, %51
  br label %55

53:                                               ; preds = %34
  %54 = load i32, i32* %10, align 4
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi i32 [ %52, %50 ], [ %54, %53 ]
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %57
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %10, align 4
  %63 = sub nsw i32 %62, %61
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %55, %6
  store i32 0, i32* %17, align 4
  br label %65

65:                                               ; preds = %88, %64
  %66 = load i32, i32* %10, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %97

68:                                               ; preds = %65
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %17, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %17, align 4
  %74 = ashr i32 %72, %73
  %75 = load i32*, i32** %13, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* %76, align 4
  %78 = sdiv i32 %77, 8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %74
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp sgt i32 %83, 8
  br i1 %84, label %85, label %86

85:                                               ; preds = %68
  br label %88

86:                                               ; preds = %68
  %87 = load i32, i32* %10, align 4
  br label %88

88:                                               ; preds = %86, %85
  %89 = phi i32 [ 8, %85 ], [ %87, %86 ]
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = load i32*, i32** %12, align 8
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, %90
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %10, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %10, align 4
  br label %65

97:                                               ; preds = %65
  %98 = load i32, i32* @ESP_OK, align 4
  ret i32 %98
}

declare dso_local i32 @esp_efuse_utility_read_reg(i32, i32) #1

declare dso_local i32 @get_mask(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
