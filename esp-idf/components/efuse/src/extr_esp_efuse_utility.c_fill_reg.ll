; ModuleID = '/home/carl/AnghaBench/esp-idf/components/efuse/src/extr_esp_efuse_utility.c_fill_reg.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/efuse/src/extr_esp_efuse_utility.c_fill_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*)* @fill_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_reg(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = load i32, i32* %13, align 4
  %15 = srem i32 %14, 8
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %11, align 4
  %27 = ashr i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = sub nsw i32 8, %28
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load i32, i32* %11, align 4
  %34 = sub nsw i32 8, %33
  br label %37

35:                                               ; preds = %18
  %36 = load i32, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi i32 [ %34, %32 ], [ %36, %35 ]
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @get_mask(i32 %40, i32 0)
  %42 = and i32 %39, %41
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, %43
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %37, %4
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %68, %50
  %53 = load i32, i32* %6, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %87

55:                                               ; preds = %52
  %56 = load i32*, i32** %7, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %57, align 4
  %59 = sdiv i32 %58, 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp sgt i32 %63, 8
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %68

66:                                               ; preds = %55
  %67 = load i32, i32* %6, align 4
  br label %68

68:                                               ; preds = %66, %65
  %69 = phi i32 [ 8, %65 ], [ %67, %66 ]
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @get_mask(i32 %71, i32 0)
  %73 = and i32 %70, %72
  %74 = load i32, i32* %12, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, %78
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %6, align 4
  %84 = sub nsw i32 %83, %82
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 8
  store i32 %86, i32* %12, align 4
  br label %52

87:                                               ; preds = %52
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %5, align 4
  %90 = shl i32 %88, %89
  ret i32 %90
}

declare dso_local i32 @get_mask(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
