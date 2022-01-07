; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_preset_apply_title.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_preset.c_hb_preset_apply_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32*, i32, i64, i32, i32, %struct.TYPE_11__, i8*, i8* }

@.str = private unnamed_addr constant [15 x i8] c"ChapterMarkers\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Destination\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Filters\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"FilterList\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"PictureAutoCrop\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"PictureTopCrop\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"PictureBottomCrop\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"PictureLeftCrop\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"PictureRightCrop\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"PictureModulus\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"PictureLooseCrop\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"PicturePAR\00", align 1
@HB_VALUE_TYPE_STRING = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@HB_ANAMORPHIC_NONE = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@HB_ANAMORPHIC_STRICT = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"custom\00", align 1
@HB_ANAMORPHIC_CUSTOM = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@HB_ANAMORPHIC_AUTO = common dso_local global i64 0, align 8
@HB_ANAMORPHIC_LOOSE = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [17 x i8] c"PictureKeepRatio\00", align 1
@HB_KEEP_DISPLAY_ASPECT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"PictureItuPAR\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"PictureWidth\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"PictureHeight\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"PictureForceWidth\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"PictureForceHeight\00", align 1
@HB_KEEP_WIDTH = common dso_local global i32 0, align 4
@HB_KEEP_HEIGHT = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [16 x i8] c"PictureDARWidth\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"PicturePARWidth\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"PicturePARHeight\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"PAR\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"Num\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"Den\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"crop-top\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"crop-bottom\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"crop-left\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"crop-right\00", align 1
@HB_FILTER_CROP_SCALE = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [58 x i8] c"hb_preset_apply_title: Internal error, invalid CROP_SCALE\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"Settings\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_preset_apply_title(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_11__, align 4
  %16 = alloca %struct.TYPE_11__, align 4
  %17 = alloca %struct.TYPE_12__, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.TYPE_10__* @hb_find_title_by_index(i32* %33, i32 %34)
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %10, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %37 = icmp eq %struct.TYPE_10__* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %483

39:                                               ; preds = %4
  %40 = load i32*, i32** %8, align 8
  %41 = call i8* @hb_dict_get(i32* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 @hb_value_get_bool(i8* %41)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @hb_list_count(i32 %45)
  %47 = icmp sle i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %48, %39
  %50 = load i32*, i32** %9, align 8
  %51 = call i8* @hb_dict_get(i32* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %52 = bitcast i8* %51 to i32*
  store i32* %52, i32** %12, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32* @hb_value_bool(i32 %54)
  %56 = call i32 @hb_dict_set(i32* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %55)
  %57 = load i32*, i32** %9, align 8
  %58 = call i8* @hb_dict_get(i32* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %59 = bitcast i8* %58 to i32*
  store i32* %59, i32** %13, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = call i8* @hb_dict_get(i32* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %62 = bitcast i8* %61 to i32*
  store i32* %62, i32** %14, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = bitcast %struct.TYPE_11__* %15 to i8*
  %66 = bitcast %struct.TYPE_11__* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 16, i1 false)
  %67 = load i32*, i32** %8, align 8
  %68 = call i8* @hb_dict_get(i32* %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %69 = call i32 @hb_value_get_bool(i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %100, label %71

71:                                               ; preds = %49
  %72 = load i32*, i32** %8, align 8
  %73 = call i8* @hb_dict_get(i32* %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %74 = call i8* @hb_value_get_int(i8* %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %75, i32* %78, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = call i8* @hb_dict_get(i32* %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %81 = call i8* @hb_value_get_int(i8* %80)
  %82 = ptrtoint i8* %81 to i32
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  store i32 %82, i32* %85, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = call i8* @hb_dict_get(i32* %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %88 = call i8* @hb_value_get_int(i8* %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  store i32 %89, i32* %92, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = call i8* @hb_dict_get(i32* %93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %95 = call i8* @hb_value_get_int(i8* %94)
  %96 = ptrtoint i8* %95 to i32
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  store i32 %96, i32* %99, align 4
  br label %107

100:                                              ; preds = %49
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @memcpy(i32* %102, i32 %105, i32 8)
  br label %107

107:                                              ; preds = %100, %71
  %108 = load i32*, i32** %8, align 8
  %109 = call i8* @hb_dict_get(i32* %108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %110 = call i8* @hb_value_get_int(i8* %109)
  %111 = ptrtoint i8* %110 to i32
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  store i32 %111, i32* %112, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %114, 2
  br i1 %115, label %116, label %118

116:                                              ; preds = %107
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  store i32 2, i32* %117, align 8
  br label %118

118:                                              ; preds = %116, %107
  %119 = load i32*, i32** %8, align 8
  %120 = call i8* @hb_dict_get(i32* %119, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %121 = call i32 @hb_value_get_bool(i8* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %200

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 %125, %129
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 3
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %130, %134
  store i32 %135, i32* %21, align 4
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %137, %141
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %142, %146
  store i32 %147, i32* %22, align 4
  %148 = load i32, i32* %21, align 4
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @MULTIPLE_MOD_DOWN(i32 %148, i32 %150)
  store i32 %151, i32* %23, align 4
  %152 = load i32, i32* %22, align 4
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @MULTIPLE_MOD_DOWN(i32 %152, i32 %154)
  store i32 %155, i32* %24, align 4
  %156 = load i32, i32* %22, align 4
  %157 = load i32, i32* %24, align 4
  %158 = sub nsw i32 %156, %157
  %159 = sdiv i32 %158, 2
  %160 = call i32 @EVEN(i32 %159)
  store i32 %160, i32* %19, align 4
  %161 = load i32, i32* %22, align 4
  %162 = load i32, i32* %24, align 4
  %163 = sub nsw i32 %161, %162
  %164 = load i32, i32* %19, align 4
  %165 = sub nsw i32 %163, %164
  store i32 %165, i32* %20, align 4
  %166 = load i32, i32* %19, align 4
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, %166
  store i32 %171, i32* %169, align 4
  %172 = load i32, i32* %20, align 4
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, %172
  store i32 %177, i32* %175, align 4
  %178 = load i32, i32* %21, align 4
  %179 = load i32, i32* %23, align 4
  %180 = sub nsw i32 %178, %179
  %181 = sdiv i32 %180, 2
  %182 = call i32 @EVEN(i32 %181)
  store i32 %182, i32* %19, align 4
  %183 = load i32, i32* %21, align 4
  %184 = load i32, i32* %23, align 4
  %185 = sub nsw i32 %183, %184
  %186 = load i32, i32* %19, align 4
  %187 = sub nsw i32 %185, %186
  store i32 %187, i32* %20, align 4
  %188 = load i32, i32* %19, align 4
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 2
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, %188
  store i32 %193, i32* %191, align 4
  %194 = load i32, i32* %20, align 4
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 3
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, %194
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %123, %118
  %201 = load i32*, i32** %8, align 8
  %202 = call i8* @hb_dict_get(i32* %201, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %203 = bitcast i8* %202 to i32*
  store i32* %203, i32** %25, align 8
  %204 = load i32*, i32** %25, align 8
  %205 = call i64 @hb_value_type(i32* %204)
  %206 = load i64, i64* @HB_VALUE_TYPE_STRING, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %245

208:                                              ; preds = %200
  %209 = load i32*, i32** %25, align 8
  %210 = call i8* @hb_value_get_string(i32* %209)
  store i8* %210, i8** %26, align 8
  %211 = load i8*, i8** %26, align 8
  %212 = call i32 @strcasecmp(i8* %211, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %208
  %215 = load i64, i64* @HB_ANAMORPHIC_NONE, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  store i64 %215, i64* %216, align 8
  br label %244

217:                                              ; preds = %208
  %218 = load i8*, i8** %26, align 8
  %219 = call i32 @strcasecmp(i8* %218, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %217
  %222 = load i64, i64* @HB_ANAMORPHIC_STRICT, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  store i64 %222, i64* %223, align 8
  br label %243

224:                                              ; preds = %217
  %225 = load i8*, i8** %26, align 8
  %226 = call i32 @strcasecmp(i8* %225, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %224
  %229 = load i64, i64* @HB_ANAMORPHIC_CUSTOM, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  store i64 %229, i64* %230, align 8
  br label %242

231:                                              ; preds = %224
  %232 = load i8*, i8** %26, align 8
  %233 = call i32 @strcasecmp(i8* %232, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %231
  %236 = load i64, i64* @HB_ANAMORPHIC_AUTO, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  store i64 %236, i64* %237, align 8
  br label %241

238:                                              ; preds = %231
  %239 = load i64, i64* @HB_ANAMORPHIC_LOOSE, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  store i64 %239, i64* %240, align 8
  br label %241

241:                                              ; preds = %238, %235
  br label %242

242:                                              ; preds = %241, %228
  br label %243

243:                                              ; preds = %242, %221
  br label %244

244:                                              ; preds = %243, %214
  br label %251

245:                                              ; preds = %200
  %246 = load i32*, i32** %8, align 8
  %247 = call i8* @hb_dict_get(i32* %246, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %248 = call i8* @hb_value_get_int(i8* %247)
  %249 = ptrtoint i8* %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  store i64 %249, i64* %250, align 8
  br label %251

251:                                              ; preds = %245, %244
  %252 = load i32*, i32** %8, align 8
  %253 = call i8* @hb_dict_get(i32* %252, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %254 = call i32 @hb_value_get_bool(i8* %253)
  store i32 %254, i32* %18, align 4
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @HB_ANAMORPHIC_STRICT, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %269, label %259

259:                                              ; preds = %251
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @HB_ANAMORPHIC_LOOSE, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %269, label %264

264:                                              ; preds = %259
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @HB_ANAMORPHIC_AUTO, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %264, %259, %251
  store i32 1, i32* %18, align 4
  br label %270

270:                                              ; preds = %269, %264
  %271 = load i32, i32* %18, align 4
  %272 = load i32, i32* @HB_KEEP_DISPLAY_ASPECT, align 4
  %273 = mul nsw i32 %271, %272
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  store i32 %273, i32* %274, align 8
  %275 = load i32*, i32** %8, align 8
  %276 = call i8* @hb_dict_get(i32* %275, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  %277 = call i32 @hb_value_get_bool(i8* %276)
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 4
  store i32 %277, i32* %278, align 4
  %279 = load i32*, i32** %8, align 8
  %280 = call i8* @hb_dict_get(i32* %279, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %281 = call i8* @hb_value_get_int(i8* %280)
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 7
  store i8* %281, i8** %282, align 8
  %283 = load i32*, i32** %8, align 8
  %284 = call i8* @hb_dict_get(i32* %283, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0))
  %285 = call i8* @hb_value_get_int(i8* %284)
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 6
  store i8* %285, i8** %286, align 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 5
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 0
  %290 = bitcast %struct.TYPE_11__* %287 to i8*
  %291 = bitcast %struct.TYPE_11__* %289 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %290, i8* align 4 %291, i64 16, i1 false)
  %292 = load i32*, i32** %8, align 8
  %293 = call i8* @hb_dict_get(i32* %292, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0))
  %294 = call i8* @hb_value_get_int(i8* %293)
  %295 = ptrtoint i8* %294 to i32
  store i32 %295, i32* %27, align 4
  %296 = load i32*, i32** %8, align 8
  %297 = call i8* @hb_dict_get(i32* %296, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  %298 = call i8* @hb_value_get_int(i8* %297)
  %299 = ptrtoint i8* %298 to i32
  store i32 %299, i32* %28, align 4
  %300 = load i32, i32* %27, align 4
  %301 = icmp sgt i32 %300, 0
  br i1 %301, label %302, label %310

302:                                              ; preds = %270
  %303 = load i32, i32* %27, align 4
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 5
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 0
  store i32 %303, i32* %305, align 8
  %306 = load i32, i32* @HB_KEEP_WIDTH, align 4
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  %308 = load i32, i32* %307, align 8
  %309 = or i32 %308, %306
  store i32 %309, i32* %307, align 8
  br label %324

310:                                              ; preds = %270
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 2
  %314 = load i32, i32* %313, align 4
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 3
  %318 = load i32, i32* %317, align 4
  %319 = add nsw i32 %314, %318
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 5
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = sub nsw i32 %322, %319
  store i32 %323, i32* %321, align 8
  br label %324

324:                                              ; preds = %310, %302
  %325 = load i32, i32* %28, align 4
  %326 = icmp sgt i32 %325, 0
  br i1 %326, label %327, label %335

327:                                              ; preds = %324
  %328 = load i32, i32* %28, align 4
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 5
  %330 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %329, i32 0, i32 1
  store i32 %328, i32* %330, align 4
  %331 = load i32, i32* @HB_KEEP_HEIGHT, align 4
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 3
  %333 = load i32, i32* %332, align 8
  %334 = or i32 %333, %331
  store i32 %334, i32* %332, align 8
  br label %349

335:                                              ; preds = %324
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 0
  %339 = load i32, i32* %338, align 4
  %340 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %341 = load i32*, i32** %340, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 1
  %343 = load i32, i32* %342, align 4
  %344 = add nsw i32 %339, %343
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 5
  %346 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = sub nsw i32 %347, %344
  store i32 %348, i32* %346, align 4
  br label %349

349:                                              ; preds = %335, %327
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* @HB_ANAMORPHIC_CUSTOM, align 8
  %353 = icmp eq i64 %351, %352
  br i1 %353, label %354, label %391

354:                                              ; preds = %349
  %355 = load i32, i32* %18, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %391, label %357

357:                                              ; preds = %354
  %358 = load i32*, i32** %8, align 8
  %359 = call i8* @hb_dict_get(i32* %358, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0))
  %360 = call i8* @hb_value_get_int(i8* %359)
  %361 = ptrtoint i8* %360 to i32
  store i32 %361, i32* %29, align 4
  %362 = load i32, i32* %29, align 4
  %363 = icmp sgt i32 %362, 0
  br i1 %363, label %364, label %375

364:                                              ; preds = %357
  %365 = load i32, i32* %29, align 4
  %366 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 5
  %367 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %366, i32 0, i32 2
  %368 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %367, i32 0, i32 0
  store i32 %365, i32* %368, align 8
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 5
  %370 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 5
  %373 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %372, i32 0, i32 2
  %374 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %373, i32 0, i32 1
  store i32 %371, i32* %374, align 4
  br label %390

375:                                              ; preds = %357
  %376 = load i32*, i32** %8, align 8
  %377 = call i8* @hb_dict_get(i32* %376, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0))
  %378 = call i8* @hb_value_get_int(i8* %377)
  %379 = ptrtoint i8* %378 to i32
  %380 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 5
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i32 0, i32 2
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %381, i32 0, i32 0
  store i32 %379, i32* %382, align 8
  %383 = load i32*, i32** %8, align 8
  %384 = call i8* @hb_dict_get(i32* %383, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0))
  %385 = call i8* @hb_value_get_int(i8* %384)
  %386 = ptrtoint i8* %385 to i32
  %387 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 5
  %388 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %387, i32 0, i32 2
  %389 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %388, i32 0, i32 1
  store i32 %386, i32* %389, align 4
  br label %390

390:                                              ; preds = %375, %364
  br label %391

391:                                              ; preds = %390, %354, %349
  %392 = call i32 @hb_set_anamorphic_size2(%struct.TYPE_11__* %15, %struct.TYPE_12__* %17, %struct.TYPE_11__* %16)
  %393 = load i32*, i32** %9, align 8
  %394 = call i8* @hb_dict_get(i32* %393, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0))
  %395 = bitcast i8* %394 to i32*
  store i32* %395, i32** %30, align 8
  %396 = load i32*, i32** %30, align 8
  %397 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %398 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 4
  %400 = call i32* @hb_value_int(i32 %399)
  %401 = call i32 @hb_dict_set(i32* %396, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i32* %400)
  %402 = load i32*, i32** %30, align 8
  %403 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %404 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = call i32* @hb_value_int(i32 %405)
  %407 = call i32 @hb_dict_set(i32* %402, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i32* %406)
  store i32* null, i32** %30, align 8
  %408 = call i32* (...) @hb_dict_init()
  store i32* %408, i32** %32, align 8
  %409 = load i32*, i32** %32, align 8
  %410 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %411 = load i32, i32* %410, align 4
  %412 = call i32* @hb_value_int(i32 %411)
  %413 = call i32 @hb_dict_set(i32* %409, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i32* %412)
  %414 = load i32*, i32** %32, align 8
  %415 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %416 = load i32, i32* %415, align 4
  %417 = call i32* @hb_value_int(i32 %416)
  %418 = call i32 @hb_dict_set(i32* %414, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i32* %417)
  %419 = load i32*, i32** %32, align 8
  %420 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %421 = load i32*, i32** %420, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 0
  %423 = load i32, i32* %422, align 4
  %424 = call i32* @hb_value_int(i32 %423)
  %425 = call i32 @hb_dict_set(i32* %419, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), i32* %424)
  %426 = load i32*, i32** %32, align 8
  %427 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %428 = load i32*, i32** %427, align 8
  %429 = getelementptr inbounds i32, i32* %428, i64 1
  %430 = load i32, i32* %429, align 4
  %431 = call i32* @hb_value_int(i32 %430)
  %432 = call i32 @hb_dict_set(i32* %426, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i32* %431)
  %433 = load i32*, i32** %32, align 8
  %434 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %435 = load i32*, i32** %434, align 8
  %436 = getelementptr inbounds i32, i32* %435, i64 2
  %437 = load i32, i32* %436, align 4
  %438 = call i32* @hb_value_int(i32 %437)
  %439 = call i32 @hb_dict_set(i32* %433, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i32* %438)
  %440 = load i32*, i32** %32, align 8
  %441 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %442 = load i32*, i32** %441, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 3
  %444 = load i32, i32* %443, align 4
  %445 = call i32* @hb_value_int(i32 %444)
  %446 = call i32 @hb_dict_set(i32* %440, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i32* %445)
  %447 = load i32, i32* @HB_FILTER_CROP_SCALE, align 4
  %448 = load i32*, i32** %32, align 8
  %449 = call i64 @hb_validate_filter_settings(i32 %447, i32* %448)
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %454

451:                                              ; preds = %391
  %452 = call i32 @hb_error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.34, i64 0, i64 0))
  %453 = call i32 @hb_value_free(i32** %32)
  br label %482

454:                                              ; preds = %391
  %455 = call i32* (...) @hb_dict_init()
  store i32* %455, i32** %31, align 8
  %456 = load i32*, i32** %31, align 8
  %457 = load i32, i32* @HB_FILTER_CROP_SCALE, align 4
  %458 = call i32* @hb_value_int(i32 %457)
  %459 = call i32 @hb_dict_set(i32* %456, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), i32* %458)
  %460 = load i32*, i32** %31, align 8
  %461 = load i32*, i32** %32, align 8
  %462 = call i32 @hb_dict_set(i32* %460, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0), i32* %461)
  %463 = load i32*, i32** %14, align 8
  %464 = load i32*, i32** %31, align 8
  %465 = call i32 @hb_add_filter2(i32* %463, i32* %464)
  %466 = load i32*, i32** %6, align 8
  %467 = load i32, i32* %7, align 4
  %468 = load i32*, i32** %8, align 8
  %469 = load i32*, i32** %9, align 8
  %470 = call i64 @hb_preset_job_add_audio(i32* %466, i32 %467, i32* %468, i32* %469)
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %472, label %473

472:                                              ; preds = %454
  br label %482

473:                                              ; preds = %454
  %474 = load i32*, i32** %6, align 8
  %475 = load i32, i32* %7, align 4
  %476 = load i32*, i32** %8, align 8
  %477 = load i32*, i32** %9, align 8
  %478 = call i64 @hb_preset_job_add_subtitles(i32* %474, i32 %475, i32* %476, i32* %477)
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %481

480:                                              ; preds = %473
  br label %482

481:                                              ; preds = %473
  store i32 0, i32* %5, align 4
  br label %483

482:                                              ; preds = %480, %472, %451
  store i32 -1, i32* %5, align 4
  br label %483

483:                                              ; preds = %482, %481, %38
  %484 = load i32, i32* %5, align 4
  ret i32 %484
}

declare dso_local %struct.TYPE_10__* @hb_find_title_by_index(i32*, i32) #1

declare dso_local i32 @hb_value_get_bool(i8*) #1

declare dso_local i8* @hb_dict_get(i32*, i8*) #1

declare dso_local i32 @hb_list_count(i32) #1

declare dso_local i32 @hb_dict_set(i32*, i8*, i32*) #1

declare dso_local i32* @hb_value_bool(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @hb_value_get_int(i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @MULTIPLE_MOD_DOWN(i32, i32) #1

declare dso_local i32 @EVEN(i32) #1

declare dso_local i64 @hb_value_type(i32*) #1

declare dso_local i8* @hb_value_get_string(i32*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @hb_set_anamorphic_size2(%struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32* @hb_value_int(i32) #1

declare dso_local i32* @hb_dict_init(...) #1

declare dso_local i64 @hb_validate_filter_settings(i32, i32*) #1

declare dso_local i32 @hb_error(i8*) #1

declare dso_local i32 @hb_value_free(i32**) #1

declare dso_local i32 @hb_add_filter2(i32*, i32*) #1

declare dso_local i64 @hb_preset_job_add_audio(i32*, i32, i32*, i32*) #1

declare dso_local i64 @hb_preset_job_add_subtitles(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
