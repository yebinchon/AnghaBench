; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_xvideo.c_render32_yuy2.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_xvideo.c_render32_yuy2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*, i32, i32, i32)* @render32_yuy2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @render32_yuy2(%struct.TYPE_5__* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %13, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %14, align 8
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %130, %5
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %133

32:                                               ; preds = %28
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %110, %32
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %113

37:                                               ; preds = %33
  %38 = load i32*, i32** %13, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %13, align 8
  %40 = load i32, i32* %38, align 4
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %19, align 4
  %42 = ashr i32 %41, 8
  %43 = and i32 %42, 63488
  %44 = load i32, i32* %19, align 4
  %45 = ashr i32 %44, 5
  %46 = and i32 %45, 2016
  %47 = or i32 %43, %46
  %48 = load i32, i32* %19, align 4
  %49 = ashr i32 %48, 3
  %50 = and i32 %49, 31
  %51 = or i32 %47, %50
  store i32 %51, i32* %19, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %19, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %15, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %19, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %16, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %19, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %17, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = shl i32 %75, 1
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32*, i32** %14, align 8
  %79 = load i32, i32* %18, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  %82 = load i32*, i32** %14, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %77, i32* %83, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32*, i32** %14, align 8
  %86 = load i32, i32* %18, align 4
  %87 = add i32 %86, 1
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  store i32 %84, i32* %89, align 4
  %90 = load i32*, i32** %14, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  store i32 %84, i32* %91, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32*, i32** %14, align 8
  %94 = load i32, i32* %18, align 4
  %95 = add i32 %94, 2
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32 %92, i32* %97, align 4
  %98 = load i32*, i32** %14, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32 %92, i32* %99, align 4
  %100 = load i32, i32* %17, align 4
  %101 = load i32*, i32** %14, align 8
  %102 = load i32, i32* %18, align 4
  %103 = add i32 %102, 3
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  store i32 %100, i32* %105, align 4
  %106 = load i32*, i32** %14, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 3
  store i32 %100, i32* %107, align 4
  %108 = load i32*, i32** %14, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  store i32* %109, i32** %14, align 8
  br label %110

110:                                              ; preds = %37
  %111 = load i32, i32* %11, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %33

113:                                              ; preds = %33
  %114 = load i32, i32* %10, align 4
  %115 = lshr i32 %114, 2
  %116 = load i32, i32* %8, align 4
  %117 = sub i32 %115, %116
  %118 = load i32*, i32** %13, align 8
  %119 = zext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32* %120, i32** %13, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sub i32 %123, %124
  %126 = shl i32 %125, 2
  %127 = load i32*, i32** %14, align 8
  %128 = zext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32* %129, i32** %14, align 8
  br label %130

130:                                              ; preds = %113
  %131 = load i32, i32* %12, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %12, align 4
  br label %28

133:                                              ; preds = %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
