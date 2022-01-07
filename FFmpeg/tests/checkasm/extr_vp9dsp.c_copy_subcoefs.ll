; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_vp9dsp.c_copy_subcoefs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/checkasm/extr_vp9dsp.c_copy_subcoefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_vp9_scans = common dso_local global i32*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32, i32, i32)* @copy_subcoefs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_subcoefs(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %22 = load i32***, i32**** @ff_vp9_scans, align 8
  %23 = load i32, i32* %10, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32**, i32*** %22, i64 %24
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %16, align 8
  store i32 0, i32* %15, align 4
  br label %31

31:                                               ; preds = %83, %7
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = mul nsw i32 %33, %34
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %86

37:                                               ; preds = %31
  %38 = load i32*, i32** %16, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* %12, align 4
  %45 = srem i32 %43, %44
  store i32 %45, i32* %19, align 4
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* %12, align 4
  %48 = sdiv i32 %46, %47
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %37
  br label %86

57:                                               ; preds = %52
  %58 = load i32, i32* %14, align 4
  %59 = icmp eq i32 %58, 8
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %18, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %18, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  br label %82

70:                                               ; preds = %57
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %18, align 4
  %73 = mul nsw i32 %72, 2
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %18, align 4
  %78 = mul nsw i32 %77, 2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = call i32 @AV_COPY32(i32* %75, i32* %80)
  br label %82

82:                                               ; preds = %70, %60
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %15, align 4
  br label %31

86:                                               ; preds = %56, %31
  %87 = load i32, i32* %15, align 4
  store i32 %87, i32* %17, align 4
  br label %88

88:                                               ; preds = %115, %86
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = mul nsw i32 %90, %91
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %118

94:                                               ; preds = %88
  %95 = load i32*, i32** %16, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %21, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp eq i32 %100, 8
  br i1 %101, label %102, label %107

102:                                              ; preds = %94
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %21, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 0, i32* %106, align 4
  br label %114

107:                                              ; preds = %94
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %21, align 4
  %110 = mul nsw i32 %109, 2
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = call i32 @AV_ZERO32(i32* %112)
  br label %114

114:                                              ; preds = %107, %102
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %15, align 4
  br label %88

118:                                              ; preds = %88
  %119 = load i32, i32* %17, align 4
  ret i32 %119
}

declare dso_local i32 @AV_COPY32(i32*, i32*) #1

declare dso_local i32 @AV_ZERO32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
