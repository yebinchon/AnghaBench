; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tiertexseqv.c_seqvideo_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tiertexseqv.c_seqvideo_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8**, i32, i32* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32)* @seqvideo_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seqvideo_decode(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [3 x i8], align 1
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %6, align 8
  %25 = load i8, i8* %23, align 1
  %26 = zext i8 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %90

30:                                               ; preds = %3
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** %18, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = icmp slt i64 %43, 768
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %46, i32* %4, align 4
  br label %171

47:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %82, %47
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 256
  br i1 %50, label %51, label %85

51:                                               ; preds = %48
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %69, %51
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 3
  br i1 %54, label %55, label %74

55:                                               ; preds = %52
  %56 = load i8*, i8** %6, align 8
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl i32 %58, 2
  %60 = load i8*, i8** %6, align 8
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = ashr i32 %62, 4
  %64 = or i32 %59, %63
  %65 = trunc i32 %64 to i8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 %67
  store i8 %65, i8* %68, align 1
  br label %69

69:                                               ; preds = %55
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %6, align 8
  br label %52

74:                                               ; preds = %52
  %75 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 0
  %76 = call i32 @AV_RB24(i8* %75)
  %77 = or i32 -16777216, %76
  %78 = load i32*, i32** %18, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  br label %82

82:                                               ; preds = %74
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %48

85:                                               ; preds = %48
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  store i32 1, i32* %89, align 8
  br label %90

90:                                               ; preds = %85, %3
  %91 = load i32, i32* %10, align 4
  %92 = and i32 %91, 2
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %170

94:                                               ; preds = %90
  %95 = load i8*, i8** %8, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = icmp slt i64 %99, 128
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %102, i32* %4, align 4
  br label %171

103:                                              ; preds = %94
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @init_get_bits(i32* %9, i8* %104, i32 1024)
  %106 = load i8*, i8** %6, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 128
  store i8* %107, i8** %6, align 8
  store i32 0, i32* %14, align 4
  br label %108

108:                                              ; preds = %166, %103
  %109 = load i32, i32* %14, align 4
  %110 = icmp slt i32 %109, 128
  br i1 %110, label %111, label %169

111:                                              ; preds = %108
  store i32 0, i32* %13, align 4
  br label %112

112:                                              ; preds = %162, %111
  %113 = load i32, i32* %13, align 4
  %114 = icmp slt i32 %113, 256
  br i1 %114, label %115, label %165

115:                                              ; preds = %112
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i8**, i8*** %119, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 0
  %122 = load i8*, i8** %121, align 8
  %123 = load i32, i32* %14, align 4
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 %123, %130
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %122, i64 %134
  store i8* %135, i8** %17, align 8
  %136 = call i32 @get_bits(i32* %9, i32 2)
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  switch i32 %137, label %156 [
    i32 1, label %138
    i32 2, label %144
    i32 3, label %150
  ]

138:                                              ; preds = %115
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %140 = load i8*, i8** %6, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = load i8*, i8** %17, align 8
  %143 = call i8* @seq_decode_op1(%struct.TYPE_8__* %139, i8* %140, i8* %141, i8* %142)
  store i8* %143, i8** %6, align 8
  br label %156

144:                                              ; preds = %115
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %146 = load i8*, i8** %6, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = load i8*, i8** %17, align 8
  %149 = call i8* @seq_decode_op2(%struct.TYPE_8__* %145, i8* %146, i8* %147, i8* %148)
  store i8* %149, i8** %6, align 8
  br label %156

150:                                              ; preds = %115
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %152 = load i8*, i8** %6, align 8
  %153 = load i8*, i8** %8, align 8
  %154 = load i8*, i8** %17, align 8
  %155 = call i8* @seq_decode_op3(%struct.TYPE_8__* %151, i8* %152, i8* %153, i8* %154)
  store i8* %155, i8** %6, align 8
  br label %156

156:                                              ; preds = %115, %150, %144, %138
  %157 = load i8*, i8** %6, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %161, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %160, i32* %4, align 4
  br label %171

161:                                              ; preds = %156
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %163, 8
  store i32 %164, i32* %13, align 4
  br label %112

165:                                              ; preds = %112
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %167, 8
  store i32 %168, i32* %14, align 4
  br label %108

169:                                              ; preds = %108
  br label %170

170:                                              ; preds = %169, %90
  store i32 0, i32* %4, align 4
  br label %171

171:                                              ; preds = %170, %159, %101, %45
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i32 @AV_RB24(i8*) #1

declare dso_local i32 @init_get_bits(i32*, i8*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i8* @seq_decode_op1(%struct.TYPE_8__*, i8*, i8*, i8*) #1

declare dso_local i8* @seq_decode_op2(%struct.TYPE_8__*, i8*, i8*, i8*) #1

declare dso_local i8* @seq_decode_op3(%struct.TYPE_8__*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
