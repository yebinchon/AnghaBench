; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_agm.c_decode_huffman2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_agm.c_decode_huffman2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32*, %struct.TYPE_9__, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32)* @decode_huffman2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_huffman2(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [256 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [8 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %8, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 5
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 4
  %33 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_8__* %32)
  %34 = call i32 @init_get_bits8(i32* %26, i32 %30, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %4, align 4
  br label %181

38:                                               ; preds = %3
  %39 = load i32*, i32** %9, align 8
  %40 = call i64 @get_bits_long(i32* %39, i32 32)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = mul nsw i64 %48, %51
  %53 = mul nsw i64 %52, 9
  %54 = add nsw i64 %53, 10000
  %55 = icmp sgt i64 %45, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %38
  %57 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %57, i32* %4, align 4
  br label %181

58:                                               ; preds = %38
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @av_fast_padded_malloc(i32** %60, i32* %62, i64 %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %58
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = call i32 @AVERROR(i32 %72)
  store i32 %73, i32* %4, align 4
  br label %181

74:                                               ; preds = %58
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @get_bits(i32* %75, i32 1)
  store i32 %76, i32* %12, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @get_bits(i32* %77, i32 1)
  %79 = add nsw i32 4, %78
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %119

82:                                               ; preds = %74
  %83 = bitcast [8 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %83, i8 0, i64 32, i1 false)
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 @get_bits(i32* %84, i32 3)
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %87

87:                                               ; preds = %98, %82
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @get_bits(i32* %92, i32 %93)
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 %96
  store i32 %94, i32* %97, align 4
  br label %98

98:                                               ; preds = %91
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %16, align 4
  br label %87

101:                                              ; preds = %87
  store i32 0, i32* %17, align 4
  br label %102

102:                                              ; preds = %115, %101
  %103 = load i32, i32* %17, align 4
  %104 = icmp slt i32 %103, 256
  br i1 %104, label %105, label %118

105:                                              ; preds = %102
  %106 = load i32*, i32** %9, align 8
  %107 = call i32 @get_bits(i32* %106, i32 3)
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %18, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %17, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 %113
  store i32 %111, i32* %114, align 4
  br label %115

115:                                              ; preds = %105
  %116 = load i32, i32* %17, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %17, align 4
  br label %102

118:                                              ; preds = %102
  br label %134

119:                                              ; preds = %74
  store i32 0, i32* %19, align 4
  br label %120

120:                                              ; preds = %130, %119
  %121 = load i32, i32* %19, align 4
  %122 = icmp slt i32 %121, 256
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = load i32*, i32** %9, align 8
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @get_bits(i32* %124, i32 %125)
  %127 = load i32, i32* %19, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 %128
  store i32 %126, i32* %129, align 4
  br label %130

130:                                              ; preds = %123
  %131 = load i32, i32* %19, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %19, align 4
  br label %120

133:                                              ; preds = %120
  br label %134

134:                                              ; preds = %133, %118
  %135 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  %138 = call i32 @build_huff(i32* %135, %struct.TYPE_9__* %137)
  store i32 %138, i32* %11, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %134
  %141 = load i32, i32* %11, align 4
  store i32 %141, i32* %4, align 4
  br label %181

142:                                              ; preds = %134
  store i32 0, i32* %12, align 4
  br label %143

143:                                              ; preds = %171, %142
  %144 = load i32*, i32** %9, align 8
  %145 = call i64 @get_bits_left(i32* %144)
  %146 = icmp sgt i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %143
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp slt i64 %149, %152
  br label %154

154:                                              ; preds = %147, %143
  %155 = phi i1 [ false, %143 ], [ %153, %147 ]
  br i1 %155, label %156, label %180

156:                                              ; preds = %154
  %157 = load i32*, i32** %9, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @get_vlc2(i32* %157, i32 %161, i32 %165, i32 3)
  store i32 %166, i32* %20, align 4
  %167 = load i32, i32* %20, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %156
  %170 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %170, i32* %4, align 4
  br label %181

171:                                              ; preds = %156
  %172 = load i32, i32* %20, align 4
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %12, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %12, align 4
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  store i32 %172, i32* %179, align 4
  br label %143

180:                                              ; preds = %154
  store i32 0, i32* %4, align 4
  br label %181

181:                                              ; preds = %180, %169, %140, %71, %56, %36
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32 @init_get_bits8(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(%struct.TYPE_8__*) #1

declare dso_local i64 @get_bits_long(i32*, i32) #1

declare dso_local i32 @av_fast_padded_malloc(i32**, i32*, i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @build_huff(i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @get_bits_left(i32*) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
