; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxtory.c_dx2_decode_slice_410.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxtory.c_dx2_decode_slice_410.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32, i32, [8 x i32]*)* @dx2_decode_slice_410 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dx2_decode_slice_410(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3, [8 x i32]* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x i32]*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store [8 x i32]* %4, [8 x i32]** %10, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %15, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %16, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %17, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %18, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32**, i32*** %41, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %8, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  store i32* %49, i32** %19, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32**, i32*** %51, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %17, align 4
  %56 = ashr i32 %55, 2
  %57 = load i32, i32* %8, align 4
  %58 = mul nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %54, i64 %59
  store i32* %60, i32** %20, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32**, i32*** %62, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %18, align 4
  %67 = ashr i32 %66, 2
  %68 = load i32, i32* %8, align 4
  %69 = mul nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %65, i64 %70
  store i32* %71, i32** %21, align 8
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %161, %5
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %74, 3
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @get_bits_left(i32* %78)
  %80 = load i32, i32* %15, align 4
  %81 = mul nsw i32 9, %80
  %82 = icmp sgt i32 %79, %81
  br label %83

83:                                               ; preds = %77, %72
  %84 = phi i1 [ false, %72 ], [ %82, %77 ]
  br i1 %84, label %85, label %164

85:                                               ; preds = %83
  store i32 0, i32* %11, align 4
  br label %86

86:                                               ; preds = %144, %85
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %147

90:                                               ; preds = %86
  store i32 0, i32* %14, align 4
  br label %91

91:                                               ; preds = %118, %90
  %92 = load i32, i32* %14, align 4
  %93 = icmp slt i32 %92, 4
  br i1 %93, label %94, label %121

94:                                               ; preds = %91
  store i32 0, i32* %13, align 4
  br label %95

95:                                               ; preds = %114, %94
  %96 = load i32, i32* %13, align 4
  %97 = icmp slt i32 %96, 4
  br i1 %97, label %98, label %117

98:                                               ; preds = %95
  %99 = load i32*, i32** %6, align 8
  %100 = load [8 x i32]*, [8 x i32]** %10, align 8
  %101 = getelementptr inbounds [8 x i32], [8 x i32]* %100, i64 0
  %102 = getelementptr inbounds [8 x i32], [8 x i32]* %101, i64 0, i64 0
  %103 = call i32 @decode_sym(i32* %99, i32* %102)
  %104 = load i32*, i32** %19, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %105, %106
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %16, align 4
  %110 = mul nsw i32 %108, %109
  %111 = add nsw i32 %107, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %104, i64 %112
  store i32 %103, i32* %113, align 4
  br label %114

114:                                              ; preds = %98
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %95

117:                                              ; preds = %95
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %14, align 4
  br label %91

121:                                              ; preds = %91
  %122 = load i32*, i32** %6, align 8
  %123 = load [8 x i32]*, [8 x i32]** %10, align 8
  %124 = getelementptr inbounds [8 x i32], [8 x i32]* %123, i64 1
  %125 = getelementptr inbounds [8 x i32], [8 x i32]* %124, i64 0, i64 0
  %126 = call i32 @decode_sym(i32* %122, i32* %125)
  %127 = xor i32 %126, 128
  %128 = load i32*, i32** %20, align 8
  %129 = load i32, i32* %11, align 4
  %130 = ashr i32 %129, 2
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  store i32 %127, i32* %132, align 4
  %133 = load i32*, i32** %6, align 8
  %134 = load [8 x i32]*, [8 x i32]** %10, align 8
  %135 = getelementptr inbounds [8 x i32], [8 x i32]* %134, i64 2
  %136 = getelementptr inbounds [8 x i32], [8 x i32]* %135, i64 0, i64 0
  %137 = call i32 @decode_sym(i32* %133, i32* %136)
  %138 = xor i32 %137, 128
  %139 = load i32*, i32** %21, align 8
  %140 = load i32, i32* %11, align 4
  %141 = ashr i32 %140, 2
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  store i32 %138, i32* %143, align 4
  br label %144

144:                                              ; preds = %121
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 4
  store i32 %146, i32* %11, align 4
  br label %86

147:                                              ; preds = %86
  %148 = load i32, i32* %16, align 4
  %149 = shl i32 %148, 2
  %150 = load i32*, i32** %19, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32* %152, i32** %19, align 8
  %153 = load i32, i32* %17, align 4
  %154 = load i32*, i32** %20, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  store i32* %156, i32** %20, align 8
  %157 = load i32, i32* %18, align 4
  %158 = load i32*, i32** %21, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32* %160, i32** %21, align 8
  br label %161

161:                                              ; preds = %147
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %162, 4
  store i32 %163, i32* %12, align 4
  br label %72

164:                                              ; preds = %83
  %165 = load i32, i32* %12, align 4
  ret i32 %165
}

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @decode_sym(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
