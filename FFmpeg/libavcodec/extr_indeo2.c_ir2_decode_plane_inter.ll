; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_indeo2.c_ir2_decode_plane_inter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_indeo2.c_ir2_decode_plane_inter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32*, i32, i32*)* @ir2_decode_plane_inter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir2_decode_plane_inter(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* %9, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %22, i32* %7, align 4
  br label %118

23:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %114, %23
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %117

28:                                               ; preds = %24
  store i32 0, i32* %15, align 4
  br label %29

29:                                               ; preds = %108, %28
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %109

33:                                               ; preds = %29
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i64 @get_bits_left(i32* %35)
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %39, i32* %7, align 4
  br label %118

40:                                               ; preds = %33
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @ir2_get_code(i32* %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp sge i32 %44, 128
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i32, i32* %16, align 4
  %48 = sub nsw i32 %47, 127
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = mul nsw i32 %49, 2
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %15, align 4
  br label %108

53:                                               ; preds = %40
  %54 = load i32, i32* %16, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %57, i32* %7, align 4
  br label %118

58:                                               ; preds = %53
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %16, align 4
  %66 = mul nsw i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 128
  %71 = mul nsw i32 %70, 3
  %72 = ashr i32 %71, 2
  %73 = add nsw i32 %63, %72
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %17, align 4
  %75 = call i32 @av_clip_uint8(i32 %74)
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %17, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %15, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %13, align 8
  %89 = load i32, i32* %16, align 4
  %90 = mul nsw i32 %89, 2
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %94, 128
  %96 = mul nsw i32 %95, 3
  %97 = ashr i32 %96, 2
  %98 = add nsw i32 %87, %97
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %17, align 4
  %100 = call i32 @av_clip_uint8(i32 %99)
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %101, i32* %105, align 4
  %106 = load i32, i32* %15, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %15, align 4
  br label %108

108:                                              ; preds = %58, %46
  br label %29

109:                                              ; preds = %29
  %110 = load i32, i32* %12, align 4
  %111 = load i32*, i32** %11, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32* %113, i32** %11, align 8
  br label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  br label %24

117:                                              ; preds = %24
  store i32 0, i32* %7, align 4
  br label %118

118:                                              ; preds = %117, %56, %38, %21
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i64 @get_bits_left(i32*) #1

declare dso_local i32 @ir2_get_code(i32*) #1

declare dso_local i32 @av_clip_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
