; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxtory.c_dx2_decode_slice_420.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxtory.c_dx2_decode_slice_420.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32, i32, [8 x i32]*)* @dx2_decode_slice_420 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dx2_decode_slice_420(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3, [8 x i32]* %4) #0 {
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
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store [8 x i32]* %4, [8 x i32]** %10, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %13, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %15, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %16, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32**, i32*** %39, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %8, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  store i32* %47, i32** %17, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32**, i32*** %49, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %15, align 4
  %54 = ashr i32 %53, 1
  %55 = load i32, i32* %8, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %52, i64 %57
  store i32* %58, i32** %18, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32**, i32*** %60, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i64 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %16, align 4
  %65 = ashr i32 %64, 1
  %66 = load i32, i32* %8, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %63, i64 %68
  store i32* %69, i32** %19, align 8
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %180, %5
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %9, align 4
  %73 = sub nsw i32 %72, 1
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @get_bits_left(i32* %76)
  %78 = load i32, i32* %13, align 4
  %79 = mul nsw i32 6, %78
  %80 = icmp sgt i32 %77, %79
  br label %81

81:                                               ; preds = %75, %70
  %82 = phi i1 [ false, %70 ], [ %80, %75 ]
  br i1 %82, label %83, label %183

83:                                               ; preds = %81
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %163, %83
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %166

88:                                               ; preds = %84
  %89 = load i32*, i32** %6, align 8
  %90 = load [8 x i32]*, [8 x i32]** %10, align 8
  %91 = getelementptr inbounds [8 x i32], [8 x i32]* %90, i64 0
  %92 = getelementptr inbounds [8 x i32], [8 x i32]* %91, i64 0, i64 0
  %93 = call i32 @decode_sym(i32* %89, i32* %92)
  %94 = load i32*, i32** %17, align 8
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 0
  %97 = load i32, i32* %14, align 4
  %98 = mul nsw i32 0, %97
  %99 = add nsw i32 %96, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %94, i64 %100
  store i32 %93, i32* %101, align 4
  %102 = load i32*, i32** %6, align 8
  %103 = load [8 x i32]*, [8 x i32]** %10, align 8
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* %103, i64 0
  %105 = getelementptr inbounds [8 x i32], [8 x i32]* %104, i64 0, i64 0
  %106 = call i32 @decode_sym(i32* %102, i32* %105)
  %107 = load i32*, i32** %17, align 8
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  %110 = load i32, i32* %14, align 4
  %111 = mul nsw i32 0, %110
  %112 = add nsw i32 %109, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %107, i64 %113
  store i32 %106, i32* %114, align 4
  %115 = load i32*, i32** %6, align 8
  %116 = load [8 x i32]*, [8 x i32]** %10, align 8
  %117 = getelementptr inbounds [8 x i32], [8 x i32]* %116, i64 0
  %118 = getelementptr inbounds [8 x i32], [8 x i32]* %117, i64 0, i64 0
  %119 = call i32 @decode_sym(i32* %115, i32* %118)
  %120 = load i32*, i32** %17, align 8
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 0
  %123 = load i32, i32* %14, align 4
  %124 = mul nsw i32 1, %123
  %125 = add nsw i32 %122, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %120, i64 %126
  store i32 %119, i32* %127, align 4
  %128 = load i32*, i32** %6, align 8
  %129 = load [8 x i32]*, [8 x i32]** %10, align 8
  %130 = getelementptr inbounds [8 x i32], [8 x i32]* %129, i64 0
  %131 = getelementptr inbounds [8 x i32], [8 x i32]* %130, i64 0, i64 0
  %132 = call i32 @decode_sym(i32* %128, i32* %131)
  %133 = load i32*, i32** %17, align 8
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  %136 = load i32, i32* %14, align 4
  %137 = mul nsw i32 1, %136
  %138 = add nsw i32 %135, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %133, i64 %139
  store i32 %132, i32* %140, align 4
  %141 = load i32*, i32** %6, align 8
  %142 = load [8 x i32]*, [8 x i32]** %10, align 8
  %143 = getelementptr inbounds [8 x i32], [8 x i32]* %142, i64 1
  %144 = getelementptr inbounds [8 x i32], [8 x i32]* %143, i64 0, i64 0
  %145 = call i32 @decode_sym(i32* %141, i32* %144)
  %146 = xor i32 %145, 128
  %147 = load i32*, i32** %18, align 8
  %148 = load i32, i32* %11, align 4
  %149 = ashr i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  store i32 %146, i32* %151, align 4
  %152 = load i32*, i32** %6, align 8
  %153 = load [8 x i32]*, [8 x i32]** %10, align 8
  %154 = getelementptr inbounds [8 x i32], [8 x i32]* %153, i64 2
  %155 = getelementptr inbounds [8 x i32], [8 x i32]* %154, i64 0, i64 0
  %156 = call i32 @decode_sym(i32* %152, i32* %155)
  %157 = xor i32 %156, 128
  %158 = load i32*, i32** %19, align 8
  %159 = load i32, i32* %11, align 4
  %160 = ashr i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  store i32 %157, i32* %162, align 4
  br label %163

163:                                              ; preds = %88
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 %164, 2
  store i32 %165, i32* %11, align 4
  br label %84

166:                                              ; preds = %84
  %167 = load i32, i32* %14, align 4
  %168 = shl i32 %167, 1
  %169 = load i32*, i32** %17, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32* %171, i32** %17, align 8
  %172 = load i32, i32* %15, align 4
  %173 = load i32*, i32** %18, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  store i32* %175, i32** %18, align 8
  %176 = load i32, i32* %16, align 4
  %177 = load i32*, i32** %19, align 8
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  store i32* %179, i32** %19, align 8
  br label %180

180:                                              ; preds = %166
  %181 = load i32, i32* %12, align 4
  %182 = add nsw i32 %181, 2
  store i32 %182, i32* %12, align 4
  br label %70

183:                                              ; preds = %81
  %184 = load i32, i32* %12, align 4
  ret i32 %184
}

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @decode_sym(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
