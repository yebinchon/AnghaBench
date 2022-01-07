; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_planar8ToP01xleWrapper.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_swscale_unscaled.c_planar8ToP01xleWrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32**, i32*, i32, i32, i32**, i32*)* @planar8ToP01xleWrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @planar8ToP01xleWrapper(%struct.TYPE_3__* %0, i32** %1, i32* %2, i32 %3, i32 %4, i32** %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32** %5, i32*** %13, align 8
  store i32* %6, i32** %14, align 8
  %25 = load i32**, i32*** %13, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %11, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %27, i64 %33
  store i32* %34, i32** %15, align 8
  %35 = load i32**, i32*** %13, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %11, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sdiv i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %37, i64 %44
  store i32* %45, i32** %16, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = srem i32 %48, 2
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %7
  %52 = load i32*, i32** %14, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = srem i32 %54, 2
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %51, %7
  %58 = phi i1 [ true, %7 ], [ %56, %51 ]
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 @av_assert0(i32 %60)
  store i32 0, i32* %18, align 4
  br label %62

62:                                               ; preds = %177, %57
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %180

66:                                               ; preds = %62
  %67 = load i32*, i32** %15, align 8
  store i32* %67, i32** %20, align 8
  %68 = load i32**, i32*** %9, align 8
  %69 = getelementptr inbounds i32*, i32** %68, i64 0
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %21, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %17, align 4
  br label %74

74:                                               ; preds = %89, %66
  %75 = load i32, i32* %17, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %74
  %78 = load i32*, i32** %21, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %21, align 8
  %80 = load i32, i32* %78, align 4
  store i32 %80, i32* %19, align 4
  %81 = load i32*, i32** %20, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %20, align 8
  %83 = ptrtoint i32* %81 to i32
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %19, align 4
  %86 = shl i32 %85, 8
  %87 = or i32 %84, %86
  %88 = call i32 @output_pixel(i32 %83, i32 %87)
  br label %89

89:                                               ; preds = %77
  %90 = load i32, i32* %17, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %17, align 4
  br label %74

92:                                               ; preds = %74
  %93 = load i32*, i32** %10, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32**, i32*** %9, align 8
  %97 = getelementptr inbounds i32*, i32** %96, i64 0
  %98 = load i32*, i32** %97, align 8
  %99 = sext i32 %95 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %97, align 8
  %101 = load i32*, i32** %14, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = sdiv i32 %103, 2
  %105 = load i32*, i32** %15, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %15, align 8
  %108 = load i32, i32* %18, align 4
  %109 = and i32 %108, 1
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %176, label %111

111:                                              ; preds = %92
  %112 = load i32*, i32** %16, align 8
  store i32* %112, i32** %22, align 8
  %113 = load i32**, i32*** %9, align 8
  %114 = getelementptr inbounds i32*, i32** %113, i64 1
  %115 = load i32*, i32** %114, align 8
  store i32* %115, i32** %23, align 8
  %116 = load i32**, i32*** %9, align 8
  %117 = getelementptr inbounds i32*, i32** %116, i64 2
  %118 = load i32*, i32** %117, align 8
  store i32* %118, i32** %24, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sdiv i32 %121, 2
  store i32 %122, i32* %17, align 4
  br label %123

123:                                              ; preds = %149, %111
  %124 = load i32, i32* %17, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %152

126:                                              ; preds = %123
  %127 = load i32*, i32** %23, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %23, align 8
  %129 = load i32, i32* %127, align 4
  store i32 %129, i32* %19, align 4
  %130 = load i32*, i32** %22, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %22, align 8
  %132 = ptrtoint i32* %130 to i32
  %133 = load i32, i32* %19, align 4
  %134 = load i32, i32* %19, align 4
  %135 = shl i32 %134, 8
  %136 = or i32 %133, %135
  %137 = call i32 @output_pixel(i32 %132, i32 %136)
  %138 = load i32*, i32** %24, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %24, align 8
  %140 = load i32, i32* %138, align 4
  store i32 %140, i32* %19, align 4
  %141 = load i32*, i32** %22, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %22, align 8
  %143 = ptrtoint i32* %141 to i32
  %144 = load i32, i32* %19, align 4
  %145 = load i32, i32* %19, align 4
  %146 = shl i32 %145, 8
  %147 = or i32 %144, %146
  %148 = call i32 @output_pixel(i32 %143, i32 %147)
  br label %149

149:                                              ; preds = %126
  %150 = load i32, i32* %17, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %17, align 4
  br label %123

152:                                              ; preds = %123
  %153 = load i32*, i32** %10, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32**, i32*** %9, align 8
  %157 = getelementptr inbounds i32*, i32** %156, i64 1
  %158 = load i32*, i32** %157, align 8
  %159 = sext i32 %155 to i64
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32* %160, i32** %157, align 8
  %161 = load i32*, i32** %10, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  %163 = load i32, i32* %162, align 4
  %164 = load i32**, i32*** %9, align 8
  %165 = getelementptr inbounds i32*, i32** %164, i64 2
  %166 = load i32*, i32** %165, align 8
  %167 = sext i32 %163 to i64
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  store i32* %168, i32** %165, align 8
  %169 = load i32*, i32** %14, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = sdiv i32 %171, 2
  %173 = load i32*, i32** %16, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  store i32* %175, i32** %16, align 8
  br label %176

176:                                              ; preds = %152, %92
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %18, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %18, align 4
  br label %62

180:                                              ; preds = %62
  %181 = load i32, i32* %12, align 4
  ret i32 %181
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @output_pixel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
