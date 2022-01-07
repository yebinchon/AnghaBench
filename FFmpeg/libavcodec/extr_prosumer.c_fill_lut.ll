; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_prosumer.c_fill_lut.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_prosumer.c_fill_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @fill_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_lut(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %3, align 4
  br label %11

11:                                               ; preds = %93, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32*, i32** @table, align 8
  %14 = call i32 @FF_ARRAY_ELEMS(i32* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %96

16:                                               ; preds = %11
  %17 = load i32*, i32** @table, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = ashr i32 %22, 1
  %24 = call i32 @TB(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 %25, 16
  %27 = load i32*, i32** @table, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %26, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 3, %34
  %36 = mul nsw i32 4, %35
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %16
  %40 = load i32, i32* %6, align 4
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = mul nsw i32 2, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32 %40, i32* %45, align 4
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = mul nsw i32 2, %47
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  store i32 0, i32* %51, align 4
  br label %92

52:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %88, %52
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = shl i32 1, %55
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %53
  store i32 -1, i32* %9, align 4
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, 16777215
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, 65280
  %63 = icmp ne i32 %62, 32768
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @fill_elements(i32 %65, i32 %66, i32* %6, i32* %9)
  br label %68

68:                                               ; preds = %64, %58
  %69 = load i32, i32* %6, align 4
  %70 = load i32*, i32** %2, align 8
  %71 = load i32, i32* %4, align 4
  %72 = mul nsw i32 2, %71
  %73 = load i32, i32* %8, align 4
  %74 = mul nsw i32 2, %73
  %75 = add nsw i32 %72, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %70, i64 %76
  store i32 %69, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32*, i32** %2, align 8
  %80 = load i32, i32* %4, align 4
  %81 = mul nsw i32 2, %80
  %82 = load i32, i32* %8, align 4
  %83 = mul nsw i32 2, %82
  %84 = add nsw i32 %81, %83
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %79, i64 %86
  store i32 %78, i32* %87, align 4
  br label %88

88:                                               ; preds = %68
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %53

91:                                               ; preds = %53
  br label %92

92:                                               ; preds = %91, %39
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 2
  store i32 %95, i32* %3, align 4
  br label %11

96:                                               ; preds = %11
  store i32 0, i32* %10, align 4
  br label %97

97:                                               ; preds = %110, %96
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %98, 32
  br i1 %99, label %100, label %113

100:                                              ; preds = %97
  %101 = load i32*, i32** %2, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 425984, i32* %104, align 4
  %105 = load i32*, i32** %2, align 8
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  store i32 0, i32* %109, align 4
  br label %110

110:                                              ; preds = %100
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 2
  store i32 %112, i32* %10, align 4
  br label %97

113:                                              ; preds = %97
  ret void
}

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i32 @TB(i32) #1

declare dso_local i32 @fill_elements(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
