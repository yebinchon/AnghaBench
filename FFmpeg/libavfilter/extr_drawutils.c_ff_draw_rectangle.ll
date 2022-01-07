; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_drawutils.c_ff_draw_rectangle.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_drawutils.c_ff_draw_rectangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_draw_rectangle(i32** %0, i32* %1, i32** %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32** %0, i32*** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32** %2, i32*** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  store i32 0, i32* %22, align 4
  br label %28

28:                                               ; preds = %125, %10
  %29 = load i32, i32* %22, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32**, i32*** %11, align 8
  %33 = load i32, i32* %22, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br label %38

38:                                               ; preds = %31, %28
  %39 = phi i1 [ false, %28 ], [ %37, %31 ]
  br i1 %39, label %40, label %128

40:                                               ; preds = %38
  %41 = load i32, i32* %22, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %22, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %48

46:                                               ; preds = %43, %40
  %47 = load i32, i32* %15, align 4
  br label %49

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ 0, %48 ]
  store i32 %50, i32* %24, align 4
  %51 = load i32, i32* %22, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %22, align 4
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %58

56:                                               ; preds = %53, %49
  %57 = load i32, i32* %16, align 4
  br label %59

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  store i32 %60, i32* %25, align 4
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* %24, align 4
  %63 = call i32 @AV_CEIL_RSHIFT(i32 %61, i32 %62)
  store i32 %63, i32* %26, align 4
  %64 = load i32, i32* %20, align 4
  %65 = load i32, i32* %25, align 4
  %66 = call i32 @AV_CEIL_RSHIFT(i32 %64, i32 %65)
  store i32 %66, i32* %27, align 4
  %67 = load i32**, i32*** %11, align 8
  %68 = load i32, i32* %22, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %25, align 4
  %74 = ashr i32 %72, %73
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* %22, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %74, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %71, i64 %81
  store i32* %82, i32** %23, align 8
  store i32 0, i32* %21, align 4
  br label %83

83:                                               ; preds = %121, %59
  %84 = load i32, i32* %21, align 4
  %85 = load i32, i32* %27, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %124

87:                                               ; preds = %83
  %88 = load i32*, i32** %23, align 8
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* %24, align 4
  %91 = ashr i32 %89, %90
  %92 = load i32*, i32** %14, align 8
  %93 = load i32, i32* %22, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %91, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %88, i64 %98
  %100 = load i32**, i32*** %13, align 8
  %101 = load i32, i32* %22, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %26, align 4
  %106 = load i32*, i32** %14, align 8
  %107 = load i32, i32* %22, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %105, %110
  %112 = call i32 @memcpy(i32* %99, i32* %104, i32 %111)
  %113 = load i32*, i32** %12, align 8
  %114 = load i32, i32* %22, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %23, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32* %120, i32** %23, align 8
  br label %121

121:                                              ; preds = %87
  %122 = load i32, i32* %21, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %21, align 4
  br label %83

124:                                              ; preds = %83
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %22, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %22, align 4
  br label %28

128:                                              ; preds = %38
  ret void
}

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
