; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_hb_detelecine_work.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_hb_detelecine_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_14__, i64, %struct.pullup_context* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.pullup_context = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__, %struct.TYPE_15__*, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }
%struct.pullup_buffer = type { i32*, i32* }
%struct.pullup_frame = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32*, i32* }

@HB_BUF_FLAG_EOF = common dso_local global i32 0, align 4
@HB_FILTER_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Could not get buffer from pullup!\00", align 1
@HB_FILTER_FAILED = common dso_local global i32 0, align 4
@PIC_FLAG_TOP_FIELD_FIRST = common dso_local global i32 0, align 4
@PIC_FLAG_REPEAT_FIRST_FIELD = common dso_local global i32 0, align 4
@HB_FILTER_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_20__**, %struct.TYPE_20__**)* @hb_detelecine_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hb_detelecine_work(%struct.TYPE_19__* %0, %struct.TYPE_20__** %1, %struct.TYPE_20__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__**, align 8
  %7 = alloca %struct.TYPE_20__**, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.pullup_context*, align 8
  %12 = alloca %struct.pullup_buffer*, align 8
  %13 = alloca %struct.pullup_frame*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_20__** %1, %struct.TYPE_20__*** %6, align 8
  store %struct.TYPE_20__** %2, %struct.TYPE_20__*** %7, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %8, align 8
  %18 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %6, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %9, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @HB_BUF_FLAG_EOF, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %29 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %7, align 8
  store %struct.TYPE_20__* %28, %struct.TYPE_20__** %29, align 8
  %30 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %6, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %30, align 8
  %31 = load i32, i32* @HB_FILTER_DONE, align 4
  store i32 %31, i32* %4, align 4
  br label %336

32:                                               ; preds = %3
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 2
  %35 = load %struct.pullup_context*, %struct.pullup_context** %34, align 8
  store %struct.pullup_context* %35, %struct.pullup_context** %11, align 8
  %36 = load %struct.pullup_context*, %struct.pullup_context** %11, align 8
  %37 = call %struct.pullup_buffer* @pullup_get_buffer(%struct.pullup_context* %36, i32 2)
  store %struct.pullup_buffer* %37, %struct.pullup_buffer** %12, align 8
  %38 = load %struct.pullup_buffer*, %struct.pullup_buffer** %12, align 8
  %39 = icmp ne %struct.pullup_buffer* %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %32
  %41 = load %struct.pullup_context*, %struct.pullup_context** %11, align 8
  %42 = call %struct.pullup_frame* @pullup_get_frame(%struct.pullup_context* %41)
  store %struct.pullup_frame* %42, %struct.pullup_frame** %13, align 8
  %43 = load %struct.pullup_frame*, %struct.pullup_frame** %13, align 8
  %44 = call i32 @pullup_release_frame(%struct.pullup_frame* %43)
  %45 = call i32 @hb_log(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @HB_FILTER_FAILED, align 4
  store i32 %46, i32* %4, align 4
  br label %336

47:                                               ; preds = %32
  %48 = load %struct.pullup_buffer*, %struct.pullup_buffer** %12, align 8
  %49 = getelementptr inbounds %struct.pullup_buffer, %struct.pullup_buffer* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.pullup_buffer*, %struct.pullup_buffer** %12, align 8
  %60 = getelementptr inbounds %struct.pullup_buffer, %struct.pullup_buffer* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @memcpy(i32 %52, i32 %58, i32 %63)
  %65 = load %struct.pullup_buffer*, %struct.pullup_buffer** %12, align 8
  %66 = getelementptr inbounds %struct.pullup_buffer, %struct.pullup_buffer* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i64 1
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.pullup_buffer*, %struct.pullup_buffer** %12, align 8
  %77 = getelementptr inbounds %struct.pullup_buffer, %struct.pullup_buffer* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @memcpy(i32 %69, i32 %75, i32 %80)
  %82 = load %struct.pullup_buffer*, %struct.pullup_buffer** %12, align 8
  %83 = getelementptr inbounds %struct.pullup_buffer, %struct.pullup_buffer* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i64 2
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.pullup_buffer*, %struct.pullup_buffer** %12, align 8
  %94 = getelementptr inbounds %struct.pullup_buffer, %struct.pullup_buffer* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @memcpy(i32 %86, i32 %92, i32 %97)
  store i32 1, i32* %14, align 4
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @PIC_FLAG_TOP_FIELD_FIRST, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %47
  store i32 0, i32* %14, align 4
  br label %114

107:                                              ; preds = %47
  %108 = load %struct.pullup_context*, %struct.pullup_context** %11, align 8
  %109 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i32 0, i32* %14, align 4
  br label %113

113:                                              ; preds = %112, %107
  br label %114

114:                                              ; preds = %113, %106
  %115 = load %struct.pullup_context*, %struct.pullup_context** %11, align 8
  %116 = getelementptr inbounds %struct.pullup_context, %struct.pullup_context* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store i32 1, i32* %14, align 4
  br label %120

120:                                              ; preds = %119, %114
  %121 = load %struct.pullup_context*, %struct.pullup_context** %11, align 8
  %122 = load %struct.pullup_buffer*, %struct.pullup_buffer** %12, align 8
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @pullup_submit_field(%struct.pullup_context* %121, %struct.pullup_buffer* %122, i32 %123)
  %125 = load %struct.pullup_context*, %struct.pullup_context** %11, align 8
  %126 = load %struct.pullup_buffer*, %struct.pullup_buffer** %12, align 8
  %127 = load i32, i32* %14, align 4
  %128 = xor i32 %127, 1
  %129 = call i32 @pullup_submit_field(%struct.pullup_context* %125, %struct.pullup_buffer* %126, i32 %128)
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @PIC_FLAG_REPEAT_FIRST_FIELD, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %120
  %138 = load %struct.pullup_context*, %struct.pullup_context** %11, align 8
  %139 = load %struct.pullup_buffer*, %struct.pullup_buffer** %12, align 8
  %140 = load i32, i32* %14, align 4
  %141 = call i32 @pullup_submit_field(%struct.pullup_context* %138, %struct.pullup_buffer* %139, i32 %140)
  br label %142

142:                                              ; preds = %137, %120
  %143 = load %struct.pullup_buffer*, %struct.pullup_buffer** %12, align 8
  %144 = call i32 @pullup_release_buffer(%struct.pullup_buffer* %143, i32 2)
  %145 = load %struct.pullup_context*, %struct.pullup_context** %11, align 8
  %146 = call %struct.pullup_frame* @pullup_get_frame(%struct.pullup_context* %145)
  store %struct.pullup_frame* %146, %struct.pullup_frame** %13, align 8
  %147 = load %struct.pullup_frame*, %struct.pullup_frame** %13, align 8
  %148 = icmp ne %struct.pullup_frame* %147, null
  br i1 %148, label %163, label %149

149:                                              ; preds = %142
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %149
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %157, -1
  store i64 %158, i64* %156, align 8
  %159 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %6, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %159, align 8
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %161 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %7, align 8
  store %struct.TYPE_20__* %160, %struct.TYPE_20__** %161, align 8
  br label %332

162:                                              ; preds = %149
  br label %334

163:                                              ; preds = %142
  %164 = load %struct.pullup_frame*, %struct.pullup_frame** %13, align 8
  %165 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp slt i32 %166, 2
  br i1 %167, label %168, label %208

168:                                              ; preds = %163
  %169 = load %struct.pullup_frame*, %struct.pullup_frame** %13, align 8
  %170 = call i32 @pullup_release_frame(%struct.pullup_frame* %169)
  %171 = load %struct.pullup_context*, %struct.pullup_context** %11, align 8
  %172 = call %struct.pullup_frame* @pullup_get_frame(%struct.pullup_context* %171)
  store %struct.pullup_frame* %172, %struct.pullup_frame** %13, align 8
  %173 = load %struct.pullup_frame*, %struct.pullup_frame** %13, align 8
  %174 = icmp ne %struct.pullup_frame* %173, null
  br i1 %174, label %176, label %175

175:                                              ; preds = %168
  br label %334

176:                                              ; preds = %168
  %177 = load %struct.pullup_frame*, %struct.pullup_frame** %13, align 8
  %178 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp slt i32 %179, 2
  br i1 %180, label %181, label %207

181:                                              ; preds = %176
  %182 = load %struct.pullup_frame*, %struct.pullup_frame** %13, align 8
  %183 = call i32 @pullup_release_frame(%struct.pullup_frame* %182)
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @PIC_FLAG_REPEAT_FIRST_FIELD, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %181
  br label %334

192:                                              ; preds = %181
  %193 = load %struct.pullup_context*, %struct.pullup_context** %11, align 8
  %194 = call %struct.pullup_frame* @pullup_get_frame(%struct.pullup_context* %193)
  store %struct.pullup_frame* %194, %struct.pullup_frame** %13, align 8
  %195 = load %struct.pullup_frame*, %struct.pullup_frame** %13, align 8
  %196 = icmp ne %struct.pullup_frame* %195, null
  br i1 %196, label %198, label %197

197:                                              ; preds = %192
  br label %334

198:                                              ; preds = %192
  %199 = load %struct.pullup_frame*, %struct.pullup_frame** %13, align 8
  %200 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp slt i32 %201, 2
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load %struct.pullup_frame*, %struct.pullup_frame** %13, align 8
  %205 = call i32 @pullup_release_frame(%struct.pullup_frame* %204)
  br label %334

206:                                              ; preds = %198
  br label %207

207:                                              ; preds = %206, %176
  br label %208

208:                                              ; preds = %207, %163
  %209 = load %struct.pullup_frame*, %struct.pullup_frame** %13, align 8
  %210 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %209, i32 0, i32 1
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %210, align 8
  %212 = icmp ne %struct.TYPE_16__* %211, null
  br i1 %212, label %217, label %213

213:                                              ; preds = %208
  %214 = load %struct.pullup_context*, %struct.pullup_context** %11, align 8
  %215 = load %struct.pullup_frame*, %struct.pullup_frame** %13, align 8
  %216 = call i32 @pullup_pack_frame(%struct.pullup_context* %214, %struct.pullup_frame* %215)
  br label %217

217:                                              ; preds = %213, %208
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = call %struct.TYPE_20__* @hb_frame_buffer_init(i32 %221, i32 %225, i32 %229)
  store %struct.TYPE_20__* %230, %struct.TYPE_20__** %10, align 8
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 3
  store i32 %234, i32* %237, align 4
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 2
  store i32 %241, i32* %244, align 8
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 1
  store i32 %248, i32* %251, align 4
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 0
  store i32 %255, i32* %258, align 8
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i64 0
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.pullup_frame*, %struct.pullup_frame** %13, align 8
  %266 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %265, i32 0, i32 1
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 0
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.pullup_frame*, %struct.pullup_frame** %13, align 8
  %273 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %272, i32 0, i32 1
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @memcpy(i32 %264, i32 %271, i32 %278)
  %280 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i64 1
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.pullup_frame*, %struct.pullup_frame** %13, align 8
  %287 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %286, i32 0, i32 1
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 1
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 1
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.pullup_frame*, %struct.pullup_frame** %13, align 8
  %294 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %293, i32 0, i32 1
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 1
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @memcpy(i32 %285, i32 %292, i32 %299)
  %301 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %301, i32 0, i32 1
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i64 2
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.pullup_frame*, %struct.pullup_frame** %13, align 8
  %308 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %307, i32 0, i32 1
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 1
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 2
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.pullup_frame*, %struct.pullup_frame** %13, align 8
  %315 = getelementptr inbounds %struct.pullup_frame, %struct.pullup_frame* %314, i32 0, i32 1
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 2
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @memcpy(i32 %306, i32 %313, i32 %320)
  %322 = load %struct.pullup_frame*, %struct.pullup_frame** %13, align 8
  %323 = call i32 @pullup_release_frame(%struct.pullup_frame* %322)
  %324 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %325 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %324, i32 0, i32 0
  %326 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %327 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %326, i32 0, i32 0
  %328 = bitcast %struct.TYPE_17__* %325 to i8*
  %329 = bitcast %struct.TYPE_17__* %327 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %328, i8* align 8 %329, i64 4, i1 false)
  %330 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %331 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %7, align 8
  store %struct.TYPE_20__* %330, %struct.TYPE_20__** %331, align 8
  br label %332

332:                                              ; preds = %217, %154
  %333 = load i32, i32* @HB_FILTER_OK, align 4
  store i32 %333, i32* %4, align 4
  br label %336

334:                                              ; preds = %203, %197, %191, %175, %162
  %335 = load i32, i32* @HB_FILTER_OK, align 4
  store i32 %335, i32* %4, align 4
  br label %336

336:                                              ; preds = %334, %332, %40, %27
  %337 = load i32, i32* %4, align 4
  ret i32 %337
}

declare dso_local %struct.pullup_buffer* @pullup_get_buffer(%struct.pullup_context*, i32) #1

declare dso_local %struct.pullup_frame* @pullup_get_frame(%struct.pullup_context*) #1

declare dso_local i32 @pullup_release_frame(%struct.pullup_frame*) #1

declare dso_local i32 @hb_log(i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @pullup_submit_field(%struct.pullup_context*, %struct.pullup_buffer*, i32) #1

declare dso_local i32 @pullup_release_buffer(%struct.pullup_buffer*, i32) #1

declare dso_local i32 @pullup_pack_frame(%struct.pullup_context*, %struct.pullup_frame*) #1

declare dso_local %struct.TYPE_20__* @hb_frame_buffer_init(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
