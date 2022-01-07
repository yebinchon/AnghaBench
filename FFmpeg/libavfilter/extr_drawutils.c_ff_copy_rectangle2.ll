; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_drawutils.c_ff_copy_rectangle2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_drawutils.c_ff_copy_rectangle2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_copy_rectangle2(%struct.TYPE_4__* %0, i32** %1, i32* %2, i32** %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
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
  %28 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %12, align 8
  store i32** %1, i32*** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32** %3, i32*** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %29

29:                                               ; preds = %105, %11
  %30 = load i32, i32* %23, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %108

35:                                               ; preds = %29
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %37 = load i32**, i32*** %15, align 8
  %38 = load i32*, i32** %16, align 8
  %39 = load i32, i32* %23, align 4
  %40 = load i32, i32* %19, align 4
  %41 = load i32, i32* %20, align 4
  %42 = call i32* @pointer_at(%struct.TYPE_4__* %36, i32** %37, i32* %38, i32 %39, i32 %40, i32 %41)
  store i32* %42, i32** %27, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %44 = load i32**, i32*** %13, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* %23, align 4
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* %18, align 4
  %49 = call i32* @pointer_at(%struct.TYPE_4__* %43, i32** %44, i32* %45, i32 %46, i32 %47, i32 %48)
  store i32* %49, i32** %28, align 8
  %50 = load i32, i32* %21, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %23, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @AV_CEIL_RSHIFT(i32 %50, i32 %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %23, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %58, %65
  store i32 %66, i32* %25, align 4
  %67 = load i32, i32* %22, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %23, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @AV_CEIL_RSHIFT(i32 %67, i32 %74)
  store i32 %75, i32* %26, align 4
  store i32 0, i32* %24, align 4
  br label %76

76:                                               ; preds = %101, %35
  %77 = load i32, i32* %24, align 4
  %78 = load i32, i32* %26, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %104

80:                                               ; preds = %76
  %81 = load i32*, i32** %28, align 8
  %82 = load i32*, i32** %27, align 8
  %83 = load i32, i32* %25, align 4
  %84 = call i32 @memcpy(i32* %81, i32* %82, i32 %83)
  %85 = load i32*, i32** %16, align 8
  %86 = load i32, i32* %23, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %27, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32* %92, i32** %27, align 8
  %93 = load i32*, i32** %14, align 8
  %94 = load i32, i32* %23, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %28, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %28, align 8
  br label %101

101:                                              ; preds = %80
  %102 = load i32, i32* %24, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %24, align 4
  br label %76

104:                                              ; preds = %76
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %23, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %23, align 4
  br label %29

108:                                              ; preds = %29
  ret void
}

declare dso_local i32* @pointer_at(%struct.TYPE_4__*, i32**, i32*, i32, i32, i32) #1

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
