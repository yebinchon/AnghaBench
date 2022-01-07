; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decvobsub.c_decsubWork.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decvobsub.c_decsubWork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i64, i64, i32, i32, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32*, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i64, i32, i32 }

@HB_BUF_FLAG_EOF = common dso_local global i32 0, align 4
@HB_WORK_DONE = common dso_local global i32 0, align 4
@HB_FRAME_SUBTITLE = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@HB_WORK_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decsubWork(%struct.TYPE_16__* %0, %struct.TYPE_17__** %1, %struct.TYPE_17__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__**, align 8
  %7 = alloca %struct.TYPE_17__**, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__** %1, %struct.TYPE_17__*** %6, align 8
  store %struct.TYPE_17__** %2, %struct.TYPE_17__*** %7, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %8, align 8
  %15 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %9, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %26 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %26, align 8
  %27 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %6, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %27, align 8
  %28 = load i32, i32* @HB_WORK_DONE, align 4
  store i32 %28, i32* %4, align 4
  br label %283

29:                                               ; preds = %3
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %41, %46
  store i32 %47, i32* %10, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %53, %58
  store i32 %59, i32* %11, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %142, label %64

64:                                               ; preds = %29
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %141

67:                                               ; preds = %64
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %141

70:                                               ; preds = %67
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %141

74:                                               ; preds = %70
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = icmp sle i32 %77, %78
  br i1 %79, label %80, label %141

80:                                               ; preds = %74
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = call %struct.TYPE_18__* @hb_buffer_init(i32 65535)
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 7
  store %struct.TYPE_18__* %87, %struct.TYPE_18__** %89, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 7
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @memcpy(i64 %94, i32* %97, i32 %100)
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 7
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  store i32 %105, i32* %110, align 4
  %111 = load i32, i32* @HB_FRAME_SUBTITLE, align 4
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 7
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  store i32 %111, i32* %116, align 4
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp sge i64 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %80
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 3
  store i64 %131, i64* %133, align 8
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 6
  store i32 %137, i32* %139, align 4
  br label %140

140:                                              ; preds = %127, %80
  br label %141

141:                                              ; preds = %140, %74, %70, %67, %64
  br label %220

142:                                              ; preds = %29
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = sub nsw i32 %148, %151
  %153 = icmp sle i32 %145, %152
  br i1 %153, label %154, label %207

154:                                              ; preds = %142
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 7
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %159, %163
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @memcpy(i64 %164, i32* %167, i32 %170)
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 7
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  store i32 %175, i32* %180, align 4
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = add nsw i32 %186, %183
  store i32 %187, i32* %185, align 8
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = icmp sge i64 %191, 0
  br i1 %192, label %193, label %206

193:                                              ; preds = %154
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 3
  store i64 %197, i64* %199, align 8
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 6
  store i32 %203, i32* %205, align 4
  br label %206

206:                                              ; preds = %193, %154
  br label %219

207:                                              ; preds = %142
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 7
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %209, align 8
  %211 = icmp ne %struct.TYPE_18__* %210, null
  br i1 %211, label %212, label %216

212:                                              ; preds = %207
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 7
  %215 = call i32 @hb_buffer_close(%struct.TYPE_18__** %214)
  br label %216

216:                                              ; preds = %212, %207
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 0
  store i32 0, i32* %218, align 8
  br label %219

219:                                              ; preds = %216, %206
  br label %220

220:                                              ; preds = %219, %141
  %221 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %221, align 8
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %281

226:                                              ; preds = %220
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = icmp eq i32 %229, %232
  br i1 %233, label %234, label %281

234:                                              ; preds = %226
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 7
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 0
  store i32 %237, i32* %241, align 8
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %243 = call %struct.TYPE_17__* @Decode(%struct.TYPE_16__* %242)
  %244 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  store %struct.TYPE_17__* %243, %struct.TYPE_17__** %244, align 8
  %245 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** %245, align 8
  %247 = icmp ne %struct.TYPE_17__* %246, null
  br i1 %247, label %248, label %257

248:                                              ; preds = %234
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 2
  store i32 %252, i32* %256, align 8
  br label %257

257:                                              ; preds = %248, %234
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 0
  store i32 0, i32* %259, align 8
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 2
  store i32 0, i32* %261, align 8
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 1
  store i32 0, i32* %263, align 4
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 4
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %268 = icmp ne i64 %266, %267
  br i1 %268, label %269, label %280

269:                                              ; preds = %257
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 4
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 3
  store i64 %272, i64* %274, align 8
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 6
  store i32 %277, i32* %279, align 4
  br label %280

280:                                              ; preds = %269, %257
  br label %281

281:                                              ; preds = %280, %226, %220
  %282 = load i32, i32* @HB_WORK_OK, align 4
  store i32 %282, i32* %4, align 4
  br label %283

283:                                              ; preds = %281, %24
  %284 = load i32, i32* %4, align 4
  ret i32 %284
}

declare dso_local %struct.TYPE_18__* @hb_buffer_init(i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_18__**) #1

declare dso_local %struct.TYPE_17__* @Decode(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
