; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_arbc.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_arbc.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i64* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_GET_BUFFER_FLAG_REF = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i8*, i32*, %struct.TYPE_19__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_21__* %0, i8* %1, i32* %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %9, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  store %struct.TYPE_22__* %20, %struct.TYPE_22__** %10, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %11, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  store i32 %29, i32* %14, align 4
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %32, 10
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %35, i32* %5, align 4
  br label %237

36:                                               ; preds = %4
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bytestream2_init(i32* %38, i32 %41, i32 %44)
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 1
  %48 = call i32 @bytestream2_skip(i32* %47, i32 8)
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 1
  %51 = call i32 @bytestream2_get_le16(i32* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %36
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %5, align 4
  br label %237

58:                                               ; preds = %36
  %59 = load i32, i32* %13, align 4
  %60 = mul nsw i32 7, %59
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 1
  %63 = call i32 @bytestream2_get_bytes_left(i32* %62)
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %66, i32* %5, align 4
  br label %237

67:                                               ; preds = %58
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %70 = load i32, i32* @AV_GET_BUFFER_FLAG_REF, align 4
  %71 = call i32 @ff_get_buffer(%struct.TYPE_21__* %68, %struct.TYPE_20__* %69, i32 %70)
  store i32 %71, i32* %12, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %5, align 4
  br label %237

75:                                               ; preds = %67
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %75
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = call i32 @av_frame_copy(%struct.TYPE_20__* %85, %struct.TYPE_18__* %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %5, align 4
  br label %237

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %75
  store i32 0, i32* %15, align 4
  br label %96

96:                                               ; preds = %201, %95
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %204

100:                                              ; preds = %96
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 1
  %103 = call i32 @bytestream2_get_bytes_left(i32* %102)
  %104 = icmp sle i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %106, i32* %5, align 4
  br label %237

107:                                              ; preds = %100
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 1
  %110 = call i32 @bytestream2_get_byte(i32* %109)
  %111 = shl i32 %110, 16
  store i32 %111, i32* %17, align 4
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 1
  %114 = call i32 @bytestream2_skip(i32* %113, i32 1)
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 1
  %117 = call i32 @bytestream2_get_byte(i32* %116)
  %118 = shl i32 %117, 8
  %119 = load i32, i32* %17, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %17, align 4
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 1
  %123 = call i32 @bytestream2_skip(i32* %122, i32 1)
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 1
  %126 = call i32 @bytestream2_get_byte(i32* %125)
  %127 = shl i32 %126, 0
  %128 = load i32, i32* %17, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %17, align 4
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 1
  %132 = call i32 @bytestream2_skip(i32* %131, i32 1)
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 1
  %135 = call i32 @bytestream2_get_byte(i32* %134)
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %16, align 4
  %137 = and i32 %136, 16
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %107
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %141 = load i32, i32* %17, align 4
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %143 = call i64 @fill_tileX(%struct.TYPE_21__* %140, i32 1024, i32 1024, i32 %141, %struct.TYPE_20__* %142)
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = sub nsw i64 %145, %143
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %14, align 4
  br label %148

148:                                              ; preds = %139, %107
  %149 = load i32, i32* %16, align 4
  %150 = and i32 %149, 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %148
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %154 = load i32, i32* %17, align 4
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %156 = call i64 @fill_tileX(%struct.TYPE_21__* %153, i32 256, i32 256, i32 %154, %struct.TYPE_20__* %155)
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = sub nsw i64 %158, %156
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %14, align 4
  br label %161

161:                                              ; preds = %152, %148
  %162 = load i32, i32* %16, align 4
  %163 = and i32 %162, 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %161
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %167 = load i32, i32* %17, align 4
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %169 = call i64 @fill_tileX(%struct.TYPE_21__* %166, i32 64, i32 64, i32 %167, %struct.TYPE_20__* %168)
  %170 = load i32, i32* %14, align 4
  %171 = sext i32 %170 to i64
  %172 = sub nsw i64 %171, %169
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %14, align 4
  br label %174

174:                                              ; preds = %165, %161
  %175 = load i32, i32* %16, align 4
  %176 = and i32 %175, 2
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %174
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %180 = load i32, i32* %17, align 4
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %182 = call i64 @fill_tileX(%struct.TYPE_21__* %179, i32 16, i32 16, i32 %180, %struct.TYPE_20__* %181)
  %183 = load i32, i32* %14, align 4
  %184 = sext i32 %183 to i64
  %185 = sub nsw i64 %184, %182
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %14, align 4
  br label %187

187:                                              ; preds = %178, %174
  %188 = load i32, i32* %16, align 4
  %189 = and i32 %188, 1
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %187
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %193 = load i32, i32* %17, align 4
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %195 = call i64 @fill_tile4(%struct.TYPE_21__* %192, i32 %193, %struct.TYPE_20__* %194)
  %196 = load i32, i32* %14, align 4
  %197 = sext i32 %196 to i64
  %198 = sub nsw i64 %197, %195
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %14, align 4
  br label %200

200:                                              ; preds = %191, %187
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %15, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %15, align 4
  br label %96

204:                                              ; preds = %96
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %206, align 8
  %208 = call i32 @av_frame_unref(%struct.TYPE_18__* %207)
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %210, align 8
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %213 = call i32 @av_frame_ref(%struct.TYPE_18__* %211, %struct.TYPE_20__* %212)
  store i32 %213, i32* %12, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %204
  %216 = load i32, i32* %12, align 4
  store i32 %216, i32* %5, align 4
  br label %237

217:                                              ; preds = %204
  %218 = load i32, i32* %14, align 4
  %219 = icmp sle i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %217
  %221 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  br label %224

222:                                              ; preds = %217
  %223 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  br label %224

224:                                              ; preds = %222, %220
  %225 = phi i32 [ %221, %220 ], [ %223, %222 ]
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 1
  store i32 %225, i32* %227, align 4
  %228 = load i32, i32* %14, align 4
  %229 = icmp sle i32 %228, 0
  %230 = zext i1 %229 to i32
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 4
  %233 = load i32*, i32** %8, align 8
  store i32 1, i32* %233, align 4
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %5, align 4
  br label %237

237:                                              ; preds = %224, %215, %105, %92, %73, %65, %54, %34
  %238 = load i32, i32* %5, align 4
  ret i32 %238
}

declare dso_local i32 @bytestream2_init(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_get_le16(i32*) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @av_frame_copy(%struct.TYPE_20__*, %struct.TYPE_18__*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i64 @fill_tileX(%struct.TYPE_21__*, i32, i32, i32, %struct.TYPE_20__*) #1

declare dso_local i64 @fill_tile4(%struct.TYPE_21__*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_18__*) #1

declare dso_local i32 @av_frame_ref(%struct.TYPE_18__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
