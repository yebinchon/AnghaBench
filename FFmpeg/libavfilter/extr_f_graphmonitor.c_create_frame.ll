; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_graphmonitor.c_create_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_graphmonitor.c_create_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i8*, i32, i32, %struct.TYPE_29__**, %struct.TYPE_29__**, %struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_27__* }
%struct.TYPE_29__ = type { %struct.TYPE_26__*, %struct.TYPE_25__*, i32, i32 }
%struct.TYPE_26__ = type { i8* }
%struct.TYPE_25__ = type { i8* }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_30__** }
%struct.TYPE_27__ = type { i8*, i32, i64 }
%struct.TYPE_28__ = type { i8* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"in%d: \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"out%d: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_30__*, i8*)* @create_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_frame(%struct.TYPE_30__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_29__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_29__*, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store i8* %1, i8** %5, align 8
  %20 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 7
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  store %struct.TYPE_27__* %22, %struct.TYPE_27__** %6, align 8
  %23 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %25, i64 0
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %26, align 8
  store %struct.TYPE_29__* %27, %struct.TYPE_29__** %7, align 8
  store i32 0, i32* %10, align 4
  %28 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.TYPE_28__* @ff_get_video_buffer(%struct.TYPE_29__* %28, i32 %31, i32 %34)
  store %struct.TYPE_28__* %35, %struct.TYPE_28__** %8, align 8
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %37 = icmp ne %struct.TYPE_28__* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %2
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = call i32 @AVERROR(i32 %39)
  store i32 %40, i32* %3, align 4
  br label %276

41:                                               ; preds = %2
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %45 = call i32 @clear_image(%struct.TYPE_27__* %42, %struct.TYPE_28__* %43, %struct.TYPE_29__* %44)
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %263, %41
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %48, i32 0, i32 6
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %47, %52
  br i1 %53, label %54, label %266

54:                                               ; preds = %46
  %55 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %55, i32 0, i32 6
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %59, i64 %61
  %63 = load %struct.TYPE_30__*, %struct.TYPE_30__** %62, align 8
  store %struct.TYPE_30__* %63, %struct.TYPE_30__** %12, align 8
  %64 = bitcast [1024 x i8]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %64, i8 0, i64 1024, i1 false)
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %54
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %71 = call i32 @filter_have_queued(%struct.TYPE_30__* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  br label %263

74:                                               ; preds = %69, %54
  store i32 0, i32* %9, align 4
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @drawtext(%struct.TYPE_28__* %75, i32 %76, i32 %77, i8* %80, i32 %83)
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @strlen(i8* %87)
  %89 = mul nsw i32 %88, 8
  %90 = add nsw i32 %89, 10
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %9, align 4
  %93 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %96, i32 0, i32 5
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @drawtext(%struct.TYPE_28__* %93, i32 %94, i32 %95, i8* %100, i32 %103)
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 10
  store i32 %106, i32* %10, align 4
  store i32 0, i32* %14, align 4
  br label %107

107:                                              ; preds = %179, %74
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %182

113:                                              ; preds = %107
  %114 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %114, i32 0, i32 4
  %116 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %116, i64 %118
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %119, align 8
  store %struct.TYPE_29__* %120, %struct.TYPE_29__** %15, align 8
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %122 = call i64 @ff_inlink_queued_frames(%struct.TYPE_29__* %121)
  store i64 %122, i64* %16, align 8
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %113
  %128 = load i64, i64* %16, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %127
  br label %179

131:                                              ; preds = %127, %113
  store i32 10, i32* %9, align 4
  %132 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @snprintf(i8* %132, i32 1023, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %133)
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %10, align 4
  %138 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @drawtext(%struct.TYPE_28__* %135, i32 %136, i32 %137, i8* %138, i32 %141)
  %143 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %144 = call i32 @strlen(i8* %143)
  %145 = mul nsw i32 %144, 8
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %9, align 4
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @drawtext(%struct.TYPE_28__* %148, i32 %149, i32 %150, i8* %155, i32 %158)
  %160 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @strlen(i8* %164)
  %166 = mul nsw i32 %165, 8
  %167 = add nsw i32 %166, 10
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %9, align 4
  %170 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %171 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %10, align 4
  %174 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %175 = load i64, i64* %16, align 8
  %176 = call i32 @draw_items(%struct.TYPE_30__* %170, %struct.TYPE_28__* %171, i32 %172, i32 %173, %struct.TYPE_29__* %174, i64 %175)
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %177, 10
  store i32 %178, i32* %10, align 4
  br label %179

179:                                              ; preds = %131, %130
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %14, align 4
  br label %107

182:                                              ; preds = %107
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, 2
  store i32 %184, i32* %10, align 4
  store i32 0, i32* %17, align 4
  br label %185

185:                                              ; preds = %257, %182
  %186 = load i32, i32* %17, align 4
  %187 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = icmp slt i32 %186, %189
  br i1 %190, label %191, label %260

191:                                              ; preds = %185
  %192 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %192, i32 0, i32 3
  %194 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %193, align 8
  %195 = load i32, i32* %17, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %194, i64 %196
  %198 = load %struct.TYPE_29__*, %struct.TYPE_29__** %197, align 8
  store %struct.TYPE_29__* %198, %struct.TYPE_29__** %18, align 8
  %199 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %200 = call i64 @ff_inlink_queued_frames(%struct.TYPE_29__* %199)
  store i64 %200, i64* %19, align 8
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %191
  %206 = load i64, i64* %19, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %205
  br label %257

209:                                              ; preds = %205, %191
  store i32 10, i32* %9, align 4
  %210 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %211 = load i32, i32* %17, align 4
  %212 = call i32 @snprintf(i8* %210, i32 1023, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %211)
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* %10, align 4
  %216 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %217 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @drawtext(%struct.TYPE_28__* %213, i32 %214, i32 %215, i8* %216, i32 %219)
  %221 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %222 = call i32 @strlen(i8* %221)
  %223 = mul nsw i32 %222, 8
  %224 = load i32, i32* %9, align 4
  %225 = add nsw i32 %224, %223
  store i32 %225, i32* %9, align 4
  %226 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* %10, align 4
  %229 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %230 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @drawtext(%struct.TYPE_28__* %226, i32 %227, i32 %228, i8* %233, i32 %236)
  %238 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %239 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 0
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 @strlen(i8* %242)
  %244 = mul nsw i32 %243, 8
  %245 = add nsw i32 %244, 10
  %246 = load i32, i32* %9, align 4
  %247 = add nsw i32 %246, %245
  store i32 %247, i32* %9, align 4
  %248 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %249 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %250 = load i32, i32* %9, align 4
  %251 = load i32, i32* %10, align 4
  %252 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %253 = load i64, i64* %19, align 8
  %254 = call i32 @draw_items(%struct.TYPE_30__* %248, %struct.TYPE_28__* %249, i32 %250, i32 %251, %struct.TYPE_29__* %252, i64 %253)
  %255 = load i32, i32* %10, align 4
  %256 = add nsw i32 %255, 10
  store i32 %256, i32* %10, align 4
  br label %257

257:                                              ; preds = %209, %208
  %258 = load i32, i32* %17, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %17, align 4
  br label %185

260:                                              ; preds = %185
  %261 = load i32, i32* %10, align 4
  %262 = add nsw i32 %261, 5
  store i32 %262, i32* %10, align 4
  br label %263

263:                                              ; preds = %260, %73
  %264 = load i32, i32* %11, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %11, align 4
  br label %46

266:                                              ; preds = %46
  %267 = load i8*, i8** %5, align 8
  %268 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %268, i32 0, i32 0
  store i8* %267, i8** %269, align 8
  %270 = load i8*, i8** %5, align 8
  %271 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %271, i32 0, i32 0
  store i8* %270, i8** %272, align 8
  %273 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %274 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %275 = call i32 @ff_filter_frame(%struct.TYPE_29__* %273, %struct.TYPE_28__* %274)
  store i32 %275, i32* %3, align 4
  br label %276

276:                                              ; preds = %266, %38
  %277 = load i32, i32* %3, align 4
  ret i32 %277
}

declare dso_local %struct.TYPE_28__* @ff_get_video_buffer(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @clear_image(%struct.TYPE_27__*, %struct.TYPE_28__*, %struct.TYPE_29__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @filter_have_queued(%struct.TYPE_30__*) #1

declare dso_local i32 @drawtext(%struct.TYPE_28__*, i32, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ff_inlink_queued_frames(%struct.TYPE_29__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @draw_items(%struct.TYPE_30__*, %struct.TYPE_28__*, i32, i32, %struct.TYPE_29__*, i64) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_29__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
