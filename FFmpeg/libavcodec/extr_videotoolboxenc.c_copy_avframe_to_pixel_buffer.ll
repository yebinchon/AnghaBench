; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_copy_avframe_to_pixel_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_copy_avframe_to_pixel_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Error: Could not lock base address of CVPixelBuffer: %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"Error: different number of planes in AVFrame and CVPixelBuffer.\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [76 x i8] c"Error: different number of planes in AVFrame and non-planar CVPixelBuffer.\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Error: Could not unlock CVPixelBuffer base address: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32, i64*, i64*)* @copy_avframe_to_pixel_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_avframe_to_pixel_buffer(i32* %0, %struct.TYPE_3__* %1, i32 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @CVPixelBufferLockBaseAddress(i32 %22, i32 0)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @AV_LOG_ERROR, align 4
  %29 = load i32, i32* %15, align 4
  %30 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %27, i32 %28, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %26, %5
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @CVPixelBufferIsPlanar(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %137

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @CVPixelBufferGetPlaneCount(i32 %36)
  store i64 %37, i64* %14, align 8
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %133, %35
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %136

47:                                               ; preds = %38
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %14, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @CVPixelBufferUnlockBaseAddress(i32 %53, i32 0)
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* @AV_LOG_ERROR, align 4
  %57 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %55, i32 %56, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %58, i32* %6, align 4
  br label %229

59:                                               ; preds = %47
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i64 @CVPixelBufferGetBaseAddressOfPlane(i32 %60, i32 %61)
  %63 = inttoptr i64 %62 to i32*
  store i32* %63, i32** %20, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i32*
  store i32* %71, i32** %19, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @CVPixelBufferGetBytesPerRowOfPlane(i32 %72, i32 %73)
  store i32 %74, i32* %18, align 4
  %75 = load i64*, i64** %10, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %17, align 4
  %81 = load i64*, i64** %11, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %17, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %59
  %91 = load i32*, i32** %20, align 8
  %92 = load i32*, i32** %19, align 8
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %16, align 4
  %95 = mul nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = call i32 @memcpy(i32* %91, i32* %92, i64 %96)
  br label %132

98:                                               ; preds = %59
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* %18, align 4
  br label %106

104:                                              ; preds = %98
  %105 = load i32, i32* %17, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %21, align 8
  store i32 0, i32* %13, align 4
  br label %109

109:                                              ; preds = %128, %106
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %131

113:                                              ; preds = %109
  %114 = load i32*, i32** %20, align 8
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %18, align 4
  %117 = mul nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %114, i64 %118
  %120 = load i32*, i32** %19, align 8
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %17, align 4
  %123 = mul nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  %126 = load i64, i64* %21, align 8
  %127 = call i32 @memcpy(i32* %119, i32* %125, i64 %126)
  br label %128

128:                                              ; preds = %113
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %13, align 4
  br label %109

131:                                              ; preds = %109
  br label %132

132:                                              ; preds = %131, %90
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %38

136:                                              ; preds = %38
  br label %217

137:                                              ; preds = %31
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %137
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @CVPixelBufferUnlockBaseAddress(i32 %145, i32 0)
  %147 = load i32*, i32** %7, align 8
  %148 = load i32, i32* @AV_LOG_ERROR, align 4
  %149 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %147, i32 %148, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0))
  %150 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %150, i32* %6, align 4
  br label %229

151:                                              ; preds = %137
  %152 = load i32, i32* %9, align 4
  %153 = call i64 @CVPixelBufferGetBaseAddress(i32 %152)
  %154 = inttoptr i64 %153 to i32*
  store i32* %154, i32** %20, align 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i64*, i64** %156, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 0
  %159 = load i64, i64* %158, align 8
  %160 = inttoptr i64 %159 to i32*
  store i32* %160, i32** %19, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @CVPixelBufferGetBytesPerRow(i32 %161)
  store i32 %162, i32* %18, align 4
  %163 = load i64*, i64** %10, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 0
  %165 = load i64, i64* %164, align 8
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %17, align 4
  %167 = load i64*, i64** %11, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 0
  %169 = load i64, i64* %168, align 8
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %16, align 4
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* %17, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %182

174:                                              ; preds = %151
  %175 = load i32*, i32** %20, align 8
  %176 = load i32*, i32** %19, align 8
  %177 = load i32, i32* %17, align 4
  %178 = load i32, i32* %16, align 4
  %179 = mul nsw i32 %177, %178
  %180 = sext i32 %179 to i64
  %181 = call i32 @memcpy(i32* %175, i32* %176, i64 %180)
  br label %216

182:                                              ; preds = %151
  %183 = load i32, i32* %18, align 4
  %184 = load i32, i32* %17, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = load i32, i32* %18, align 4
  br label %190

188:                                              ; preds = %182
  %189 = load i32, i32* %17, align 4
  br label %190

190:                                              ; preds = %188, %186
  %191 = phi i32 [ %187, %186 ], [ %189, %188 ]
  %192 = sext i32 %191 to i64
  store i64 %192, i64* %21, align 8
  store i32 0, i32* %13, align 4
  br label %193

193:                                              ; preds = %212, %190
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* %16, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %215

197:                                              ; preds = %193
  %198 = load i32*, i32** %20, align 8
  %199 = load i32, i32* %13, align 4
  %200 = load i32, i32* %18, align 4
  %201 = mul nsw i32 %199, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %198, i64 %202
  %204 = load i32*, i32** %19, align 8
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* %17, align 4
  %207 = mul nsw i32 %205, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %204, i64 %208
  %210 = load i64, i64* %21, align 8
  %211 = call i32 @memcpy(i32* %203, i32* %209, i64 %210)
  br label %212

212:                                              ; preds = %197
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %13, align 4
  br label %193

215:                                              ; preds = %193
  br label %216

216:                                              ; preds = %215, %174
  br label %217

217:                                              ; preds = %216, %136
  %218 = load i32, i32* %9, align 4
  %219 = call i32 @CVPixelBufferUnlockBaseAddress(i32 %218, i32 0)
  store i32 %219, i32* %15, align 4
  %220 = load i32, i32* %15, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %217
  %223 = load i32*, i32** %7, align 8
  %224 = load i32, i32* @AV_LOG_ERROR, align 4
  %225 = load i32, i32* %15, align 4
  %226 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %223, i32 %224, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %225)
  %227 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %227, i32* %6, align 4
  br label %229

228:                                              ; preds = %217
  store i32 0, i32* %6, align 4
  br label %229

229:                                              ; preds = %228, %222, %144, %52
  %230 = load i32, i32* %6, align 4
  ret i32 %230
}

declare dso_local i32 @CVPixelBufferLockBaseAddress(i32, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i64 @CVPixelBufferIsPlanar(i32) #1

declare dso_local i64 @CVPixelBufferGetPlaneCount(i32) #1

declare dso_local i32 @CVPixelBufferUnlockBaseAddress(i32, i32) #1

declare dso_local i64 @CVPixelBufferGetBaseAddressOfPlane(i32, i32) #1

declare dso_local i32 @CVPixelBufferGetBytesPerRowOfPlane(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @CVPixelBufferGetBaseAddress(i32) #1

declare dso_local i32 @CVPixelBufferGetBytesPerRow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
