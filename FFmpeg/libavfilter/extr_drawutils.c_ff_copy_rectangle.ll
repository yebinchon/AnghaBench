; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_drawutils.c_ff_copy_rectangle.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_drawutils.c_ff_copy_rectangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_copy_rectangle(i32** %0, i32* %1, i32** %2, i32* %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32** %0, i32*** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32** %2, i32*** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  store i32 0, i32* %26, align 4
  br label %32

32:                                               ; preds = %142, %12
  %33 = load i32, i32* %26, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32**, i32*** %13, align 8
  %37 = load i32, i32* %26, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br label %42

42:                                               ; preds = %35, %32
  %43 = phi i1 [ false, %32 ], [ %41, %35 ]
  br i1 %43, label %44, label %145

44:                                               ; preds = %42
  %45 = load i32, i32* %26, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %26, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %52

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %18, align 4
  br label %53

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ 0, %52 ]
  store i32 %54, i32* %28, align 4
  %55 = load i32, i32* %26, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %26, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %62

60:                                               ; preds = %57, %53
  %61 = load i32, i32* %19, align 4
  br label %63

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i32 [ %61, %60 ], [ 0, %62 ]
  store i32 %64, i32* %29, align 4
  %65 = load i32, i32* %23, align 4
  %66 = load i32, i32* %28, align 4
  %67 = call i32 @AV_CEIL_RSHIFT(i32 %65, i32 %66)
  store i32 %67, i32* %30, align 4
  %68 = load i32, i32* %24, align 4
  %69 = load i32, i32* %29, align 4
  %70 = call i32 @AV_CEIL_RSHIFT(i32 %68, i32 %69)
  store i32 %70, i32* %31, align 4
  %71 = load i32**, i32*** %13, align 8
  %72 = load i32, i32* %26, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %21, align 4
  %77 = load i32, i32* %29, align 4
  %78 = ashr i32 %76, %77
  %79 = load i32*, i32** %14, align 8
  %80 = load i32, i32* %26, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %78, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %75, i64 %85
  store i32* %86, i32** %27, align 8
  store i32 0, i32* %25, align 4
  br label %87

87:                                               ; preds = %138, %63
  %88 = load i32, i32* %25, align 4
  %89 = load i32, i32* %31, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %141

91:                                               ; preds = %87
  %92 = load i32*, i32** %27, align 8
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* %28, align 4
  %95 = ashr i32 %93, %94
  %96 = load i32*, i32** %17, align 8
  %97 = load i32, i32* %26, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %95, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %92, i64 %102
  %104 = load i32**, i32*** %15, align 8
  %105 = load i32, i32* %26, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = load i32*, i32** %16, align 8
  %110 = load i32, i32* %26, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %25, align 4
  %115 = load i32, i32* %22, align 4
  %116 = load i32, i32* %29, align 4
  %117 = ashr i32 %115, %116
  %118 = add nsw i32 %114, %117
  %119 = mul nsw i32 %113, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %108, i64 %120
  %122 = load i32, i32* %30, align 4
  %123 = load i32*, i32** %17, align 8
  %124 = load i32, i32* %26, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %122, %127
  %129 = call i32 @memcpy(i32* %103, i32* %121, i32 %128)
  %130 = load i32*, i32** %14, align 8
  %131 = load i32, i32* %26, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %27, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  store i32* %137, i32** %27, align 8
  br label %138

138:                                              ; preds = %91
  %139 = load i32, i32* %25, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %25, align 4
  br label %87

141:                                              ; preds = %87
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %26, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %26, align 4
  br label %32

145:                                              ; preds = %42
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
