; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_frwu.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_frwu.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32, i32*, i32**, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Packet is too small.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"incorrect marker\0A\00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Field size %i is too small (required %i)\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Packet is too small, need %i, have %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i32*, %struct.TYPE_11__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_13__* %0, i8* %1, i32* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %10, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %13, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %14, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  store i32* %34, i32** %15, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %40, 2
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  %46 = add nsw i32 %45, 4
  %47 = add nsw i32 %46, 16
  %48 = icmp slt i32 %37, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = load i32, i32* @AV_LOG_ERROR, align 4
  %52 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %50, i32 %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %53, i32* %5, align 4
  br label %244

54:                                               ; preds = %4
  %55 = call i32 @bytestream_get_le32(i32** %14)
  %56 = call i32 @MKTAG(float 7.000000e+01, i8 signext 82, i8 signext 87, i8 signext 49)
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = load i32, i32* @AV_LOG_ERROR, align 4
  %61 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %59, i32 %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %62, i32* %5, align 4
  br label %244

63:                                               ; preds = %54
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %66 = call i32 @ff_get_buffer(%struct.TYPE_13__* %64, %struct.TYPE_12__* %65, i32 0)
  store i32 %66, i32* %12, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %5, align 4
  br label %244

70:                                               ; preds = %63
  %71 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  store i32 0, i32* %11, align 4
  br label %76

76:                                               ; preds = %236, %70
  %77 = load i32, i32* %11, align 4
  %78 = icmp slt i32 %77, 2
  br i1 %78, label %79, label %239

79:                                               ; preds = %76
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = add nsw i32 %82, %86
  %88 = ashr i32 %87, 1
  store i32 %88, i32* %17, align 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = mul nsw i32 %91, 2
  %93 = load i32, i32* %17, align 4
  %94 = mul nsw i32 %92, %93
  store i32 %94, i32* %19, align 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 2
  %97 = load i32**, i32*** %96, align 8
  %98 = getelementptr inbounds i32*, i32** %97, i64 0
  %99 = load i32*, i32** %98, align 8
  store i32* %99, i32** %20, align 8
  %100 = load i32*, i32** %15, align 8
  %101 = load i32*, i32** %14, align 8
  %102 = ptrtoint i32* %100 to i64
  %103 = ptrtoint i32* %101 to i64
  %104 = sub i64 %102, %103
  %105 = sdiv exact i64 %104, 4
  %106 = icmp slt i64 %105, 8
  br i1 %106, label %107, label %109

107:                                              ; preds = %79
  %108 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %108, i32* %5, align 4
  br label %244

109:                                              ; preds = %79
  %110 = load i32*, i32** %14, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 4
  store i32* %111, i32** %14, align 8
  %112 = call i32 @bytestream_get_le32(i32** %14)
  store i32 %112, i32* %18, align 4
  %113 = load i32, i32* %18, align 4
  %114 = load i32, i32* %19, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %109
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %118 = load i32, i32* @AV_LOG_ERROR, align 4
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* %19, align 4
  %121 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %117, i32 %118, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %119, i32 %120)
  %122 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %122, i32* %5, align 4
  br label %244

123:                                              ; preds = %109
  %124 = load i32*, i32** %15, align 8
  %125 = load i32*, i32** %14, align 8
  %126 = ptrtoint i32* %124 to i64
  %127 = ptrtoint i32* %125 to i64
  %128 = sub i64 %126, %127
  %129 = sdiv exact i64 %128, 4
  %130 = load i32, i32* %18, align 4
  %131 = sext i32 %130 to i64
  %132 = icmp slt i64 %129, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %123
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %135 = load i32, i32* @AV_LOG_ERROR, align 4
  %136 = load i32, i32* %18, align 4
  %137 = load i32*, i32** %15, align 8
  %138 = load i32*, i32** %14, align 8
  %139 = ptrtoint i32* %137 to i64
  %140 = ptrtoint i32* %138 to i64
  %141 = sub i64 %139, %140
  %142 = sdiv exact i64 %141, 4
  %143 = trunc i64 %142 to i32
  %144 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %134, i32 %135, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %136, i32 %143)
  %145 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %145, i32* %5, align 4
  br label %244

146:                                              ; preds = %123
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = xor i32 %147, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %146
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %20, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  store i32* %161, i32** %20, align 8
  br label %178

162:                                              ; preds = %146
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %162
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = mul nsw i32 2, %172
  %174 = load i32*, i32** %20, align 8
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  store i32* %176, i32** %20, align 8
  br label %177

177:                                              ; preds = %167, %162
  br label %178

178:                                              ; preds = %177, %153
  store i32 0, i32* %16, align 4
  br label %179

179:                                              ; preds = %226, %178
  %180 = load i32, i32* %16, align 4
  %181 = load i32, i32* %17, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %229

183:                                              ; preds = %179
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %202

188:                                              ; preds = %183
  %189 = load i32, i32* %11, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %202

191:                                              ; preds = %188
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* %17, align 4
  %194 = sub nsw i32 %193, 1
  %195 = icmp eq i32 %192, %194
  br i1 %195, label %196, label %202

196:                                              ; preds = %191
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 2
  %199 = load i32**, i32*** %198, align 8
  %200 = getelementptr inbounds i32*, i32** %199, i64 0
  %201 = load i32*, i32** %200, align 8
  store i32* %201, i32** %20, align 8
  br label %202

202:                                              ; preds = %196, %191, %188, %183
  %203 = load i32*, i32** %20, align 8
  %204 = load i32*, i32** %14, align 8
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = mul nsw i32 %207, 2
  %209 = call i32 @memcpy(i32* %203, i32* %204, i32 %208)
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = mul nsw i32 %212, 2
  %214 = load i32*, i32** %14, align 8
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  store i32* %216, i32** %14, align 8
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  %221 = load i32, i32* %220, align 4
  %222 = shl i32 %221, 1
  %223 = load i32*, i32** %20, align 8
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  store i32* %225, i32** %20, align 8
  br label %226

226:                                              ; preds = %202
  %227 = load i32, i32* %16, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %16, align 4
  br label %179

229:                                              ; preds = %179
  %230 = load i32, i32* %18, align 4
  %231 = load i32, i32* %19, align 4
  %232 = sub nsw i32 %230, %231
  %233 = load i32*, i32** %14, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i32, i32* %233, i64 %234
  store i32* %235, i32** %14, align 8
  br label %236

236:                                              ; preds = %229
  %237 = load i32, i32* %11, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %11, align 4
  br label %76

239:                                              ; preds = %76
  %240 = load i32*, i32** %8, align 8
  store i32 1, i32* %240, align 4
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  store i32 %243, i32* %5, align 4
  br label %244

244:                                              ; preds = %239, %133, %116, %107, %68, %58, %49
  %245 = load i32, i32* %5, align 4
  ret i32 %245
}

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, ...) #1

declare dso_local i32 @bytestream_get_le32(i32**) #1

declare dso_local i32 @MKTAG(float, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
