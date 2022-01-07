; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_work.c_sanitize_subtitles.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_work.c_sanitize_subtitles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, i32, i64, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i64, i64, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i64, i64, i64 }

@HB_PASS_ENCODE = common dso_local global i64 0, align 8
@HB_PASS_ENCODE_2ND = common dso_local global i64 0, align 8
@RENDERSUB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"More than one subtitle burn-in requested, dropping track %d.\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"More than one subtitle burn-in requested.  Changing track %d to soft subtitle.\00", align 1
@PASSTHRUSUB = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [101 x i8] c"Subtitle burn-in requested and input track can not be rendered.  Changing track %d to soft subtitle.\00", align 1
@.str.3 = private unnamed_addr constant [121 x i8] c"Subtitle pass-thru requested and input track is not compatible with container.  Changing track %d to burned-in subtitle.\00", align 1
@.str.4 = private unnamed_addr constant [125 x i8] c"Subtitle pass-thru requested and input track is not compatible with container.  One track already burned, dropping track %d.\00", align 1
@HB_FILTER_RENDER_SUB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @sanitize_subtitles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sanitize_subtitles(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.TYPE_19__* @hb_interjob_get(i32 %11)
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %6, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %281

18:                                               ; preds = %1
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %22 = icmp ne %struct.TYPE_20__* %21, null
  br i1 %22, label %23, label %160

23:                                               ; preds = %18
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %23
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %38, %31, %23
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %118, %110, %44
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @hb_list_count(i32 %49)
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %124

52:                                               ; preds = %45
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call %struct.TYPE_17__* @hb_list_item(i32 %55, i32 %56)
  store %struct.TYPE_17__* %57, %struct.TYPE_17__** %7, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %118

67:                                               ; preds = %52
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %110, label %80

80:                                               ; preds = %73, %67
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %84, %90
  br i1 %91, label %110, label %92

92:                                               ; preds = %80
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %118, label %98

98:                                               ; preds = %92
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %103, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %98, %80, %73
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %115 = call i32 @hb_list_rem(i32 %113, %struct.TYPE_17__* %114)
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %117 = call i32 @free(%struct.TYPE_17__* %116)
  br label %45

118:                                              ; preds = %98, %92, %52
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 8
  br label %45

124:                                              ; preds = %45
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 3
  store i32 1, i32* %128, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @HB_PASS_ENCODE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %140, label %134

134:                                              ; preds = %124
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @HB_PASS_ENCODE_2ND, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %134, %124
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %145, align 8
  %147 = call i32 @hb_list_insert(i32 %143, i32 0, %struct.TYPE_20__* %146)
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %149, align 8
  br label %159

150:                                              ; preds = %134
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %155, align 8
  %157 = call %struct.TYPE_20__* @hb_subtitle_copy(%struct.TYPE_20__* %156)
  %158 = call i32 @hb_list_insert(i32 %153, i32 0, %struct.TYPE_20__* %157)
  br label %159

159:                                              ; preds = %150, %140
  br label %160

160:                                              ; preds = %159, %18
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %266, %255, %192, %160
  %162 = load i32, i32* %4, align 4
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @hb_list_count(i32 %165)
  %167 = icmp slt i32 %162, %166
  br i1 %167, label %168, label %271

168:                                              ; preds = %161
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %4, align 4
  %173 = call %struct.TYPE_17__* @hb_list_item(i32 %171, i32 %172)
  store %struct.TYPE_17__* %173, %struct.TYPE_17__** %7, align 8
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @RENDERSUB, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %226

180:                                              ; preds = %168
  %181 = load i32, i32* %5, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %210

183:                                              ; preds = %180
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @hb_subtitle_can_pass(i32 %186, i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %202, label %192

192:                                              ; preds = %183
  %193 = load i32, i32* %4, align 4
  %194 = call i32 @hb_log(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %193)
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %199 = call i32 @hb_list_rem(i32 %197, %struct.TYPE_17__* %198)
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %201 = call i32 @free(%struct.TYPE_17__* %200)
  br label %161

202:                                              ; preds = %183
  %203 = load i32, i32* %4, align 4
  %204 = call i32 @hb_log(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %203)
  %205 = load i64, i64* @PASSTHRUSUB, align 8
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 1
  store i64 %205, i64* %208, align 8
  br label %209

209:                                              ; preds = %202
  br label %225

210:                                              ; preds = %180
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @hb_subtitle_can_burn(i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %223, label %216

216:                                              ; preds = %210
  %217 = load i32, i32* %4, align 4
  %218 = call i32 @hb_log(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.2, i64 0, i64 0), i32 %217)
  %219 = load i64, i64* @PASSTHRUSUB, align 8
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 1
  store i64 %219, i64* %222, align 8
  br label %224

223:                                              ; preds = %210
  store i32 1, i32* %5, align 4
  br label %224

224:                                              ; preds = %223, %216
  br label %225

225:                                              ; preds = %224, %209
  br label %226

226:                                              ; preds = %225, %168
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @PASSTHRUSUB, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %266

233:                                              ; preds = %226
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @hb_subtitle_can_pass(i32 %236, i32 %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %266, label %242

242:                                              ; preds = %233
  %243 = load i32, i32* %5, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %255, label %245

245:                                              ; preds = %242
  %246 = load i32, i32* %4, align 4
  %247 = call i32 @hb_log(i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.3, i64 0, i64 0), i32 %246)
  %248 = load i64, i64* @RENDERSUB, align 8
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 1
  store i64 %248, i64* %251, align 8
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 2
  store i64 0, i64* %254, align 8
  store i32 1, i32* %5, align 4
  br label %265

255:                                              ; preds = %242
  %256 = load i32, i32* %4, align 4
  %257 = call i32 @hb_log(i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.4, i64 0, i64 0), i32 %256)
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %262 = call i32 @hb_list_rem(i32 %260, %struct.TYPE_17__* %261)
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %264 = call i32 @free(%struct.TYPE_17__* %263)
  br label %161

265:                                              ; preds = %245
  br label %266

266:                                              ; preds = %265, %233, %226
  %267 = load i32, i32* %4, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %4, align 4
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 1
  store i32 %268, i32* %270, align 8
  br label %161

271:                                              ; preds = %161
  %272 = load i32, i32* %5, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %271
  %275 = load i32, i32* @HB_FILTER_RENDER_SUB, align 4
  %276 = call i32* @hb_filter_init(i32 %275)
  store i32* %276, i32** %8, align 8
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %278 = load i32*, i32** %8, align 8
  %279 = call i32 @hb_add_filter_dict(%struct.TYPE_18__* %277, i32* %278, i32* null)
  br label %280

280:                                              ; preds = %274, %271
  store i32 0, i32* %2, align 4
  br label %281

281:                                              ; preds = %280, %17
  %282 = load i32, i32* %2, align 4
  ret i32 %282
}

declare dso_local %struct.TYPE_19__* @hb_interjob_get(i32) #1

declare dso_local i32 @hb_list_count(i32) #1

declare dso_local %struct.TYPE_17__* @hb_list_item(i32, i32) #1

declare dso_local i32 @hb_list_rem(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @free(%struct.TYPE_17__*) #1

declare dso_local i32 @hb_list_insert(i32, i32, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @hb_subtitle_copy(%struct.TYPE_20__*) #1

declare dso_local i32 @hb_subtitle_can_pass(i32, i32) #1

declare dso_local i32 @hb_log(i8*, i32) #1

declare dso_local i32 @hb_subtitle_can_burn(i32) #1

declare dso_local i32* @hb_filter_init(i32) #1

declare dso_local i32 @hb_add_filter_dict(%struct.TYPE_18__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
