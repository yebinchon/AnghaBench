; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afir.c_activate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afir.c_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_25__**, %struct.TYPE_23__**, %struct.TYPE_22__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i64, %struct.TYPE_21__*, i32, i64 }
%struct.TYPE_21__ = type { i64 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@FFERROR_NOT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*)* @activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate(%struct.TYPE_24__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %4, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %20, i64 0
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  store %struct.TYPE_23__* %22, %struct.TYPE_23__** %5, align 8
  store i32* null, i32** %10, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %25, i64 0
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %29 = call i32 @FF_FILTER_FORWARD_STATUS_BACK_ALL(%struct.TYPE_23__* %27, %struct.TYPE_24__* %28)
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %1
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %37, i64 1
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %41 = call i32 @FF_FILTER_FORWARD_STATUS_BACK_ALL(%struct.TYPE_23__* %39, %struct.TYPE_24__* %40)
  br label %42

42:                                               ; preds = %34, %1
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %114, label %47

47:                                               ; preds = %42
  store i32* null, i32** %12, align 8
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %50, i64 1
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %51, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = call i32 @check_ir(%struct.TYPE_25__* %52, i32* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %337

59:                                               ; preds = %47
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %62, i64 1
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %63, align 8
  %65 = call i32 @ff_outlink_get_status(%struct.TYPE_25__* %64)
  %66 = load i32, i32* @AVERROR_EOF, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %59
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %113, label %76

76:                                               ; preds = %71
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %79, i64 0
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %80, align 8
  %82 = call i64 @ff_outlink_frame_wanted(%struct.TYPE_23__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %76
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %87, i64 1
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %88, align 8
  %90 = call i32 @ff_inlink_request_frame(%struct.TYPE_25__* %89)
  br label %112

91:                                               ; preds = %76
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %91
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %99, i64 1
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %100, align 8
  %102 = call i64 @ff_outlink_frame_wanted(%struct.TYPE_23__* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %96
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %107, i64 1
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %108, align 8
  %110 = call i32 @ff_inlink_request_frame(%struct.TYPE_25__* %109)
  br label %111

111:                                              ; preds = %104, %96, %91
  br label %112

112:                                              ; preds = %111, %84
  store i32 0, i32* %2, align 4
  br label %337

113:                                              ; preds = %71
  br label %114

114:                                              ; preds = %113, %42
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %114
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %126 = call i32 @convert_coeffs(%struct.TYPE_24__* %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %2, align 4
  br label %337

131:                                              ; preds = %124
  br label %132

132:                                              ; preds = %131, %119, %114
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %135, i64 0
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %136, align 8
  %138 = call i32 @ff_inlink_queued_samples(%struct.TYPE_25__* %137)
  store i32 %138, i32* %8, align 4
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = sdiv i32 %142, %145
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = mul nsw i32 %146, %149
  %151 = call i32 @FFMAX(i32 %141, i32 %150)
  store i32 %151, i32* %9, align 4
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %154, i64 0
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %155, align 8
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @ff_inlink_consume_samples(%struct.TYPE_25__* %156, i32 %157, i32 %158, i32** %10)
  store i32 %159, i32* %6, align 4
  %160 = load i32, i32* %6, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %132
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %164 = load i32*, i32** %10, align 8
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %166 = call i32 @fir_frame(%struct.TYPE_22__* %163, i32* %164, %struct.TYPE_23__* %165)
  store i32 %166, i32* %6, align 4
  br label %167

167:                                              ; preds = %162, %132
  %168 = load i32, i32* %6, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = load i32, i32* %6, align 4
  store i32 %171, i32* %2, align 4
  br label %337

172:                                              ; preds = %167
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %234

177:                                              ; preds = %172
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 5
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %234

182:                                              ; preds = %177
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 3
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  store i64 %187, i64* %13, align 8
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %193, i64 0
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %200, i64 1
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i64 @av_rescale_q(i32 %190, i32 %197, i32 %204)
  store i64 %205, i64* %14, align 8
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %208, i64 1
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %209, align 8
  %211 = call i64 @ff_outlink_frame_wanted(%struct.TYPE_23__* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %233

213:                                              ; preds = %182
  %214 = load i64, i64* %13, align 8
  %215 = load i64, i64* %14, align 8
  %216 = icmp slt i64 %214, %215
  br i1 %216, label %217, label %233

217:                                              ; preds = %213
  %218 = load i64, i64* %14, align 8
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 3
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 0
  store i64 %218, i64* %222, align 8
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %225, i64 1
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %226, align 8
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 3
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %229, align 8
  %231 = call i32 @av_frame_clone(%struct.TYPE_21__* %230)
  %232 = call i32 @ff_filter_frame(%struct.TYPE_23__* %227, i32 %231)
  store i32 %232, i32* %2, align 4
  br label %337

233:                                              ; preds = %213, %182
  br label %234

234:                                              ; preds = %233, %177, %172
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %237, i64 0
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %238, align 8
  %240 = call i32 @ff_inlink_queued_samples(%struct.TYPE_25__* %239)
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = icmp sge i32 %240, %243
  br i1 %244, label %245, label %248

245:                                              ; preds = %234
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %247 = call i32 @ff_filter_set_ready(%struct.TYPE_24__* %246, i32 10)
  store i32 0, i32* %2, align 4
  br label %337

248:                                              ; preds = %234
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %251, i64 0
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %252, align 8
  %254 = call i64 @ff_inlink_acknowledge_status(%struct.TYPE_25__* %253, i32* %7, i64* %11)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %284

256:                                              ; preds = %248
  %257 = load i32, i32* %7, align 4
  %258 = load i32, i32* @AVERROR_EOF, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %283

260:                                              ; preds = %256
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %263, i64 0
  %265 = load %struct.TYPE_23__*, %struct.TYPE_23__** %264, align 8
  %266 = load i32, i32* %7, align 4
  %267 = load i64, i64* %11, align 8
  %268 = call i32 @ff_outlink_set_status(%struct.TYPE_23__* %265, i32 %266, i64 %267)
  %269 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %282

273:                                              ; preds = %260
  %274 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %276, i64 1
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %277, align 8
  %279 = load i32, i32* %7, align 4
  %280 = load i64, i64* %11, align 8
  %281 = call i32 @ff_outlink_set_status(%struct.TYPE_23__* %278, i32 %279, i64 %280)
  br label %282

282:                                              ; preds = %273, %260
  store i32 0, i32* %2, align 4
  br label %337

283:                                              ; preds = %256
  br label %284

284:                                              ; preds = %283, %248
  %285 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %285, i32 0, i32 1
  %287 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %287, i64 0
  %289 = load %struct.TYPE_23__*, %struct.TYPE_23__** %288, align 8
  %290 = call i64 @ff_outlink_frame_wanted(%struct.TYPE_23__* %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %307

292:                                              ; preds = %284
  %293 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %295, i64 0
  %297 = load %struct.TYPE_25__*, %struct.TYPE_25__** %296, align 8
  %298 = call i32 @ff_outlink_get_status(%struct.TYPE_25__* %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %307, label %300

300:                                              ; preds = %292
  %301 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %301, i32 0, i32 0
  %303 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %303, i64 0
  %305 = load %struct.TYPE_25__*, %struct.TYPE_25__** %304, align 8
  %306 = call i32 @ff_inlink_request_frame(%struct.TYPE_25__* %305)
  store i32 0, i32* %2, align 4
  br label %337

307:                                              ; preds = %292, %284
  %308 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %335

312:                                              ; preds = %307
  %313 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %313, i32 0, i32 1
  %315 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %315, i64 1
  %317 = load %struct.TYPE_23__*, %struct.TYPE_23__** %316, align 8
  %318 = call i64 @ff_outlink_frame_wanted(%struct.TYPE_23__* %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %335

320:                                              ; preds = %312
  %321 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %321, i32 0, i32 0
  %323 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %323, i64 0
  %325 = load %struct.TYPE_25__*, %struct.TYPE_25__** %324, align 8
  %326 = call i32 @ff_outlink_get_status(%struct.TYPE_25__* %325)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %335, label %328

328:                                              ; preds = %320
  %329 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %329, i32 0, i32 0
  %331 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %331, i64 0
  %333 = load %struct.TYPE_25__*, %struct.TYPE_25__** %332, align 8
  %334 = call i32 @ff_inlink_request_frame(%struct.TYPE_25__* %333)
  store i32 0, i32* %2, align 4
  br label %337

335:                                              ; preds = %320, %312, %307
  %336 = load i32, i32* @FFERROR_NOT_READY, align 4
  store i32 %336, i32* %2, align 4
  br label %337

337:                                              ; preds = %335, %328, %300, %282, %245, %217, %170, %129, %112, %57
  %338 = load i32, i32* %2, align 4
  ret i32 %338
}

declare dso_local i32 @FF_FILTER_FORWARD_STATUS_BACK_ALL(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @check_ir(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @ff_outlink_get_status(%struct.TYPE_25__*) #1

declare dso_local i64 @ff_outlink_frame_wanted(%struct.TYPE_23__*) #1

declare dso_local i32 @ff_inlink_request_frame(%struct.TYPE_25__*) #1

declare dso_local i32 @convert_coeffs(%struct.TYPE_24__*) #1

declare dso_local i32 @ff_inlink_queued_samples(%struct.TYPE_25__*) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @ff_inlink_consume_samples(%struct.TYPE_25__*, i32, i32, i32**) #1

declare dso_local i32 @fir_frame(%struct.TYPE_22__*, i32*, %struct.TYPE_23__*) #1

declare dso_local i64 @av_rescale_q(i32, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @av_frame_clone(%struct.TYPE_21__*) #1

declare dso_local i32 @ff_filter_set_ready(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @ff_inlink_acknowledge_status(%struct.TYPE_25__*, i32*, i64*) #1

declare dso_local i32 @ff_outlink_set_status(%struct.TYPE_23__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
