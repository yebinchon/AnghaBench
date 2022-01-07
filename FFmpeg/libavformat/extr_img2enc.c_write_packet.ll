; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_img2enc.c_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_img2enc.c_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i64 (%struct.TYPE_34__*, i32**, i8*, i32, i32*)*, %struct.TYPE_28__**, i32*, i32, %struct.TYPE_30__* }
%struct.TYPE_28__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32, i32, i32 }
%struct.TYPE_30__ = type { i8*, i32, i8**, i8**, i32, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_33__ = type { i64, i32, i32, i64, i32 }
%struct.TYPE_32__ = type { i32, %struct.TYPE_29__*, i32, i32 }
%struct.TYPE_29__ = type { i32 }
%struct.tm = type { i32 }
%struct.TYPE_31__ = type { i64, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Could not get frame filename with strftime\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_FRAME_FILENAME_FLAGS_MULTIPLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Cannot write filename by pts of the frames.\00", align 1
@.str.2 = private unnamed_addr constant [170 x i8] c"Could not get frame filename number %d from pattern '%s'. Use '-frames:v 1' for a single image, or '-update' option, or use a pattern such as %%03d within the filename.\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s.tmp\00", align 1
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Could not open file : %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"UVAx\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_34__*, %struct.TYPE_33__*)* @write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_packet(%struct.TYPE_34__* %0, %struct.TYPE_33__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_34__*, align 8
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca [4 x i32*], align 16
  %8 = alloca [1024 x i8], align 16
  %9 = alloca %struct.TYPE_35__*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tm*, align 8
  %15 = alloca %struct.tm, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_31__*, align 8
  %20 = alloca %struct.TYPE_33__, align 8
  %21 = alloca %struct.TYPE_34__*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %4, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %5, align 8
  %23 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  store %struct.TYPE_30__* %25, %struct.TYPE_30__** %6, align 8
  %26 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %27, align 8
  %29 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %28, i64 %31
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_35__*, %struct.TYPE_35__** %34, align 8
  store %struct.TYPE_35__* %35, %struct.TYPE_35__** %9, align 8
  %36 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_32__* @av_pix_fmt_desc_get(i32 %38)
  store %struct.TYPE_32__* %39, %struct.TYPE_32__** %10, align 8
  store i32 0, i32* %12, align 4
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %237, label %44

44:                                               ; preds = %2
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %45, i32 0, i32 10
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %51 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @av_strlcpy(i8* %50, i8* %53, i32 1024)
  br label %131

55:                                               ; preds = %44
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %56, i32 0, i32 9
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %55
  %61 = call i32 @time(i32* %13)
  %62 = call %struct.tm* @localtime_r(i32* %13, %struct.tm* %15)
  store %struct.tm* %62, %struct.tm** %14, align 8
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.tm*, %struct.tm** %14, align 8
  %68 = call i32 @strftime(i8* %63, i32 1024, i8* %66, %struct.tm* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %60
  %71 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %72 = load i32, i32* @AV_LOG_ERROR, align 4
  %73 = call i32 (%struct.TYPE_34__*, i32, i8*, ...) @av_log(%struct.TYPE_34__* %71, i32 %72, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = call i32 @AVERROR(i32 %74)
  store i32 %75, i32* %3, align 4
  br label %482

76:                                               ; preds = %60
  br label %130

77:                                               ; preds = %55
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %78, i32 0, i32 8
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %77
  %83 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @AV_FRAME_FILENAME_FLAGS_MULTIPLE, align 4
  %91 = call i64 @av_get_frame_filename2(i8* %83, i32 1024, i8* %86, i32 %89, i32 %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %82
  %94 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %95 = load i32, i32* @AV_LOG_ERROR, align 4
  %96 = call i32 (%struct.TYPE_34__*, i32, i8*, ...) @av_log(%struct.TYPE_34__* %94, i32 %95, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = call i32 @AVERROR(i32 %97)
  store i32 %98, i32* %3, align 4
  br label %482

99:                                               ; preds = %82
  br label %129

100:                                              ; preds = %77
  %101 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @AV_FRAME_FILENAME_FLAGS_MULTIPLE, align 4
  %109 = call i64 @av_get_frame_filename2(i8* %101, i32 1024, i8* %104, i32 %107, i32 %108)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %100
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp sgt i32 %114, 1
  br i1 %115, label %116, label %128

116:                                              ; preds = %111
  %117 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %118 = load i32, i32* @AV_LOG_ERROR, align 4
  %119 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 (%struct.TYPE_34__*, i32, i8*, ...) @av_log(%struct.TYPE_34__* %117, i32 %118, i8* getelementptr inbounds ([170 x i8], [170 x i8]* @.str.2, i64 0, i64 0), i32 %121, i8* %124)
  %126 = load i32, i32* @EINVAL, align 4
  %127 = call i32 @AVERROR(i32 %126)
  store i32 %127, i32* %3, align 4
  br label %482

128:                                              ; preds = %111, %100
  br label %129

129:                                              ; preds = %128, %99
  br label %130

130:                                              ; preds = %129, %76
  br label %131

131:                                              ; preds = %130, %49
  store i32 0, i32* %11, align 4
  br label %132

132:                                              ; preds = %225, %131
  %133 = load i32, i32* %11, align 4
  %134 = icmp slt i32 %133, 4
  br i1 %134, label %135, label %228

135:                                              ; preds = %132
  %136 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %136, i32 0, i32 2
  %138 = load i8**, i8*** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %144 = call i32 @snprintf(i8* %142, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %143)
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i32 0, i32 3
  %147 = load i8**, i8*** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %153 = call i32 @av_strlcpy(i8* %151, i8* %152, i32 8)
  %154 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %154, i32 0, i32 0
  %156 = load i64 (%struct.TYPE_34__*, i32**, i8*, i32, i32*)*, i64 (%struct.TYPE_34__*, i32**, i8*, i32, i32*)** %155, align 8
  %157 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 %159
  %161 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %161, i32 0, i32 7
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %135
  %166 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %166, i32 0, i32 2
  %168 = load i8**, i8*** %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %168, i64 %170
  %172 = load i8*, i8** %171, align 8
  br label %175

173:                                              ; preds = %135
  %174 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  br label %175

175:                                              ; preds = %173, %165
  %176 = phi i8* [ %172, %165 ], [ %174, %173 ]
  %177 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %178 = call i64 %156(%struct.TYPE_34__* %157, i32** %160, i8* %176, i32 %177, i32* null)
  %179 = icmp slt i64 %178, 0
  br i1 %179, label %180, label %202

180:                                              ; preds = %175
  %181 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %182 = load i32, i32* @AV_LOG_ERROR, align 4
  %183 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %183, i32 0, i32 7
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %180
  %188 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %188, i32 0, i32 2
  %190 = load i8**, i8*** %189, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %190, i64 %192
  %194 = load i8*, i8** %193, align 8
  br label %197

195:                                              ; preds = %180
  %196 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  br label %197

197:                                              ; preds = %195, %187
  %198 = phi i8* [ %194, %187 ], [ %196, %195 ]
  %199 = call i32 (%struct.TYPE_34__*, i32, i8*, ...) @av_log(%struct.TYPE_34__* %181, i32 %182, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %198)
  %200 = load i32, i32* @EIO, align 4
  %201 = call i32 @AVERROR(i32 %200)
  store i32 %201, i32* %3, align 4
  br label %482

202:                                              ; preds = %175
  %203 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %203, i32 0, i32 6
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %202
  %208 = load i32, i32* %11, align 4
  %209 = add nsw i32 %208, 1
  %210 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp sge i32 %209, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %207, %202
  br label %228

215:                                              ; preds = %207
  %216 = load i32, i32* %11, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [5 x i8], [5 x i8]* @.str.5, i64 0, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %221 = call i32 @strlen(i8* %220)
  %222 = sub nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 %223
  store i8 %219, i8* %224, align 1
  br label %225

225:                                              ; preds = %215
  %226 = load i32, i32* %11, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %11, align 4
  br label %132

228:                                              ; preds = %214, %132
  %229 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %229, i32 0, i32 7
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %228
  %234 = load i32, i32* %11, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %12, align 4
  br label %236

236:                                              ; preds = %233, %228
  br label %242

237:                                              ; preds = %2
  %238 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %238, i32 0, i32 2
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 0
  store i32* %240, i32** %241, align 16
  br label %242

242:                                              ; preds = %237, %236
  %243 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %243, i32 0, i32 6
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %342

247:                                              ; preds = %242
  %248 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = mul nsw i32 %250, %253
  store i32 %254, i32* %16, align 4
  %255 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @AV_CEIL_RSHIFT(i32 %257, i32 %260)
  %262 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %266 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @AV_CEIL_RSHIFT(i32 %264, i32 %267)
  %269 = mul nsw i32 %261, %268
  store i32 %269, i32* %17, align 4
  %270 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_29__*, %struct.TYPE_29__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %272, i64 0
  %274 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = icmp sge i32 %275, 9
  br i1 %276, label %277, label %282

277:                                              ; preds = %247
  %278 = load i32, i32* %16, align 4
  %279 = mul nsw i32 %278, 2
  store i32 %279, i32* %16, align 4
  %280 = load i32, i32* %17, align 4
  %281 = mul nsw i32 %280, 2
  store i32 %281, i32* %17, align 4
  br label %282

282:                                              ; preds = %277, %247
  %283 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 0
  %284 = load i32*, i32** %283, align 16
  %285 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %285, i32 0, i32 3
  %287 = load i64, i64* %286, align 8
  %288 = load i32, i32* %16, align 4
  %289 = call i32 @avio_write(i32* %284, i64 %287, i32 %288)
  %290 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 1
  %291 = load i32*, i32** %290, align 8
  %292 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %292, i32 0, i32 3
  %294 = load i64, i64* %293, align 8
  %295 = load i32, i32* %16, align 4
  %296 = sext i32 %295 to i64
  %297 = add nsw i64 %294, %296
  %298 = load i32, i32* %17, align 4
  %299 = call i32 @avio_write(i32* %291, i64 %297, i32 %298)
  %300 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 2
  %301 = load i32*, i32** %300, align 16
  %302 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %302, i32 0, i32 3
  %304 = load i64, i64* %303, align 8
  %305 = load i32, i32* %16, align 4
  %306 = sext i32 %305 to i64
  %307 = add nsw i64 %304, %306
  %308 = load i32, i32* %17, align 4
  %309 = sext i32 %308 to i64
  %310 = add nsw i64 %307, %309
  %311 = load i32, i32* %17, align 4
  %312 = call i32 @avio_write(i32* %301, i64 %310, i32 %311)
  %313 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %314 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 1
  %315 = call i32 @ff_format_io_close(%struct.TYPE_34__* %313, i32** %314)
  %316 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %317 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 2
  %318 = call i32 @ff_format_io_close(%struct.TYPE_34__* %316, i32** %317)
  %319 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %320 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = icmp sgt i32 %321, 3
  br i1 %322, label %323, label %341

323:                                              ; preds = %282
  %324 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 3
  %325 = load i32*, i32** %324, align 8
  %326 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %326, i32 0, i32 3
  %328 = load i64, i64* %327, align 8
  %329 = load i32, i32* %16, align 4
  %330 = sext i32 %329 to i64
  %331 = add nsw i64 %328, %330
  %332 = load i32, i32* %17, align 4
  %333 = mul nsw i32 2, %332
  %334 = sext i32 %333 to i64
  %335 = add nsw i64 %331, %334
  %336 = load i32, i32* %16, align 4
  %337 = call i32 @avio_write(i32* %325, i64 %335, i32 %336)
  %338 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %339 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 3
  %340 = call i32 @ff_format_io_close(%struct.TYPE_34__* %338, i32** %339)
  br label %341

341:                                              ; preds = %323, %282
  br label %435

342:                                              ; preds = %242
  %343 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %343, i32 0, i32 5
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %424

347:                                              ; preds = %342
  %348 = bitcast %struct.TYPE_33__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %348, i8 0, i64 32, i1 false)
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %21, align 8
  %349 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %349, i32 0, i32 6
  %351 = load i64, i64* %350, align 8
  %352 = icmp ne i64 %351, 0
  %353 = xor i1 %352, true
  %354 = zext i1 %353 to i32
  %355 = call i32 @av_assert0(i32 %354)
  %356 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %357 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %356, i32 0, i32 5
  %358 = load i64, i64* %357, align 8
  %359 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 8
  %362 = call i32 @avformat_alloc_output_context2(%struct.TYPE_34__** %21, i32* null, i64 %358, i32 %361)
  store i32 %362, i32* %18, align 4
  %363 = load i32, i32* %18, align 4
  %364 = icmp slt i32 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %347
  %366 = load i32, i32* %18, align 4
  store i32 %366, i32* %3, align 4
  br label %482

367:                                              ; preds = %347
  %368 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %369 = call %struct.TYPE_31__* @avformat_new_stream(%struct.TYPE_34__* %368, i32* null)
  store %struct.TYPE_31__* %369, %struct.TYPE_31__** %19, align 8
  %370 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %371 = icmp ne %struct.TYPE_31__* %370, null
  br i1 %371, label %377, label %372

372:                                              ; preds = %367
  %373 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %374 = call i32 @avformat_free_context(%struct.TYPE_34__* %373)
  %375 = load i32, i32* @ENOMEM, align 4
  %376 = call i32 @AVERROR(i32 %375)
  store i32 %376, i32* %3, align 4
  br label %482

377:                                              ; preds = %367
  %378 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %382 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %381, i32 0, i32 0
  store i64 %380, i64* %382, align 8
  %383 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 0
  %384 = load i32*, i32** %383, align 16
  %385 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %386 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %385, i32 0, i32 2
  store i32* %384, i32** %386, align 8
  %387 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %388 = call i32 @av_packet_ref(%struct.TYPE_33__* %20, %struct.TYPE_33__* %387)
  store i32 %388, i32* %18, align 4
  %389 = icmp slt i32 %388, 0
  br i1 %389, label %415, label %390

390:                                              ; preds = %377
  %391 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %392 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 8
  %394 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %395 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %394, i32 0, i32 1
  %396 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %396, i64 0
  %398 = load %struct.TYPE_28__*, %struct.TYPE_28__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %398, i32 0, i32 0
  %400 = load %struct.TYPE_35__*, %struct.TYPE_35__** %399, align 8
  %401 = call i32 @avcodec_parameters_copy(i32 %393, %struct.TYPE_35__* %400)
  store i32 %401, i32* %18, align 4
  %402 = icmp slt i32 %401, 0
  br i1 %402, label %415, label %403

403:                                              ; preds = %390
  %404 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %405 = call i32 @avformat_write_header(%struct.TYPE_34__* %404, i32* null)
  store i32 %405, i32* %18, align 4
  %406 = icmp slt i32 %405, 0
  br i1 %406, label %415, label %407

407:                                              ; preds = %403
  %408 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %409 = call i32 @av_interleaved_write_frame(%struct.TYPE_34__* %408, %struct.TYPE_33__* %20)
  store i32 %409, i32* %18, align 4
  %410 = icmp slt i32 %409, 0
  br i1 %410, label %415, label %411

411:                                              ; preds = %407
  %412 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %413 = call i32 @av_write_trailer(%struct.TYPE_34__* %412)
  store i32 %413, i32* %18, align 4
  %414 = icmp slt i32 %413, 0
  br i1 %414, label %415, label %420

415:                                              ; preds = %411, %407, %403, %390, %377
  %416 = call i32 @av_packet_unref(%struct.TYPE_33__* %20)
  %417 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %418 = call i32 @avformat_free_context(%struct.TYPE_34__* %417)
  %419 = load i32, i32* %18, align 4
  store i32 %419, i32* %3, align 4
  br label %482

420:                                              ; preds = %411
  %421 = call i32 @av_packet_unref(%struct.TYPE_33__* %20)
  %422 = load %struct.TYPE_34__*, %struct.TYPE_34__** %21, align 8
  %423 = call i32 @avformat_free_context(%struct.TYPE_34__* %422)
  br label %434

424:                                              ; preds = %342
  %425 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 0
  %426 = load i32*, i32** %425, align 16
  %427 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %428 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %427, i32 0, i32 3
  %429 = load i64, i64* %428, align 8
  %430 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %431 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %430, i32 0, i32 2
  %432 = load i32, i32* %431, align 4
  %433 = call i32 @avio_write(i32* %426, i64 %429, i32 %432)
  br label %434

434:                                              ; preds = %424, %420
  br label %435

435:                                              ; preds = %434, %341
  %436 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 0
  %437 = load i32*, i32** %436, align 16
  %438 = call i32 @avio_flush(i32* %437)
  %439 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %440 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %439, i32 0, i32 4
  %441 = load i32, i32* %440, align 8
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %477, label %443

443:                                              ; preds = %435
  %444 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %445 = getelementptr inbounds [4 x i32*], [4 x i32*]* %7, i64 0, i64 0
  %446 = call i32 @ff_format_io_close(%struct.TYPE_34__* %444, i32** %445)
  store i32 0, i32* %11, align 4
  br label %447

447:                                              ; preds = %473, %443
  %448 = load i32, i32* %11, align 4
  %449 = load i32, i32* %12, align 4
  %450 = icmp slt i32 %448, %449
  br i1 %450, label %451, label %476

451:                                              ; preds = %447
  %452 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %453 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %452, i32 0, i32 2
  %454 = load i8**, i8*** %453, align 8
  %455 = load i32, i32* %11, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i8*, i8** %454, i64 %456
  %458 = load i8*, i8** %457, align 8
  %459 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %460 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %459, i32 0, i32 3
  %461 = load i8**, i8*** %460, align 8
  %462 = load i32, i32* %11, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i8*, i8** %461, i64 %463
  %465 = load i8*, i8** %464, align 8
  %466 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %467 = call i32 @ff_rename(i8* %458, i8* %465, %struct.TYPE_34__* %466)
  store i32 %467, i32* %22, align 4
  %468 = load i32, i32* %22, align 4
  %469 = icmp slt i32 %468, 0
  br i1 %469, label %470, label %472

470:                                              ; preds = %451
  %471 = load i32, i32* %22, align 4
  store i32 %471, i32* %3, align 4
  br label %482

472:                                              ; preds = %451
  br label %473

473:                                              ; preds = %472
  %474 = load i32, i32* %11, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %11, align 4
  br label %447

476:                                              ; preds = %447
  br label %477

477:                                              ; preds = %476, %435
  %478 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %479 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 8
  %481 = add nsw i32 %480, 1
  store i32 %481, i32* %479, align 8
  store i32 0, i32* %3, align 4
  br label %482

482:                                              ; preds = %477, %470, %415, %372, %365, %197, %116, %93, %70
  %483 = load i32, i32* %3, align 4
  ret i32 %483
}

declare dso_local %struct.TYPE_32__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @av_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @av_log(%struct.TYPE_34__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @av_get_frame_filename2(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @avio_write(i32*, i64, i32) #1

declare dso_local i32 @ff_format_io_close(%struct.TYPE_34__*, i32**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @avformat_alloc_output_context2(%struct.TYPE_34__**, i32*, i64, i32) #1

declare dso_local %struct.TYPE_31__* @avformat_new_stream(%struct.TYPE_34__*, i32*) #1

declare dso_local i32 @avformat_free_context(%struct.TYPE_34__*) #1

declare dso_local i32 @av_packet_ref(%struct.TYPE_33__*, %struct.TYPE_33__*) #1

declare dso_local i32 @avcodec_parameters_copy(i32, %struct.TYPE_35__*) #1

declare dso_local i32 @avformat_write_header(%struct.TYPE_34__*, i32*) #1

declare dso_local i32 @av_interleaved_write_frame(%struct.TYPE_34__*, %struct.TYPE_33__*) #1

declare dso_local i32 @av_write_trailer(%struct.TYPE_34__*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_33__*) #1

declare dso_local i32 @avio_flush(i32*) #1

declare dso_local i32 @ff_rename(i8*, i8*, %struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
