; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_hb_add_internal.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_hb_add_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_19__, %struct.TYPE_18__*, i64, i32* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_22__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"Skipping subtitle scan.  No suitable subtitle tracks.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_21__*, i32*)* @hb_add_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hb_add_internal(i32* %0, %struct.TYPE_21__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [4 x i8], align 1
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = call %struct.TYPE_21__* @calloc(i32 136, i32 1)
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %7, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %16 = call i32 @memcpy(%struct.TYPE_21__* %14, %struct.TYPE_21__* %15, i32 136)
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 16
  store i32* null, i32** %18, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 7
  store i32* null, i32** %20, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 6
  store i32* null, i32** %22, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 4
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 3
  store i32* null, i32** %26, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 5
  store i32* null, i32** %28, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 11
  store i32* null, i32** %32, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 10
  store i32* null, i32** %34, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 12
  store i32* null, i32** %36, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 9
  store i32* null, i32** %40, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 8
  store i32* null, i32** %42, align 8
  %43 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %44 = call i32 @memset(i8* %43, i32 0, i32 4)
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 15
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %142

49:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %74, %49
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 10
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @hb_list_count(i32* %54)
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %50
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 10
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i8* @hb_list_item(i32* %60, i32 %61)
  %63 = bitcast i8* %62 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %63, %struct.TYPE_22__** %8, align 8
  %64 = icmp ne %struct.TYPE_22__* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %57
  %66 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @strncpy(i8* %66, i32 %71, i32 4)
  br label %77

73:                                               ; preds = %57
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %50

77:                                               ; preds = %65, %50
  %78 = call i32* (...) @hb_list_init()
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 12
  store i32* %78, i32** %80, align 8
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %119, %77
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 14
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @hb_list_count(i32* %87)
  %89 = icmp slt i32 %82, %88
  br i1 %89, label %90, label %122

90:                                               ; preds = %81
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 14
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i8* @hb_list_item(i32* %95, i32 %96)
  %98 = bitcast i8* %97 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %98, %struct.TYPE_20__** %9, align 8
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %103 = call i64 @strcmp(i32 %101, i8* %102)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %90
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @hb_subtitle_can_force(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 12
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %116 = call %struct.TYPE_21__* @hb_subtitle_copy(%struct.TYPE_20__* %115)
  %117 = call i32 @hb_list_add(i32* %114, %struct.TYPE_21__* %116)
  br label %118

118:                                              ; preds = %111, %105, %90
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  br label %81

122:                                              ; preds = %81
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 12
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @hb_list_count(i32* %125)
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %138, label %129

129:                                              ; preds = %122
  %130 = load i32, i32* %12, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %141

132:                                              ; preds = %129
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 13
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %132, %122
  %139 = call i32 @hb_log(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %140 = call i32 @hb_job_close(%struct.TYPE_21__** %7)
  br label %264

141:                                              ; preds = %132, %129
  br label %149

142:                                              ; preds = %3
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 12
  %145 = load i32*, i32** %144, align 8
  %146 = call i32* @hb_subtitle_list_copy(i32* %145)
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 12
  store i32* %146, i32** %148, align 8
  br label %149

149:                                              ; preds = %142, %141
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 11
  %152 = load i32*, i32** %151, align 8
  %153 = call i32* @hb_chapter_list_copy(i32* %152)
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 11
  store i32* %153, i32** %155, align 8
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 10
  %158 = load i32*, i32** %157, align 8
  %159 = call i32* @hb_audio_list_copy(i32* %158)
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 10
  store i32* %159, i32** %161, align 8
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 9
  %164 = load i32*, i32** %163, align 8
  %165 = call i32* @hb_attachment_list_copy(i32* %164)
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 9
  store i32* %165, i32** %167, align 8
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 8
  %170 = load i32*, i32** %169, align 8
  %171 = call i32* @hb_metadata_copy(i32* %170)
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 8
  store i32* %171, i32** %173, align 8
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 7
  %176 = load i32*, i32** %175, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %186

178:                                              ; preds = %149
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 7
  %181 = load i32*, i32** %180, align 8
  %182 = call i8* @strdup(i32* %181)
  %183 = bitcast i8* %182 to i32*
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 7
  store i32* %183, i32** %185, align 8
  br label %186

186:                                              ; preds = %178, %149
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 6
  %189 = load i32*, i32** %188, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %199

191:                                              ; preds = %186
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 6
  %194 = load i32*, i32** %193, align 8
  %195 = call i8* @strdup(i32* %194)
  %196 = bitcast i8* %195 to i32*
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 6
  store i32* %196, i32** %198, align 8
  br label %199

199:                                              ; preds = %191, %186
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 5
  %202 = load i32*, i32** %201, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %204, label %212

204:                                              ; preds = %199
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 5
  %207 = load i32*, i32** %206, align 8
  %208 = call i8* @strdup(i32* %207)
  %209 = bitcast i8* %208 to i32*
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 5
  store i32* %209, i32** %211, align 8
  br label %212

212:                                              ; preds = %204, %199
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 4
  %215 = load i32*, i32** %214, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %225

217:                                              ; preds = %212
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 4
  %220 = load i32*, i32** %219, align 8
  %221 = call i8* @strdup(i32* %220)
  %222 = bitcast i8* %221 to i32*
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 4
  store i32* %222, i32** %224, align 8
  br label %225

225:                                              ; preds = %217, %212
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 3
  %228 = load i32*, i32** %227, align 8
  %229 = icmp ne i32* %228, null
  br i1 %229, label %230, label %238

230:                                              ; preds = %225
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 3
  %233 = load i32*, i32** %232, align 8
  %234 = call i8* @strdup(i32* %233)
  %235 = bitcast i8* %234 to i32*
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 3
  store i32* %235, i32** %237, align 8
  br label %238

238:                                              ; preds = %230, %225
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 2
  %241 = load i32*, i32** %240, align 8
  %242 = icmp ne i32* %241, null
  br i1 %242, label %243, label %251

243:                                              ; preds = %238
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 2
  %246 = load i32*, i32** %245, align 8
  %247 = call i8* @strdup(i32* %246)
  %248 = bitcast i8* %247 to i32*
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 2
  store i32* %248, i32** %250, align 8
  br label %251

251:                                              ; preds = %243, %238
  %252 = load i32*, i32** %4, align 8
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 1
  store i32* %252, i32** %254, align 8
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = call i32* @hb_filter_list_copy(i32* %257)
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i32 0, i32 0
  store i32* %258, i32** %260, align 8
  %261 = load i32*, i32** %6, align 8
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %263 = call i32 @hb_list_add(i32* %261, %struct.TYPE_21__* %262)
  br label %264

264:                                              ; preds = %251, %138
  ret void
}

declare dso_local %struct.TYPE_21__* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_21__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @hb_list_count(i32*) #1

declare dso_local i8* @hb_list_item(i32*, i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32* @hb_list_init(...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @hb_subtitle_can_force(i32) #1

declare dso_local i32 @hb_list_add(i32*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @hb_subtitle_copy(%struct.TYPE_20__*) #1

declare dso_local i32 @hb_log(i8*) #1

declare dso_local i32 @hb_job_close(%struct.TYPE_21__**) #1

declare dso_local i32* @hb_subtitle_list_copy(i32*) #1

declare dso_local i32* @hb_chapter_list_copy(i32*) #1

declare dso_local i32* @hb_audio_list_copy(i32*) #1

declare dso_local i32* @hb_attachment_list_copy(i32*) #1

declare dso_local i32* @hb_metadata_copy(i32*) #1

declare dso_local i8* @strdup(i32*) #1

declare dso_local i32* @hb_filter_list_copy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
