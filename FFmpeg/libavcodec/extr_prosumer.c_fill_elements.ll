; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_prosumer.c_fill_elements.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_prosumer.c_fill_elements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*)* @fill_elements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_elements(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
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
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 32, %14
  %16 = shl i32 %13, %15
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %103, %4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %106

20:                                               ; preds = %17
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %99, %20
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 43
  br i1 %23, label %24, label %102

24:                                               ; preds = %21
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @TB(i32 %25)
  %27 = mul nsw i32 4, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %98

31:                                               ; preds = %24
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 12, %33
  %35 = shl i32 -1048576, %34
  %36 = and i32 %32, %35
  %37 = lshr i32 %36, 20
  %38 = load i32*, i32** @table, align 8
  %39 = load i32, i32* %12, align 4
  %40 = mul nsw i32 2, %39
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %37, %44
  br i1 %45, label %46, label %98

46:                                               ; preds = %31
  %47 = load i32*, i32** @table, align 8
  %48 = load i32, i32* %12, align 4
  %49 = mul nsw i32 2, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 8
  %54 = icmp eq i32 %53, 128
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %106

56:                                               ; preds = %46
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 16777215
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 12, %60
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %61, %62
  %64 = load i32, i32* %11, align 4
  %65 = shl i32 64, %64
  %66 = or i32 %63, %65
  %67 = shl i32 %66, 22
  %68 = or i32 %59, %67
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %56
  %73 = load i32*, i32** @table, align 8
  %74 = load i32, i32* %12, align 4
  %75 = mul nsw i32 2, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %8, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %6, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = shl i32 %84, %83
  store i32 %85, i32* %10, align 4
  br label %97

86:                                               ; preds = %56
  %87 = load i32*, i32** @table, align 8
  %88 = load i32, i32* %12, align 4
  %89 = mul nsw i32 2, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 16
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %93
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %86, %72
  br label %102

98:                                               ; preds = %31, %24
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %21

102:                                              ; preds = %97, %21
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %17

106:                                              ; preds = %55, %17
  ret void
}

declare dso_local i32 @TB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
