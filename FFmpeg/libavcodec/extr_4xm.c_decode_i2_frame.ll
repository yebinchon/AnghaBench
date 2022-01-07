; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_4xm.c_decode_i2_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_4xm.c_decode_i2_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"packet size too small\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"unk bit 1\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"unk bit 2\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32)* @decode_i2_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_i2_frame(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca [4 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @FFALIGN(i32 %31, i32 16)
  %33 = ashr i32 %32, 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @FFALIGN(i32 %34, i32 16)
  %36 = ashr i32 %35, 4
  %37 = mul nsw i32 %33, %36
  store i32 %37, i32* %14, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %15, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32* %44, i32** %16, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %14, align 4
  %47 = mul nsw i32 %46, 8
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %3
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i32, i32* @AV_LOG_ERROR, align 4
  %54 = call i32 @av_log(%struct.TYPE_5__* %52, i32 %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %55, i32* %4, align 4
  br label %175

56:                                               ; preds = %3
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @bytestream2_init(i32* %17, i32* %57, i32 %58)
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %171, %56
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %174

64:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %160, %64
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %163

69:                                               ; preds = %65
  %70 = bitcast [4 x i32]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %70, i8 0, i64 16, i1 false)
  %71 = load i32*, i32** %16, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = ptrtoint i32* %71 to i64
  %74 = ptrtoint i32* %72 to i64
  %75 = sub i64 %73, %74
  %76 = sdiv exact i64 %75, 4
  %77 = icmp slt i64 %76, 8
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %79, i32* %4, align 4
  br label %175

80:                                               ; preds = %69
  %81 = call i32 @bytestream2_get_le16u(i32* %17)
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  store i32 %81, i32* %82, align 16
  %83 = call i32 @bytestream2_get_le16u(i32* %17)
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %86 = load i32, i32* %85, align 16
  %87 = and i32 %86, 32768
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %80
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = load i32, i32* @AV_LOG_ERROR, align 4
  %94 = call i32 @av_log(%struct.TYPE_5__* %92, i32 %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %89, %80
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 32768
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = load i32, i32* @AV_LOG_ERROR, align 4
  %105 = call i32 @av_log(%struct.TYPE_5__* %103, i32 %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %106

106:                                              ; preds = %100, %95
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %108 = load i32, i32* %107, align 16
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @mix(i32 %108, i32 %110)
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 2
  store i32 %111, i32* %112, align 8
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 0
  %116 = load i32, i32* %115, align 16
  %117 = call i32 @mix(i32 %114, i32 %116)
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 3
  store i32 %117, i32* %118, align 4
  %119 = call i32 @bytestream2_get_le32u(i32* %17)
  store i32 %119, i32* %19, align 4
  store i32 0, i32* %11, align 4
  br label %120

120:                                              ; preds = %154, %106
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %121, 16
  br i1 %122, label %123, label %157

123:                                              ; preds = %120
  store i32 0, i32* %10, align 4
  br label %124

124:                                              ; preds = %150, %123
  %125 = load i32, i32* %10, align 4
  %126 = icmp slt i32 %125, 16
  br i1 %126, label %127, label %153

127:                                              ; preds = %124
  %128 = load i32, i32* %10, align 4
  %129 = ashr i32 %128, 2
  %130 = mul nsw i32 2, %129
  %131 = load i32, i32* %11, align 4
  %132 = ashr i32 %131, 2
  %133 = mul nsw i32 8, %132
  %134 = add nsw i32 %130, %133
  store i32 %134, i32* %20, align 4
  %135 = load i32, i32* %19, align 4
  %136 = load i32, i32* %20, align 4
  %137 = lshr i32 %135, %136
  %138 = and i32 %137, 3
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %15, align 8
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %12, align 4
  %145 = mul nsw i32 %143, %144
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %142, i64 %148
  store i32 %141, i32* %149, align 4
  br label %150

150:                                              ; preds = %127
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %10, align 4
  br label %124

153:                                              ; preds = %124
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %11, align 4
  br label %120

157:                                              ; preds = %120
  %158 = load i32*, i32** %15, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 16
  store i32* %159, i32** %15, align 8
  br label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 16
  store i32 %162, i32* %8, align 4
  br label %65

163:                                              ; preds = %65
  %164 = load i32, i32* %12, align 4
  %165 = mul nsw i32 16, %164
  %166 = load i32, i32* %8, align 4
  %167 = sub nsw i32 %165, %166
  %168 = load i32*, i32** %15, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  store i32* %170, i32** %15, align 8
  br label %171

171:                                              ; preds = %163
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 16
  store i32 %173, i32* %9, align 4
  br label %60

174:                                              ; preds = %60
  store i32 0, i32* %4, align 4
  br label %175

175:                                              ; preds = %174, %78, %49
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @bytestream2_get_le16u(i32*) #1

declare dso_local i32 @mix(i32, i32) #1

declare dso_local i32 @bytestream2_get_le32u(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
