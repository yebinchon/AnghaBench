; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_fitsenc.c_fits_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_fitsenc.c_fits_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32* }
%struct.TYPE_11__ = type { i32*, i32** }

@__const.fits_encode_frame.map = private unnamed_addr constant [4 x i32] [i32 2, i32 0, i32 1, i32 3], align 16
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unsupported pixel format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32*)* @fits_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fits_encode_frame(%struct.TYPE_12__* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [4 x i32], align 16
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store i32* %3, i32** %9, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %10, align 8
  store i32 32768, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 1, i32* %19, align 4
  %26 = bitcast [4 x i32]* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %26, i8* align 16 bitcast ([4 x i32]* @__const.fits_encode_frame.map to i8*), i64 16, i1 false)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %55 [
    i32 128, label %30
    i32 129, label %30
    i32 131, label %39
    i32 133, label %39
    i32 130, label %47
    i32 132, label %47
  ]

30:                                               ; preds = %4, %4
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  store i32 0, i32* %31, align 16
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 128
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 8, i32* %18, align 4
  br label %38

37:                                               ; preds = %30
  store i32 16, i32* %18, align 4
  br label %38

38:                                               ; preds = %37, %36
  br label %61

39:                                               ; preds = %4, %4
  store i32 8, i32* %18, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 131
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 3, i32* %19, align 4
  br label %46

45:                                               ; preds = %39
  store i32 4, i32* %19, align 4
  br label %46

46:                                               ; preds = %45, %44
  br label %61

47:                                               ; preds = %4, %4
  store i32 16, i32* %18, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 130
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 3, i32* %19, align 4
  br label %54

53:                                               ; preds = %47
  store i32 4, i32* %19, align 4
  br label %54

54:                                               ; preds = %53, %52
  br label %61

55:                                               ; preds = %4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = load i32, i32* @AV_LOG_ERROR, align 4
  %58 = call i32 @av_log(%struct.TYPE_12__* %56, i32 %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = call i32 @AVERROR(i32 %59)
  store i32 %60, i32* %5, align 4
  br label %197

61:                                               ; preds = %54, %46, %38
  %62 = load i32, i32* %18, align 4
  %63 = ashr i32 %62, 3
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %67, %70
  %72 = load i32, i32* %19, align 4
  %73 = mul nsw i32 %71, %72
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %74, 2879
  %76 = sdiv i32 %75, 2880
  %77 = mul nsw i32 %76, 2880
  store i32 %77, i32* %16, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @ff_alloc_packet2(%struct.TYPE_12__* %78, %struct.TYPE_10__* %79, i32 %80, i32 0)
  store i32 %81, i32* %17, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %61
  %84 = load i32, i32* %17, align 4
  store i32 %84, i32* %5, align 4
  br label %197

85:                                               ; preds = %61
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  store i32* %88, i32** %11, align 8
  store i32* %88, i32** %12, align 8
  store i32 0, i32* %22, align 4
  br label %89

89:                                               ; preds = %168, %85
  %90 = load i32, i32* %22, align 4
  %91 = load i32, i32* %19, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %171

93:                                               ; preds = %89
  store i32 0, i32* %20, align 4
  br label %94

94:                                               ; preds = %164, %93
  %95 = load i32, i32* %20, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %167

100:                                              ; preds = %94
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i32**, i32*** %102, align 8
  %104 = load i32, i32* %22, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %103, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %20, align 4
  %115 = sub nsw i32 %113, %114
  %116 = sub nsw i32 %115, 1
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %22, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %119, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %116, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %110, i64 %128
  store i32* %129, i32** %13, align 8
  %130 = load i32, i32* %18, align 4
  %131 = icmp eq i32 %130, 16
  br i1 %131, label %132, label %150

132:                                              ; preds = %100
  store i32 0, i32* %21, align 4
  br label %133

133:                                              ; preds = %146, %132
  %134 = load i32, i32* %21, align 4
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %149

139:                                              ; preds = %133
  %140 = load i32*, i32** %13, align 8
  %141 = call i32 @AV_RB16(i32* %140)
  %142 = xor i32 %141, 32768
  %143 = call i32 @bytestream_put_be16(i32** %11, i32 %142)
  %144 = load i32*, i32** %13, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  store i32* %145, i32** %13, align 8
  br label %146

146:                                              ; preds = %139
  %147 = load i32, i32* %21, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %21, align 4
  br label %133

149:                                              ; preds = %133
  br label %163

150:                                              ; preds = %100
  %151 = load i32*, i32** %11, align 8
  %152 = load i32*, i32** %13, align 8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @memcpy(i32* %151, i32* %152, i32 %155)
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** %11, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  store i32* %162, i32** %11, align 8
  br label %163

163:                                              ; preds = %150, %149
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %20, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %20, align 4
  br label %94

167:                                              ; preds = %94
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %22, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %22, align 4
  br label %89

171:                                              ; preds = %89
  %172 = load i32, i32* %16, align 4
  %173 = load i32, i32* %15, align 4
  %174 = sub nsw i32 %172, %173
  store i32 %174, i32* %23, align 4
  %175 = load i32*, i32** %11, align 8
  %176 = load i32, i32* %23, align 4
  %177 = call i32 @memset(i32* %175, i32 0, i32 %176)
  %178 = load i32, i32* %23, align 4
  %179 = load i32*, i32** %11, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  store i32* %181, i32** %11, align 8
  %182 = load i32*, i32** %11, align 8
  %183 = load i32*, i32** %12, align 8
  %184 = ptrtoint i32* %182 to i64
  %185 = ptrtoint i32* %183 to i64
  %186 = sub i64 %184, %185
  %187 = sdiv exact i64 %186, 4
  %188 = trunc i64 %187 to i32
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  %191 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 4
  %196 = load i32*, i32** %9, align 8
  store i32 1, i32* %196, align 4
  store i32 0, i32* %5, align 4
  br label %197

197:                                              ; preds = %171, %83, %55
  %198 = load i32, i32* %5, align 4
  ret i32 %198
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_12__*, %struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @bytestream_put_be16(i32**, i32) #2

declare dso_local i32 @AV_RB16(i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
