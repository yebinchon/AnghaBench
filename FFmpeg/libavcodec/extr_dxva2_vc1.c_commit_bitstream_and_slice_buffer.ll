; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_vc1.c_commit_bitstream_and_slice_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_vc1.c_commit_bitstream_and_slice_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.dxva2_picture_context* }
%struct.dxva2_picture_context = type { i32, i32*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i64 }

@commit_bitstream_and_slice_buffer.start_code = internal constant [4 x i32] [i32 0, i32 0, i32 1, i32 13], align 16
@AV_CODEC_ID_VC1 = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to build bitstream\00", align 1
@AV_PIX_FMT_DXVA2_VLD = common dso_local global i64 0, align 8
@D3D11_VIDEO_DECODER_BUFFER_BITSTREAM = common dso_local global i32 0, align 4
@D3D11_VIDEO_DECODER_BUFFER_SLICE_CONTROL = common dso_local global i32 0, align 4
@DXVA2_BitStreamDateBufferType = common dso_local global i32 0, align 4
@DXVA2_SliceControlBufferType = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32*, i32*)* @commit_bitstream_and_slice_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @commit_bitstream_and_slice_buffer(%struct.TYPE_20__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.dxva2_picture_context*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %8, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %29 = call i32* @DXVA_CONTEXT(%struct.TYPE_20__* %28)
  store i32* %29, i32** %9, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 2
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %10, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %35, align 8
  store %struct.dxva2_picture_context* %36, %struct.dxva2_picture_context** %11, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AV_CODEC_ID_VC1, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i64 16, i64 0
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %12, align 4
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = lshr i32 %50, %53
  %55 = mul i32 %47, %54
  store i32 %55, i32* %13, align 4
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %14, align 8
  %56 = load i8*, i8** %15, align 8
  %57 = bitcast i8* %56 to i32*
  store i32* %57, i32** %16, align 8
  %58 = load i32*, i32** %16, align 8
  store i32* %58, i32** %17, align 8
  %59 = load i32*, i32** %16, align 8
  %60 = load i32, i32* %19, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32* %62, i32** %18, align 8
  store i32 0, i32* %21, align 4
  br label %63

63:                                               ; preds = %185, %3
  %64 = load i32, i32* %21, align 4
  %65 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %11, align 8
  %66 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ult i32 %64, %67
  br i1 %68, label %69, label %188

69:                                               ; preds = %63
  %70 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %11, align 8
  %71 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %70, i32 0, i32 2
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %71, align 8
  %73 = load i32, i32* %21, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i64 %74
  store %struct.TYPE_19__* %75, %struct.TYPE_19__** %14, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %23, align 4
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sdiv i32 %81, 8
  store i32 %82, i32* %24, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %24, align 4
  %85 = add i32 %83, %84
  %86 = zext i32 %85 to i64
  %87 = load i32*, i32** %18, align 8
  %88 = load i32*, i32** %17, align 8
  %89 = ptrtoint i32* %87 to i64
  %90 = ptrtoint i32* %88 to i64
  %91 = sub i64 %89, %90
  %92 = sdiv exact i64 %91, 4
  %93 = icmp sgt i64 %86, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %69
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %96 = load i32, i32* @AV_LOG_ERROR, align 4
  %97 = call i32 @av_log(%struct.TYPE_20__* %95, i32 %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %188

98:                                               ; preds = %69
  %99 = load i32*, i32** %17, align 8
  %100 = load i32*, i32** %16, align 8
  %101 = ptrtoint i32* %99 to i64
  %102 = ptrtoint i32* %100 to i64
  %103 = sub i64 %101, %102
  %104 = sdiv exact i64 %103, 4
  %105 = trunc i64 %104 to i32
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* %21, align 4
  %109 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %11, align 8
  %110 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sub i32 %111, 1
  %113 = icmp ult i32 %108, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %98
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i64 1
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %118, %122
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  br label %136

126:                                              ; preds = %98
  %127 = load i32, i32* %13, align 4
  %128 = zext i32 %127 to i64
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %128, %132
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 2
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %126, %114
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %171

139:                                              ; preds = %136
  %140 = load i32*, i32** %17, align 8
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @memcpy(i32* %140, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @commit_bitstream_and_slice_buffer.start_code, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* %21, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %139
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load i32*, i32** %17, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 3
  store i32 12, i32* %152, align 4
  br label %160

153:                                              ; preds = %145, %139
  %154 = load i32, i32* %21, align 4
  %155 = icmp ugt i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32*, i32** %17, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 3
  store i32 11, i32* %158, align 4
  br label %159

159:                                              ; preds = %156, %153
  br label %160

160:                                              ; preds = %159, %150
  %161 = load i32, i32* %12, align 4
  %162 = load i32*, i32** %17, align 8
  %163 = zext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32* %164, i32** %17, align 8
  %165 = load i32, i32* %12, align 4
  %166 = mul i32 %165, 8
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = add i32 %169, %166
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %160, %136
  %172 = load i32*, i32** %17, align 8
  %173 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %11, align 8
  %174 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %23, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %24, align 4
  %180 = call i32 @memcpy(i32* %172, i32* %178, i32 %179)
  %181 = load i32, i32* %24, align 4
  %182 = load i32*, i32** %17, align 8
  %183 = zext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32* %184, i32** %17, align 8
  br label %185

185:                                              ; preds = %171
  %186 = load i32, i32* %21, align 4
  %187 = add i32 %186, 1
  store i32 %187, i32* %21, align 4
  br label %63

188:                                              ; preds = %94, %63
  %189 = load i32*, i32** %17, align 8
  %190 = load i32*, i32** %16, align 8
  %191 = ptrtoint i32* %189 to i64
  %192 = ptrtoint i32* %190 to i64
  %193 = sub i64 %191, %192
  %194 = sdiv exact i64 %193, 4
  %195 = and i64 %194, 127
  %196 = sub nsw i64 128, %195
  %197 = trunc i64 %196 to i32
  %198 = load i32*, i32** %18, align 8
  %199 = load i32*, i32** %17, align 8
  %200 = ptrtoint i32* %198 to i64
  %201 = ptrtoint i32* %199 to i64
  %202 = sub i64 %200, %201
  %203 = sdiv exact i64 %202, 4
  %204 = trunc i64 %203 to i32
  %205 = call i32 @FFMIN(i32 %197, i32 %204)
  store i32 %205, i32* %20, align 4
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %207 = icmp ne %struct.TYPE_19__* %206, null
  br i1 %207, label %208, label %225

208:                                              ; preds = %188
  %209 = load i32, i32* %20, align 4
  %210 = icmp ugt i32 %209, 0
  br i1 %210, label %211, label %225

211:                                              ; preds = %208
  %212 = load i32*, i32** %17, align 8
  %213 = load i32, i32* %20, align 4
  %214 = call i32 @memset(i32* %212, i32 0, i32 %213)
  %215 = load i32, i32* %20, align 4
  %216 = load i32*, i32** %17, align 8
  %217 = zext i32 %215 to i64
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  store i32* %218, i32** %17, align 8
  %219 = load i32, i32* %20, align 4
  %220 = mul i32 %219, 8
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = add i32 %223, %220
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %211, %208, %188
  %226 = load i32, i32* %21, align 4
  %227 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %11, align 8
  %228 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp ult i32 %226, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %225
  store i32 -1, i32* %4, align 4
  br label %248

232:                                              ; preds = %225
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %234 = load i32*, i32** %9, align 8
  %235 = load i32*, i32** %7, align 8
  %236 = load i32, i32* %22, align 4
  %237 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %11, align 8
  %238 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %237, i32 0, i32 2
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %238, align 8
  %240 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %11, align 8
  %241 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = zext i32 %242 to i64
  %244 = mul i64 %243, 16
  %245 = trunc i64 %244 to i32
  %246 = load i32, i32* %13, align 4
  %247 = call i32 @ff_dxva2_commit_buffer(%struct.TYPE_20__* %233, i32* %234, i32* %235, i32 %236, %struct.TYPE_19__* %239, i32 %245, i32 %246)
  store i32 %247, i32* %4, align 4
  br label %248

248:                                              ; preds = %232, %231
  %249 = load i32, i32* %4, align 4
  ret i32 %249
}

declare dso_local i32* @DXVA_CONTEXT(%struct.TYPE_20__*) #1

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ff_dxva2_commit_buffer(%struct.TYPE_20__*, i32*, i32*, i32, %struct.TYPE_19__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
