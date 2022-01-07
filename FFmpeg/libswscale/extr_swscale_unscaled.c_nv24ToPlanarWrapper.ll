; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_nv24ToPlanarWrapper.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_nv24ToPlanarWrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@AV_PIX_FMT_NV24 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32**, i32*, i32, i32, i32**, i32*)* @nv24ToPlanarWrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv24ToPlanarWrapper(%struct.TYPE_3__* %0, i32** %1, i32* %2, i32 %3, i32 %4, i32** %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32** %5, i32*** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i32**, i32*** %13, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %11, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %19, i64 %25
  store i32* %26, i32** %15, align 8
  %27 = load i32**, i32*** %13, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %29, i64 %35
  store i32* %36, i32** %16, align 8
  %37 = load i32**, i32*** %9, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32**, i32*** %13, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @copyPlane(i32* %39, i32 %42, i32 %43, i32 %44, i32 %47, i32* %50, i32 %53)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AV_PIX_FMT_NV24, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %7
  %61 = load i32**, i32*** %9, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32*, i32** %15, align 8
  %65 = load i32*, i32** %16, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %14, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %14, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @deinterleaveBytes(i32* %63, i32* %64, i32* %65, i32 %68, i32 %69, i32 %72, i32 %75, i32 %78)
  br label %100

80:                                               ; preds = %7
  %81 = load i32**, i32*** %9, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32*, i32** %16, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load i32*, i32** %10, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %14, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %14, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @deinterleaveBytes(i32* %83, i32* %84, i32* %85, i32 %88, i32 %89, i32 %92, i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %80, %60
  %101 = load i32, i32* %12, align 4
  ret i32 %101
}

declare dso_local i32 @copyPlane(i32*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @deinterleaveBytes(i32*, i32*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
