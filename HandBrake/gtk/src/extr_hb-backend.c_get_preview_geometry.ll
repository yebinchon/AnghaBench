; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_get_preview_geometry.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_get_preview_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i64, i32, i32*, %struct.TYPE_14__, i64, i64, i64, i32 }
%struct.TYPE_14__ = type { i8*, i8*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, i8* }

@.str = private unnamed_addr constant [11 x i8] c"PicturePAR\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"PictureKeepRatio\00", align 1
@HB_ANAMORPHIC_STRICT = common dso_local global i64 0, align 8
@HB_ANAMORPHIC_LOOSE = common dso_local global i64 0, align 8
@HB_KEEP_DISPLAY_ASPECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"PictureModulus\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"PictureTopCrop\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"PictureBottomCrop\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"PictureLeftCrop\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"PictureRightCrop\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"scale_width\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"scale_height\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"PicturePARWidth\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"PicturePARHeight\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"preview_show_crop\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_18__*)* @get_preview_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_preview_geometry(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, %struct.TYPE_17__* %2, %struct.TYPE_18__* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %8, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @ghb_settings_combo_int(i32 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %33 = ptrtoint i8* %32 to i64
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ghb_dict_get_bool(i32 %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %4
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @HB_ANAMORPHIC_STRICT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @HB_ANAMORPHIC_LOOSE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47, %41, %4
  %54 = load i32, i32* @HB_KEEP_DISPLAY_ASPECT, align 4
  br label %56

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32 [ %54, %53 ], [ 0, %55 ]
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 6
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @ghb_settings_combo_int(i32 %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @ghb_dict_get_int(i32 %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  store i32 %73, i32* %77, align 4
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @ghb_dict_get_int(i32 %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32 %82, i32* %86, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @ghb_dict_get_int(i32 %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  store i32 %91, i32* %95, align 4
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @ghb_dict_get_int(i32 %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  store i32 %100, i32* %104, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @ghb_dict_get_int(i32 %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  store i8* %108, i8** %111, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @ghb_dict_get_int(i32 %114, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  store i8* %115, i8** %118, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @ghb_dict_get_int(i32 %121, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  store i8* %122, i8** %126, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @ghb_dict_get_int(i32 %129, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  store i8* %130, i8** %134, align 8
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 5
  store i64 0, i64* %136, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 4
  store i64 0, i64* %138, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @ghb_dict_get_bool(i32 %141, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %245

144:                                              ; preds = %56
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = ptrtoint i8* %148 to i32
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %153, %158
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 3
  %164 = load i32, i32* %163, align 4
  %165 = sub nsw i32 %159, %164
  %166 = sdiv i32 %149, %165
  store i32 %166, i32* %9, align 4
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = ptrtoint i8* %170 to i32
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %175, %180
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = sub nsw i32 %181, %186
  %188 = sdiv i32 %171, %187
  store i32 %188, i32* %10, align 4
  %189 = load i32, i32* %9, align 4
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 3
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %194, %199
  %201 = mul nsw i32 %189, %200
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = sext i32 %201 to i64
  %207 = getelementptr i8, i8* %205, i64 %206
  store i8* %207, i8** %204, align 8
  %208 = load i32, i32* %10, align 4
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 2
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 1
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %213, %218
  %220 = mul nsw i32 %208, %219
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = sext i32 %220 to i64
  %226 = getelementptr i8, i8* %224, i64 %225
  store i8* %226, i8** %223, align 8
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 2
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 0
  store i32 0, i32* %230, align 4
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 2
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 1
  store i32 0, i32* %234, align 4
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 2
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 2
  store i32 0, i32* %238, align 4
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 2
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 3
  store i32 0, i32* %242, align 4
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 1
  store i32 2, i32* %244, align 8
  br label %245

245:                                              ; preds = %144, %56
  ret void
}

declare dso_local i8* @ghb_settings_combo_int(i32, i8*) #1

declare dso_local i64 @ghb_dict_get_bool(i32, i8*) #1

declare dso_local i8* @ghb_dict_get_int(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
