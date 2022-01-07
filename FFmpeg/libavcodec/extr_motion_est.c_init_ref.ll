; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_motion_est.c_init_ref.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_motion_est.c_init_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32***, i32*** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32**, i32**, i32**, i32, i32, i32)* @init_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ref(%struct.TYPE_3__* %0, i32** %1, i32** %2, i32** %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [3 x i32], align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32** %3, i32*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %18 = load i32, i32* %13, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %18, %21
  %23 = load i32, i32* %12, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %17, align 4
  %25 = getelementptr inbounds i32, i32* %17, i64 1
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  %31 = load i32, i32* %12, align 4
  %32 = add nsw i32 %30, %31
  %33 = ashr i32 %32, 1
  store i32 %33, i32* %25, align 4
  %34 = getelementptr inbounds i32, i32* %25, i64 1
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %35, %38
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %39, %40
  %42 = ashr i32 %41, 1
  store i32 %42, i32* %34, align 4
  store i32 0, i32* %16, align 4
  br label %43

43:                                               ; preds = %85, %7
  %44 = load i32, i32* %16, align 4
  %45 = icmp slt i32 %44, 3
  br i1 %45, label %46, label %88

46:                                               ; preds = %43
  %47 = load i32**, i32*** %9, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %16, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i32***, i32**** %59, align 8
  %61 = getelementptr inbounds i32**, i32*** %60, i64 0
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %16, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  store i32* %57, i32** %65, align 8
  %66 = load i32**, i32*** %10, align 8
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %70, i64 %75
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i32***, i32**** %78, align 8
  %80 = getelementptr inbounds i32**, i32*** %79, i64 0
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* %16, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  store i32* %76, i32** %84, align 8
  br label %85

85:                                               ; preds = %46
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %16, align 4
  br label %43

88:                                               ; preds = %43
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %121

91:                                               ; preds = %88
  store i32 0, i32* %16, align 4
  br label %92

92:                                               ; preds = %117, %91
  %93 = load i32, i32* %16, align 4
  %94 = icmp slt i32 %93, 3
  br i1 %94, label %95, label %120

95:                                               ; preds = %92
  %96 = load i32**, i32*** %11, align 8
  %97 = load i32, i32* %16, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %16, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %100, i64 %105
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i32***, i32**** %108, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32**, i32*** %109, i64 %111
  %113 = load i32**, i32*** %112, align 8
  %114 = load i32, i32* %16, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  store i32* %106, i32** %116, align 8
  br label %117

117:                                              ; preds = %95
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %16, align 4
  br label %92

120:                                              ; preds = %92
  br label %121

121:                                              ; preds = %120, %88
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
