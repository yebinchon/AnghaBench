; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_idet.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_idet.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i64, i64, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32*, %struct.TYPE_18__**, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { i64, i64, i64 }
%struct.TYPE_20__ = type { i32, i32, i64, i64, %struct.TYPE_21__*, %struct.TYPE_21__*, i64, %struct.TYPE_17__*, %struct.TYPE_21__* }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i64, i64, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@ff_idet_filter_line_c_16bit = common dso_local global i64 0, align 8
@ARCH_X86 = common dso_local global i64 0, align 8
@PROGRESSIVE = common dso_local global i64 0, align 8
@UNDETERMINED = common dso_local global i64 0, align 8
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Final flag accuracy %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_21__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  store %struct.TYPE_23__* %10, %struct.TYPE_23__** %6, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__* %13, %struct.TYPE_20__** %7, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %2
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 5
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %27 = icmp ne %struct.TYPE_21__* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %35 = call i32 @ff_filter_frame(i32 %33, %struct.TYPE_21__* %34)
  store i32 %35, i32* %3, align 4
  br label %312

36:                                               ; preds = %23, %18, %2
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %46, %41
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %61 = call i32 @ff_filter_frame(i32 %59, %struct.TYPE_21__* %60)
  store i32 %61, i32* %3, align 4
  br label %312

62:                                               ; preds = %36
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 8
  %65 = call i32 @av_frame_free(%struct.TYPE_21__** %64)
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %89, label %73

73:                                               ; preds = %62
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %89, label %81

81:                                               ; preds = %73
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %84, %87
  br i1 %88, label %89, label %129

89:                                               ; preds = %81, %73, %62
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %97, i64 0
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  store i64 %92, i64* %100, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %108, i64 0
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  store i64 %103, i64* %111, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %119, i64 0
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 2
  store i64 %114, i64* %122, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 4
  %125 = call i32 @av_frame_free(%struct.TYPE_21__** %124)
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 5
  %128 = call i32 @av_frame_free(%struct.TYPE_21__** %127)
  br label %129

129:                                              ; preds = %89, %81
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 4
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %131, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 8
  store %struct.TYPE_21__* %132, %struct.TYPE_21__** %134, align 8
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 5
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %136, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 4
  store %struct.TYPE_21__* %137, %struct.TYPE_21__** %139, align 8
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 5
  store %struct.TYPE_21__* %140, %struct.TYPE_21__** %142, align 8
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 4
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %144, align 8
  %146 = icmp ne %struct.TYPE_21__* %145, null
  br i1 %146, label %158, label %147

147:                                              ; preds = %129
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 5
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %149, align 8
  %151 = call %struct.TYPE_21__* @av_frame_clone(%struct.TYPE_21__* %150)
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 4
  store %struct.TYPE_21__* %151, %struct.TYPE_21__** %153, align 8
  %154 = icmp ne %struct.TYPE_21__* %151, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %147
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = call i32 @AVERROR(i32 %156)
  store i32 %157, i32* %3, align 4
  br label %312

158:                                              ; preds = %147, %129
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 8
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %160, align 8
  %162 = icmp ne %struct.TYPE_21__* %161, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %158
  store i32 0, i32* %3, align 4
  br label %312

164:                                              ; preds = %158
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 7
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %166, align 8
  %168 = icmp ne %struct.TYPE_17__* %167, null
  br i1 %168, label %176, label %169

169:                                              ; preds = %164
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = call %struct.TYPE_17__* @av_pix_fmt_desc_get(i64 %172)
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 7
  store %struct.TYPE_17__* %173, %struct.TYPE_17__** %175, align 8
  br label %176

176:                                              ; preds = %169, %164
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 7
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i64 0
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = icmp sgt i32 %184, 8
  br i1 %185, label %186, label %196

186:                                              ; preds = %176
  %187 = load i64, i64* @ff_idet_filter_line_c_16bit, align 8
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 6
  store i64 %187, i64* %189, align 8
  %190 = load i64, i64* @ARCH_X86, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %186
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %194 = call i32 @ff_idet_init_x86(%struct.TYPE_20__* %193, i32 1)
  br label %195

195:                                              ; preds = %192, %186
  br label %196

196:                                              ; preds = %195, %176
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %298

201:                                              ; preds = %196
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 4
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %297

208:                                              ; preds = %201
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 4
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 3
  store i64 0, i64* %212, align 8
  %213 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %214 = call i32 @filter(%struct.TYPE_23__* %213)
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @PROGRESSIVE, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %229

220:                                              ; preds = %208
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = add nsw i64 %223, -1
  store i64 %224, i64* %222, align 8
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = add nsw i32 %227, -1
  store i32 %228, i32* %226, align 8
  br label %245

229:                                              ; preds = %208
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @UNDETERMINED, align 8
  %234 = icmp ne i64 %232, %233
  br i1 %234, label %235, label %244

235:                                              ; preds = %229
  %236 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = add nsw i64 %238, 1
  store i64 %239, i64* %237, align 8
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = add nsw i32 %242, -1
  store i32 %243, i32* %241, align 8
  br label %244

244:                                              ; preds = %235, %229
  br label %245

245:                                              ; preds = %244, %220
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp eq i32 %248, 1
  br i1 %249, label %250, label %296

250:                                              ; preds = %245
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 4
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %257, align 8
  %259 = call %struct.TYPE_21__* @av_frame_clone(%struct.TYPE_21__* %258)
  %260 = call i32 @ff_filter_frame(i32 %255, %struct.TYPE_21__* %259)
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 5
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i32 0, i32 3
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %277

267:                                              ; preds = %250
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = icmp slt i64 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %267
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 5
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 3
  store i64 0, i64* %276, align 8
  br label %277

277:                                              ; preds = %272, %267, %250
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i32 0, i32 1
  store i32 1, i32* %279, align 4
  %280 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %281 = load i32, i32* @AV_LOG_INFO, align 4
  %282 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = call i32 @av_log(%struct.TYPE_23__* %280, i32 %281, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %284)
  %286 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 0
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i32 0, i32 5
  %293 = load %struct.TYPE_21__*, %struct.TYPE_21__** %292, align 8
  %294 = call %struct.TYPE_21__* @av_frame_clone(%struct.TYPE_21__* %293)
  %295 = call i32 @ff_filter_frame(i32 %290, %struct.TYPE_21__* %294)
  store i32 %295, i32* %3, align 4
  br label %312

296:                                              ; preds = %245
  br label %297

297:                                              ; preds = %296, %201
  br label %301

298:                                              ; preds = %196
  %299 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %300 = call i32 @filter(%struct.TYPE_23__* %299)
  br label %301

301:                                              ; preds = %298, %297
  %302 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %302, i32 0, i32 0
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 0
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %307, i32 0, i32 4
  %309 = load %struct.TYPE_21__*, %struct.TYPE_21__** %308, align 8
  %310 = call %struct.TYPE_21__* @av_frame_clone(%struct.TYPE_21__* %309)
  %311 = call i32 @ff_filter_frame(i32 %306, %struct.TYPE_21__* %310)
  store i32 %311, i32* %3, align 4
  br label %312

312:                                              ; preds = %301, %277, %163, %155, %54, %28
  %313 = load i32, i32* %3, align 4
  ret i32 %313
}

declare dso_local i32 @ff_filter_frame(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_21__**) #1

declare dso_local %struct.TYPE_21__* @av_frame_clone(%struct.TYPE_21__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_17__* @av_pix_fmt_desc_get(i64) #1

declare dso_local i32 @ff_idet_init_x86(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @filter(%struct.TYPE_23__*) #1

declare dso_local i32 @av_log(%struct.TYPE_23__*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
