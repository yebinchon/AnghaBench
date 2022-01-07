; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_framesync.c_framesync_advance.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_framesync.c_framesync_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, i32*, i64, i32* }

@INT64_MAX = common dso_local global i64 0, align 8
@EXT_INFINITY = common dso_local global i64 0, align 8
@STATE_BOF = common dso_local global i64 0, align 8
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@STATE_RUN = common dso_local global i64 0, align 8
@STATE_EOF = common dso_local global i64 0, align 8
@EXT_STOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @framesync_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @framesync_advance(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  br label %7

7:                                                ; preds = %296, %1
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %7
  %18 = phi i1 [ true, %7 ], [ %16, %12 ]
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %300

20:                                               ; preds = %17
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = call i32 @consume_from_fifos(%struct.TYPE_7__* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %301

27:                                               ; preds = %20
  %28 = load i64, i64* @INT64_MAX, align 8
  store i64 %28, i64* %5, align 8
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %66, %27
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %35, label %69

35:                                               ; preds = %29
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %35
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %45
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %5, align 8
  br label %65

65:                                               ; preds = %56, %45, %35
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %4, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %29

69:                                               ; preds = %29
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* @INT64_MAX, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %75 = call i32 @framesync_eof(%struct.TYPE_7__* %74)
  br label %300

76:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %251, %76
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ult i32 %78, %81
  br i1 %82, label %83, label %254

83:                                               ; preds = %77
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %5, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %116, label %94

94:                                               ; preds = %83
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @EXT_INFINITY, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %250

105:                                              ; preds = %94
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @STATE_BOF, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %250

116:                                              ; preds = %105, %83
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = load i32, i32* %4, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 6
  %124 = call i32 @av_frame_free(i32** %123)
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 8
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 4
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = load i32, i32* %4, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 6
  store i32* %132, i32** %139, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 4
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 3
  store i64 %147, i64* %154, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 4
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = load i32, i32* %4, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 8
  store i32* null, i32** %161, align 8
  %162 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = load i32, i32* %4, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  store i64 %162, i64* %169, align 8
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 4
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = load i32, i32* %4, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 7
  store i64 0, i64* %176, align 8
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 4
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = load i32, i32* %4, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 6
  %184 = load i32*, i32** %183, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %188

186:                                              ; preds = %116
  %187 = load i64, i64* @STATE_RUN, align 8
  br label %190

188:                                              ; preds = %116
  %189 = load i64, i64* @STATE_EOF, align 8
  br label %190

190:                                              ; preds = %188, %186
  %191 = phi i64 [ %187, %186 ], [ %189, %188 ]
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 4
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = load i32, i32* %4, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 2
  store i64 %191, i64* %198, align 8
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 4
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = load i32, i32* %4, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 4
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = icmp eq i64 %206, %209
  br i1 %210, label %211, label %224

211:                                              ; preds = %190
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 4
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %213, align 8
  %215 = load i32, i32* %4, align 4
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 6
  %219 = load i32*, i32** %218, align 8
  %220 = icmp ne i32* %219, null
  br i1 %220, label %221, label %224

221:                                              ; preds = %211
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 0
  store i32 1, i32* %223, align 8
  br label %224

224:                                              ; preds = %221, %211, %190
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 4
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %226, align 8
  %228 = load i32, i32* %4, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @STATE_EOF, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %249

235:                                              ; preds = %224
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 4
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %237, align 8
  %239 = load i32, i32* %4, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 5
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @EXT_STOP, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %235
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %248 = call i32 @framesync_eof(%struct.TYPE_7__* %247)
  br label %249

249:                                              ; preds = %246, %235, %224
  br label %250

250:                                              ; preds = %249, %105, %94
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %4, align 4
  %253 = add i32 %252, 1
  store i32 %253, i32* %4, align 4
  br label %77

254:                                              ; preds = %77
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %296

259:                                              ; preds = %254
  store i32 0, i32* %4, align 4
  br label %260

260:                                              ; preds = %292, %259
  %261 = load i32, i32* %4, align 4
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = icmp ult i32 %261, %264
  br i1 %265, label %266, label %295

266:                                              ; preds = %260
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 4
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %268, align 8
  %270 = load i32, i32* %4, align 4
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @STATE_BOF, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %291

277:                                              ; preds = %266
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 4
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** %279, align 8
  %281 = load i32, i32* %4, align 4
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @EXT_STOP, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %291

288:                                              ; preds = %277
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 0
  store i32 0, i32* %290, align 8
  br label %291

291:                                              ; preds = %288, %277, %266
  br label %292

292:                                              ; preds = %291
  %293 = load i32, i32* %4, align 4
  %294 = add i32 %293, 1
  store i32 %294, i32* %4, align 4
  br label %260

295:                                              ; preds = %260
  br label %296

296:                                              ; preds = %295, %254
  %297 = load i64, i64* %5, align 8
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 3
  store i64 %297, i64* %299, align 8
  br label %7

300:                                              ; preds = %73, %17
  store i32 0, i32* %2, align 4
  br label %301

301:                                              ; preds = %300, %25
  %302 = load i32, i32* %2, align 4
  ret i32 %302
}

declare dso_local i32 @consume_from_fifos(%struct.TYPE_7__*) #1

declare dso_local i32 @framesync_eof(%struct.TYPE_7__*) #1

declare dso_local i32 @av_frame_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
