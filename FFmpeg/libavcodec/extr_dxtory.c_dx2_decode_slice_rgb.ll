; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxtory.c_dx2_decode_slice_rgb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxtory.c_dx2_decode_slice_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32, i32, [8 x i32]*)* @dx2_decode_slice_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dx2_decode_slice_rgb(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3, [8 x i32]* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x i32]*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store [8 x i32]* %4, [8 x i32]** %10, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %13, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %14, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32**, i32*** %25, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %8, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  store i32* %33, i32** %15, align 8
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %93, %5
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @get_bits_left(i32* %39)
  %41 = load i32, i32* %13, align 4
  %42 = mul nsw i32 6, %41
  %43 = icmp sgt i32 %40, %42
  br label %44

44:                                               ; preds = %38, %34
  %45 = phi i1 [ false, %34 ], [ %43, %38 ]
  br i1 %45, label %46, label %96

46:                                               ; preds = %44
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %85, %46
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %88

51:                                               ; preds = %47
  %52 = load i32*, i32** %6, align 8
  %53 = load [8 x i32]*, [8 x i32]** %10, align 8
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %53, i64 0
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* %54, i64 0, i64 0
  %56 = call i32 @decode_sym(i32* %52, i32* %55)
  %57 = load i32*, i32** %15, align 8
  %58 = load i32, i32* %11, align 4
  %59 = mul nsw i32 %58, 3
  %60 = add nsw i32 %59, 0
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  store i32 %56, i32* %62, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = load [8 x i32]*, [8 x i32]** %10, align 8
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %64, i64 1
  %66 = getelementptr inbounds [8 x i32], [8 x i32]* %65, i64 0, i64 0
  %67 = call i32 @decode_sym(i32* %63, i32* %66)
  %68 = load i32*, i32** %15, align 8
  %69 = load i32, i32* %11, align 4
  %70 = mul nsw i32 %69, 3
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  store i32 %67, i32* %73, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = load [8 x i32]*, [8 x i32]** %10, align 8
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %75, i64 2
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %76, i64 0, i64 0
  %78 = call i32 @decode_sym(i32* %74, i32* %77)
  %79 = load i32*, i32** %15, align 8
  %80 = load i32, i32* %11, align 4
  %81 = mul nsw i32 %80, 3
  %82 = add nsw i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  store i32 %78, i32* %84, align 4
  br label %85

85:                                               ; preds = %51
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %47

88:                                               ; preds = %47
  %89 = load i32, i32* %14, align 4
  %90 = load i32*, i32** %15, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32* %92, i32** %15, align 8
  br label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %34

96:                                               ; preds = %44
  %97 = load i32, i32* %12, align 4
  ret i32 %97
}

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @decode_sym(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
