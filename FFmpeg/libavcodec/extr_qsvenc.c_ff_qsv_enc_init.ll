; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsvenc.c_ff_qsv_enc_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsvenc.c_ff_qsv_enc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i32, %struct.TYPE_36__*, %struct.TYPE_31__* }
%struct.TYPE_36__ = type { i32, i32, i32, %struct.TYPE_32__** }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_34__ = type { i32, i32, %struct.TYPE_38__*, %struct.TYPE_33__, i32, i32, %struct.TYPE_32__**, %struct.TYPE_32__**, i32, i32 }
%struct.TYPE_33__ = type { i32, i32, i32, %struct.TYPE_32__** }
%struct.TYPE_37__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MFX_MEMTYPE_OPAQUE_FRAME = common dso_local global i32 0, align 4
@MFX_IOPATTERN_IN_OPAQUE_MEMORY = common dso_local global i32 0, align 4
@MFX_MEMTYPE_VIDEO_MEMORY_DECODER_TARGET = common dso_local global i32 0, align 4
@MFX_MEMTYPE_VIDEO_MEMORY_PROCESSOR_TARGET = common dso_local global i32 0, align 4
@MFX_IOPATTERN_IN_VIDEO_MEMORY = common dso_local global i32 0, align 4
@MFX_IOPATTERN_IN_SYSTEM_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error querying mfx version\00", align 1
@MFX_WRN_PARTIAL_ACCELERATION = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Encoder will work with partial HW acceleration\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Error querying encoder params\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Error querying (IOSurf) the encoding parameters\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Error initializing the encoder\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Warning in encoder initialization\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"Error retrieving encoding parameters.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_qsv_enc_init(%struct.TYPE_38__* %0, %struct.TYPE_34__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_38__*, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_36__*, align 8
  %10 = alloca %struct.TYPE_37__*, align 8
  %11 = alloca %struct.TYPE_35__*, align 8
  %12 = alloca %struct.TYPE_36__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_38__* %0, %struct.TYPE_38__** %4, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (...) @qsv_fifo_item_size()
  %25 = mul nsw i32 %23, %24
  %26 = call i32 @av_fifo_alloc(i32 %25)
  %27 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %27, i32 0, i32 9
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = call i32 @AVERROR(i32 %34)
  store i32 %35, i32* %3, align 4
  br label %383

36:                                               ; preds = %2
  %37 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_36__*, %struct.TYPE_36__** %38, align 8
  %40 = icmp ne %struct.TYPE_36__* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_36__*, %struct.TYPE_36__** %43, align 8
  store %struct.TYPE_36__* %44, %struct.TYPE_36__** %9, align 8
  %45 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %6, align 4
  %48 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %41, %36
  %52 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_31__*, %struct.TYPE_31__** %53, align 8
  %55 = icmp ne %struct.TYPE_31__* %54, null
  br i1 %55, label %56, label %91

56:                                               ; preds = %51
  %57 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_31__*, %struct.TYPE_31__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.TYPE_37__*
  store %struct.TYPE_37__* %62, %struct.TYPE_37__** %10, align 8
  %63 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_35__*, %struct.TYPE_35__** %64, align 8
  store %struct.TYPE_35__* %65, %struct.TYPE_35__** %11, align 8
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %90, label %68

68:                                               ; preds = %56
  %69 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MFX_MEMTYPE_OPAQUE_FRAME, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @MFX_IOPATTERN_IN_OPAQUE_MEMORY, align 4
  store i32 %76, i32* %6, align 4
  br label %89

77:                                               ; preds = %68
  %78 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MFX_MEMTYPE_VIDEO_MEMORY_DECODER_TARGET, align 4
  %82 = load i32, i32* @MFX_MEMTYPE_VIDEO_MEMORY_PROCESSOR_TARGET, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i32, i32* @MFX_IOPATTERN_IN_VIDEO_MEMORY, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %86, %77
  br label %89

89:                                               ; preds = %88, %75
  br label %90

90:                                               ; preds = %89, %56
  br label %91

91:                                               ; preds = %90, %51
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @MFX_IOPATTERN_IN_SYSTEM_MEMORY, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %94, %91
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %102 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %103 = call i32 @qsvenc_init_session(%struct.TYPE_38__* %101, %struct.TYPE_34__* %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %3, align 4
  br label %383

108:                                              ; preds = %96
  %109 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %112, i32 0, i32 8
  %114 = call i32 @MFXQueryVersion(i32 %111, i32* %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %108
  %118 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @ff_qsv_print_error(%struct.TYPE_38__* %118, i32 %119, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %120, i32* %3, align 4
  br label %383

121:                                              ; preds = %108
  %122 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  switch i32 %124, label %129 [
    i32 129, label %125
  ]

125:                                              ; preds = %121
  %126 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %127 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %128 = call i32 @init_video_param_jpeg(%struct.TYPE_38__* %126, %struct.TYPE_34__* %127)
  store i32 %128, i32* %8, align 4
  br label %133

129:                                              ; preds = %121
  %130 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %131 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %132 = call i32 @init_video_param(%struct.TYPE_38__* %130, %struct.TYPE_34__* %131)
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %129, %125
  %134 = load i32, i32* %8, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %3, align 4
  br label %383

138:                                              ; preds = %133
  %139 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_36__*, %struct.TYPE_36__** %140, align 8
  %142 = icmp ne %struct.TYPE_36__* %141, null
  br i1 %142, label %143, label %270

143:                                              ; preds = %138
  %144 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_36__*, %struct.TYPE_36__** %145, align 8
  store %struct.TYPE_36__* %146, %struct.TYPE_36__** %12, align 8
  %147 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %149, %152
  %154 = call %struct.TYPE_32__** @av_mallocz_array(i32 %153, i32 8)
  %155 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %155, i32 0, i32 7
  store %struct.TYPE_32__** %154, %struct.TYPE_32__*** %156, align 8
  %157 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %157, i32 0, i32 7
  %159 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %158, align 8
  %160 = icmp ne %struct.TYPE_32__** %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %143
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = call i32 @AVERROR(i32 %162)
  store i32 %163, i32* %3, align 4
  br label %383

164:                                              ; preds = %143
  %165 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %165, i32 0, i32 7
  %167 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %166, align 8
  %168 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %169, i32 0, i32 3
  store %struct.TYPE_32__** %167, %struct.TYPE_32__*** %170, align 8
  store i32 0, i32* %13, align 4
  br label %171

171:                                              ; preds = %192, %164
  %172 = load i32, i32* %13, align 4
  %173 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %172, %175
  br i1 %176, label %177, label %195

177:                                              ; preds = %171
  %178 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %178, i32 0, i32 3
  %180 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %179, align 8
  %181 = load i32, i32* %13, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %180, i64 %182
  %184 = load %struct.TYPE_32__*, %struct.TYPE_32__** %183, align 8
  %185 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %186, i32 0, i32 3
  %188 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %187, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %188, i64 %190
  store %struct.TYPE_32__* %184, %struct.TYPE_32__** %191, align 8
  br label %192

192:                                              ; preds = %177
  %193 = load i32, i32* %13, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %13, align 4
  br label %171

195:                                              ; preds = %171
  %196 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %197 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %200, i32 0, i32 2
  store i32 %198, i32* %201, align 8
  store i32 0, i32* %13, align 4
  br label %202

202:                                              ; preds = %266, %195
  %203 = load i32, i32* %13, align 4
  %204 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = icmp slt i32 %203, %206
  br i1 %207, label %208, label %269

208:                                              ; preds = %202
  store i32 0, i32* %14, align 4
  br label %209

209:                                              ; preds = %237, %208
  %210 = load i32, i32* %14, align 4
  %211 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = icmp slt i32 %210, %213
  br i1 %214, label %215, label %240

215:                                              ; preds = %209
  %216 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %217 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %216, i32 0, i32 3
  %218 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %217, align 8
  %219 = load i32, i32* %14, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %218, i64 %220
  %222 = load %struct.TYPE_32__*, %struct.TYPE_32__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %225, i32 0, i32 6
  %227 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %226, align 8
  %228 = load i32, i32* %13, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %227, i64 %229
  %231 = load %struct.TYPE_32__*, %struct.TYPE_32__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = icmp eq i64 %224, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %215
  br label %240

236:                                              ; preds = %215
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %14, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %14, align 4
  br label %209

240:                                              ; preds = %235, %209
  %241 = load i32, i32* %14, align 4
  %242 = load %struct.TYPE_36__*, %struct.TYPE_36__** %12, align 8
  %243 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = icmp slt i32 %241, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %240
  br label %266

247:                                              ; preds = %240
  %248 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %248, i32 0, i32 6
  %250 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %249, align 8
  %251 = load i32, i32* %13, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %250, i64 %252
  %254 = load %struct.TYPE_32__*, %struct.TYPE_32__** %253, align 8
  %255 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %256, i32 0, i32 3
  %258 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %257, align 8
  %259 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %261, align 8
  %264 = sext i32 %262 to i64
  %265 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %258, i64 %264
  store %struct.TYPE_32__* %254, %struct.TYPE_32__** %265, align 8
  br label %266

266:                                              ; preds = %247, %246
  %267 = load i32, i32* %13, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %13, align 4
  br label %202

269:                                              ; preds = %202
  br label %283

270:                                              ; preds = %138
  %271 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %271, i32 0, i32 6
  %273 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %272, align 8
  %274 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %274, i32 0, i32 3
  %276 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %275, i32 0, i32 3
  store %struct.TYPE_32__** %273, %struct.TYPE_32__*** %276, align 8
  %277 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %280, i32 0, i32 3
  %282 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %281, i32 0, i32 2
  store i32 %279, i32* %282, align 8
  br label %283

283:                                              ; preds = %270, %269
  %284 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %284, i32 0, i32 4
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %287, i32 0, i32 3
  %289 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %289, i32 0, i32 3
  %291 = call i32 @MFXVideoENCODE_Query(i32 %286, %struct.TYPE_33__* %288, %struct.TYPE_33__* %290)
  store i32 %291, i32* %8, align 4
  %292 = load i32, i32* %8, align 4
  %293 = load i32, i32* @MFX_WRN_PARTIAL_ACCELERATION, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %299

295:                                              ; preds = %283
  %296 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %297 = load i32, i32* @AV_LOG_WARNING, align 4
  %298 = call i32 @av_log(%struct.TYPE_38__* %296, i32 %297, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %307

299:                                              ; preds = %283
  %300 = load i32, i32* %8, align 4
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %299
  %303 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %304 = load i32, i32* %8, align 4
  %305 = call i32 @ff_qsv_print_error(%struct.TYPE_38__* %303, i32 %304, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 %305, i32* %3, align 4
  br label %383

306:                                              ; preds = %299
  br label %307

307:                                              ; preds = %306, %295
  %308 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %308, i32 0, i32 4
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %311, i32 0, i32 3
  %313 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %313, i32 0, i32 5
  %315 = call i32 @MFXVideoENCODE_QueryIOSurf(i32 %310, %struct.TYPE_33__* %312, i32* %314)
  store i32 %315, i32* %8, align 4
  %316 = load i32, i32* %8, align 4
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %307
  %319 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %320 = load i32, i32* %8, align 4
  %321 = call i32 @ff_qsv_print_error(%struct.TYPE_38__* %319, i32 %320, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  store i32 %321, i32* %3, align 4
  br label %383

322:                                              ; preds = %307
  %323 = load i32, i32* %7, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %334

325:                                              ; preds = %322
  %326 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %327 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %328 = call i32 @qsv_init_opaque_alloc(%struct.TYPE_38__* %326, %struct.TYPE_34__* %327)
  store i32 %328, i32* %8, align 4
  %329 = load i32, i32* %8, align 4
  %330 = icmp slt i32 %329, 0
  br i1 %330, label %331, label %333

331:                                              ; preds = %325
  %332 = load i32, i32* %8, align 4
  store i32 %332, i32* %3, align 4
  br label %383

333:                                              ; preds = %325
  br label %334

334:                                              ; preds = %333, %322
  %335 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %338, i32 0, i32 3
  %340 = call i32 @MFXVideoENCODE_Init(i32 %337, %struct.TYPE_33__* %339)
  store i32 %340, i32* %8, align 4
  %341 = load i32, i32* %8, align 4
  %342 = icmp slt i32 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %334
  %344 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %345 = load i32, i32* %8, align 4
  %346 = call i32 @ff_qsv_print_error(%struct.TYPE_38__* %344, i32 %345, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  store i32 %346, i32* %3, align 4
  br label %383

347:                                              ; preds = %334
  %348 = load i32, i32* %8, align 4
  %349 = icmp sgt i32 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %347
  %351 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %352 = load i32, i32* %8, align 4
  %353 = call i32 @ff_qsv_print_warning(%struct.TYPE_38__* %351, i32 %352, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %354

354:                                              ; preds = %350, %347
  br label %355

355:                                              ; preds = %354
  %356 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %357 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  switch i32 %358, label %367 [
    i32 129, label %359
    i32 128, label %363
  ]

359:                                              ; preds = %355
  %360 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %361 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %362 = call i32 @qsv_retrieve_enc_jpeg_params(%struct.TYPE_38__* %360, %struct.TYPE_34__* %361)
  store i32 %362, i32* %8, align 4
  br label %371

363:                                              ; preds = %355
  %364 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %365 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %366 = call i32 @qsv_retrieve_enc_vp9_params(%struct.TYPE_38__* %364, %struct.TYPE_34__* %365)
  store i32 %366, i32* %8, align 4
  br label %371

367:                                              ; preds = %355
  %368 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %369 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %370 = call i32 @qsv_retrieve_enc_params(%struct.TYPE_38__* %368, %struct.TYPE_34__* %369)
  store i32 %370, i32* %8, align 4
  br label %371

371:                                              ; preds = %367, %363, %359
  %372 = load i32, i32* %8, align 4
  %373 = icmp slt i32 %372, 0
  br i1 %373, label %374, label %379

374:                                              ; preds = %371
  %375 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %376 = load i32, i32* @AV_LOG_ERROR, align 4
  %377 = call i32 @av_log(%struct.TYPE_38__* %375, i32 %376, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %378 = load i32, i32* %8, align 4
  store i32 %378, i32* %3, align 4
  br label %383

379:                                              ; preds = %371
  %380 = load %struct.TYPE_38__*, %struct.TYPE_38__** %4, align 8
  %381 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %381, i32 0, i32 2
  store %struct.TYPE_38__* %380, %struct.TYPE_38__** %382, align 8
  store i32 0, i32* %3, align 4
  br label %383

383:                                              ; preds = %379, %374, %343, %331, %318, %302, %161, %136, %117, %106, %33
  %384 = load i32, i32* %3, align 4
  ret i32 %384
}

declare dso_local i32 @av_fifo_alloc(i32) #1

declare dso_local i32 @qsv_fifo_item_size(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @qsvenc_init_session(%struct.TYPE_38__*, %struct.TYPE_34__*) #1

declare dso_local i32 @MFXQueryVersion(i32, i32*) #1

declare dso_local i32 @ff_qsv_print_error(%struct.TYPE_38__*, i32, i8*) #1

declare dso_local i32 @init_video_param_jpeg(%struct.TYPE_38__*, %struct.TYPE_34__*) #1

declare dso_local i32 @init_video_param(%struct.TYPE_38__*, %struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_32__** @av_mallocz_array(i32, i32) #1

declare dso_local i32 @MFXVideoENCODE_Query(i32, %struct.TYPE_33__*, %struct.TYPE_33__*) #1

declare dso_local i32 @av_log(%struct.TYPE_38__*, i32, i8*) #1

declare dso_local i32 @MFXVideoENCODE_QueryIOSurf(i32, %struct.TYPE_33__*, i32*) #1

declare dso_local i32 @qsv_init_opaque_alloc(%struct.TYPE_38__*, %struct.TYPE_34__*) #1

declare dso_local i32 @MFXVideoENCODE_Init(i32, %struct.TYPE_33__*) #1

declare dso_local i32 @ff_qsv_print_warning(%struct.TYPE_38__*, i32, i8*) #1

declare dso_local i32 @qsv_retrieve_enc_jpeg_params(%struct.TYPE_38__*, %struct.TYPE_34__*) #1

declare dso_local i32 @qsv_retrieve_enc_vp9_params(%struct.TYPE_38__*, %struct.TYPE_34__*) #1

declare dso_local i32 @qsv_retrieve_enc_params(%struct.TYPE_38__*, %struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
