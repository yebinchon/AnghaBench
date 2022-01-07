; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_codebook_bits_offset.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mlpenc.c_codebook_bits_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__*, i64* }
%struct.TYPE_7__ = type { i32, i64* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i64 }

@codebook_extremes = common dso_local global i64** null, align 8
@INT_MAX = common dso_local global i32 0, align 4
@ff_mlp_huffman_tables = common dso_local global i64*** null, align 8
@HUFF_OFFSET_MIN = common dso_local global i32 0, align 4
@HUFF_OFFSET_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32, i64, i64, i64, %struct.TYPE_8__*)* @codebook_bits_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codebook_bits_offset(%struct.TYPE_6__* %0, i32 %1, i32 %2, i64 %3, i64 %4, i64 %5, %struct.TYPE_8__* %6) #0 {
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %14, align 8
  %31 = load i64**, i64*** @codebook_extremes, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64*, i64** %31, i64 %33
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %15, align 8
  %38 = load i64**, i64*** @codebook_extremes, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64*, i64** %38, i64 %40
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %16, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  store i64* %50, i64** %17, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %18, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sub nsw i32 2, %54
  %56 = add nsw i32 7, %55
  store i32 %56, i32* %19, align 4
  %57 = load i64, i64* %13, align 8
  store i64 %57, i64* %20, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %58 = load i32, i32* @INT_MAX, align 4
  store i32 %58, i32* %23, align 4
  %59 = load i32, i32* @INT_MAX, align 4
  store i32 %59, i32* %24, align 4
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* %11, align 8
  %62 = sub nsw i64 %61, %60
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* %12, align 8
  %65 = sub nsw i64 %64, %63
  store i64 %65, i64* %12, align 8
  br label %66

66:                                               ; preds = %76, %7
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %15, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %16, align 8
  %73 = icmp sgt i64 %71, %72
  br label %74

74:                                               ; preds = %70, %66
  %75 = phi i1 [ true, %66 ], [ %73, %70 ]
  br i1 %75, label %76, label %83

76:                                               ; preds = %74
  %77 = load i32, i32* %21, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %21, align 4
  %79 = load i64, i64* %11, align 8
  %80 = ashr i64 %79, 1
  store i64 %80, i64* %11, align 8
  %81 = load i64, i64* %12, align 8
  %82 = ashr i64 %81, 1
  store i64 %82, i64* %12, align 8
  br label %66

83:                                               ; preds = %74
  %84 = load i32, i32* %21, align 4
  %85 = shl i32 1, %84
  store i32 %85, i32* %25, align 4
  %86 = load i32, i32* %25, align 4
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %26, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load i32, i32* %25, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %20, align 8
  %94 = sub nsw i64 %93, %92
  store i64 %94, i64* %20, align 8
  %95 = load i32, i32* %21, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %21, align 4
  br label %97

97:                                               ; preds = %90, %83
  store i32 0, i32* %27, align 4
  br label %98

98:                                               ; preds = %166, %97
  %99 = load i32, i32* %27, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %169

104:                                              ; preds = %98
  %105 = load i64*, i64** %17, align 8
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = ashr i64 %106, %113
  store i64 %114, i64* %28, align 8
  %115 = load i64, i64* %20, align 8
  %116 = load i64, i64* %28, align 8
  %117 = sub nsw i64 %116, %115
  store i64 %117, i64* %28, align 8
  %118 = load i64, i64* %28, align 8
  %119 = load i32, i32* %26, align 4
  %120 = sext i32 %119 to i64
  %121 = and i64 %118, %120
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %29, align 4
  %123 = load i32, i32* %29, align 4
  %124 = load i32, i32* %23, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %104
  %127 = load i32, i32* %29, align 4
  store i32 %127, i32* %23, align 4
  br label %128

128:                                              ; preds = %126, %104
  %129 = load i32, i32* %25, align 4
  %130 = load i32, i32* %29, align 4
  %131 = sub nsw i32 %129, %130
  %132 = sub nsw i32 %131, 1
  store i32 %132, i32* %30, align 4
  %133 = load i32, i32* %30, align 4
  %134 = load i32, i32* %24, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = load i32, i32* %30, align 4
  store i32 %137, i32* %24, align 4
  br label %138

138:                                              ; preds = %136, %128
  %139 = load i32, i32* %21, align 4
  %140 = load i64, i64* %28, align 8
  %141 = zext i32 %139 to i64
  %142 = ashr i64 %140, %141
  store i64 %142, i64* %28, align 8
  %143 = load i64***, i64**** @ff_mlp_huffman_tables, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64**, i64*** %143, i64 %145
  %147 = load i64**, i64*** %146, align 8
  %148 = load i64, i64* %28, align 8
  %149 = load i32, i32* %19, align 4
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %148, %150
  %152 = getelementptr inbounds i64*, i64** %147, i64 %151
  %153 = load i64*, i64** %152, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 1
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* %22, align 4
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %157, %155
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %22, align 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i64*, i64** %17, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i64, i64* %163, i64 %164
  store i64* %165, i64** %17, align 8
  br label %166

166:                                              ; preds = %138
  %167 = load i32, i32* %27, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %27, align 4
  br label %98

169:                                              ; preds = %98
  %170 = load i64, i64* %13, align 8
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 4
  store i64 %170, i64* %172, align 8
  %173 = load i32, i32* %21, align 4
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  %176 = load i32, i32* %21, align 4
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = mul nsw i32 %176, %179
  %181 = load i32, i32* %22, align 4
  %182 = add nsw i32 %180, %181
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  %185 = load i64, i64* %13, align 8
  %186 = load i32, i32* %23, align 4
  %187 = sext i32 %186 to i64
  %188 = sub nsw i64 %185, %187
  %189 = load i32, i32* @HUFF_OFFSET_MIN, align 4
  %190 = call i32 @FFMAX(i64 %188, i32 %189)
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 3
  store i32 %190, i32* %192, align 4
  %193 = load i64, i64* %13, align 8
  %194 = load i32, i32* %24, align 4
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %193, %195
  %197 = load i32, i32* @HUFF_OFFSET_MAX, align 4
  %198 = call i32 @FFMIN(i64 %196, i32 %197)
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 8
  ret void
}

declare dso_local i32 @FFMAX(i64, i32) #1

declare dso_local i32 @FFMIN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
