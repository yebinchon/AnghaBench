; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cdgraphics.c_cdg_load_palette.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cdgraphics.c_cdg_load_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32)* @cdg_load_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdg_load_palette(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 0, i32 8
  store i32 %17, i32* %12, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %13, align 8
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %84, %3
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 8
  br i1 %28, label %29, label %87

29:                                               ; preds = %26
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %11, align 4
  %32 = mul nsw i32 2, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 6
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %11, align 4
  %39 = mul nsw i32 2, %38
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 63
  %45 = add nsw i32 %36, %44
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = ashr i32 %46, 8
  %48 = and i32 %47, 15
  %49 = mul nsw i32 %48, 17
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %10, align 4
  %51 = ashr i32 %50, 4
  %52 = and i32 %51, 15
  %53 = mul nsw i32 %52, 17
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %54, 15
  %56 = mul nsw i32 %55, 17
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %7, align 4
  %58 = shl i32 %57, 16
  %59 = or i32 -16777216, %58
  %60 = load i32, i32* %8, align 4
  %61 = shl i32 %60, 8
  %62 = or i32 %59, %61
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %62, %63
  %65 = load i32*, i32** %13, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  store i32 %64, i32* %70, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp uge i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %29
  %76 = load i32*, i32** %13, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 16777215
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %75, %29
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %26

87:                                               ; preds = %26
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
