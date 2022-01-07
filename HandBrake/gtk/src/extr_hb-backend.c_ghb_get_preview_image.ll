; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_get_preview_image.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_hb-backend.c_ghb_get_preview_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_29__, i32 }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32, i32, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_32__ = type { i32, i32, i32*, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"PictureDeinterlaceFilter\00", align 1
@HB_FILTER_INVALID = common dso_local global i64 0, align 8
@h_scan = common dso_local global i32 0, align 4
@GDK_COLORSPACE_RGB = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"scale_width\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"scale_height\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"PictureTopCrop\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"PictureBottomCrop\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"PictureLeftCrop\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"PictureRightCrop\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"preview_show_crop\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"reduce_hd_preview\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"hb_window\00", align 1
@GDK_INTERP_HYPER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ghb_get_preview_image(%struct.TYPE_31__* %0, i32 %1, %struct.TYPE_30__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_33__, align 4
  %13 = alloca %struct.TYPE_33__, align 4
  %14 = alloca %struct.TYPE_24__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_32__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %41 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %42 = icmp eq %struct.TYPE_31__* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %5
  store i32* null, i32** %6, align 8
  br label %397

44:                                               ; preds = %5
  %45 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @ghb_settings_combo_int(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %49 = load i64, i64* @HB_FILTER_INVALID, align 8
  %50 = icmp ne i64 %48, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %15, align 4
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %53 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %54 = call i32 @get_preview_geometry(%struct.TYPE_30__* %52, %struct.TYPE_31__* %53, %struct.TYPE_33__* %12, %struct.TYPE_24__* %14)
  %55 = call i32 @hb_set_anamorphic_size2(%struct.TYPE_33__* %12, %struct.TYPE_24__* %14, %struct.TYPE_33__* %13)
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %13, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %13, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ghb_par_scale(%struct.TYPE_30__* %56, i32* %58, i32* %60, i32 %63, i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  %74 = load i32, i32* @h_scan, align 4
  %75 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %15, align 4
  %80 = call %struct.TYPE_32__* @hb_get_preview2(i32 %74, i32 %77, i32 %78, %struct.TYPE_24__* %14, i32 %79)
  store %struct.TYPE_32__* %80, %struct.TYPE_32__** %17, align 8
  %81 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %82 = icmp eq %struct.TYPE_32__* %81, null
  br i1 %82, label %83, label %96

83:                                               ; preds = %44
  %84 = load i32, i32* @GDK_COLORSPACE_RGB, align 4
  %85 = load i32, i32* @FALSE, align 4
  %86 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32* @gdk_pixbuf_new(i32 %84, i32 %85, i32 8, i32 %89, i32 %93)
  store i32* %94, i32** %16, align 8
  %95 = load i32*, i32** %16, align 8
  store i32* %95, i32** %6, align 8
  br label %397

96:                                               ; preds = %44
  %97 = load i32, i32* @GDK_COLORSPACE_RGB, align 4
  %98 = load i32, i32* @FALSE, align 4
  %99 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %103 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32* @gdk_pixbuf_new(i32 %97, i32 %98, i32 8, i32 %101, i32 %104)
  store i32* %105, i32** %16, align 8
  %106 = load i32*, i32** %16, align 8
  %107 = call i32* @gdk_pixbuf_get_pixels(i32* %106)
  store i32* %107, i32** %18, align 8
  %108 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  store i32* %110, i32** %19, align 8
  %111 = load i32*, i32** %18, align 8
  store i32* %111, i32** %20, align 8
  %112 = load i32*, i32** %16, align 8
  %113 = call i32 @gdk_pixbuf_get_n_channels(i32* %112)
  store i32 %113, i32* %23, align 4
  %114 = load i32*, i32** %16, align 8
  %115 = call i32 @gdk_pixbuf_get_rowstride(i32* %114)
  store i32 %115, i32* %24, align 4
  store i32 0, i32* %21, align 4
  br label %116

116:                                              ; preds = %173, %96
  %117 = load i32, i32* %21, align 4
  %118 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %176

122:                                              ; preds = %116
  %123 = load i32*, i32** %19, align 8
  store i32* %123, i32** %26, align 8
  %124 = load i32*, i32** %20, align 8
  store i32* %124, i32** %25, align 8
  store i32 0, i32* %22, align 4
  br label %125

125:                                              ; preds = %156, %122
  %126 = load i32, i32* %22, align 4
  %127 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %159

131:                                              ; preds = %125
  %132 = load i32*, i32** %26, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = ashr i32 %134, 16
  %136 = load i32*, i32** %25, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 %135, i32* %137, align 4
  %138 = load i32*, i32** %26, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = ashr i32 %140, 8
  %142 = load i32*, i32** %25, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  store i32 %141, i32* %143, align 4
  %144 = load i32*, i32** %26, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = ashr i32 %146, 0
  %148 = load i32*, i32** %25, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 2
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %23, align 4
  %151 = load i32*, i32** %25, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32* %153, i32** %25, align 8
  %154 = load i32*, i32** %26, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %26, align 8
  br label %156

156:                                              ; preds = %131
  %157 = load i32, i32* %22, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %22, align 4
  br label %125

159:                                              ; preds = %125
  %160 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %161 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i64 0
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %19, align 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  store i32* %168, i32** %19, align 8
  %169 = load i32, i32* %24, align 4
  %170 = load i32*, i32** %20, align 8
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  store i32* %172, i32** %20, align 8
  br label %173

173:                                              ; preds = %159
  %174 = load i32, i32* %21, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %21, align 4
  br label %116

176:                                              ; preds = %116
  %177 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @ghb_dict_get_int(i32 %179, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %181 = load i32*, i32** %10, align 8
  store i32 %180, i32* %181, align 4
  %182 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @ghb_dict_get_int(i32 %184, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %186 = load i32*, i32** %11, align 8
  store i32 %185, i32* %186, align 4
  %187 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %188 = load i32*, i32** %10, align 8
  %189 = load i32*, i32** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %13, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %13, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @ghb_par_scale(%struct.TYPE_30__* %187, i32* %188, i32* %189, i32 %192, i32 %195)
  %197 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @ghb_dict_get_int(i32 %199, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 %200, i32* %27, align 4
  %201 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @ghb_dict_get_int(i32 %203, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 %204, i32* %28, align 4
  %205 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @ghb_dict_get_int(i32 %207, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store i32 %208, i32* %29, align 4
  %209 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @ghb_dict_get_int(i32 %211, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  store i32 %212, i32* %30, align 4
  %213 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i64 @ghb_dict_get_bool(i32 %215, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %235

218:                                              ; preds = %176
  %219 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %220 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = sdiv i32 %221, %225
  store i32 %226, i32* %31, align 4
  %227 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %228 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = sdiv i32 %229, %233
  store i32 %234, i32* %32, align 4
  br label %260

235:                                              ; preds = %176
  %236 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %237 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %29, align 4
  %244 = sub nsw i32 %242, %243
  %245 = load i32, i32* %30, align 4
  %246 = sub nsw i32 %244, %245
  %247 = sdiv i32 %238, %246
  store i32 %247, i32* %31, align 4
  %248 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %249 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %27, align 4
  %256 = sub nsw i32 %254, %255
  %257 = load i32, i32* %28, align 4
  %258 = sub nsw i32 %256, %257
  %259 = sdiv i32 %250, %258
  store i32 %259, i32* %32, align 4
  br label %260

260:                                              ; preds = %235, %218
  %261 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %262 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  store i32 %263, i32* %33, align 4
  %264 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  %265 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %34, align 4
  %267 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i64 @ghb_dict_get_bool(i32 %269, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %353

272:                                              ; preds = %260
  store i32 80, i32* %35, align 4
  %273 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @GHB_WIDGET(i32 %275, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %277 = call i32 @ghb_monitor_get_size(i32 %276, i32* %36, i32* %37)
  %278 = load i32, i32* %36, align 4
  %279 = icmp sgt i32 %278, 0
  br i1 %279, label %280, label %352

280:                                              ; preds = %272
  %281 = load i32, i32* %37, align 4
  %282 = icmp sgt i32 %281, 0
  br i1 %282, label %283, label %352

283:                                              ; preds = %280
  %284 = load i32, i32* %33, align 4
  %285 = load i32, i32* %36, align 4
  %286 = load i32, i32* %35, align 4
  %287 = mul nsw i32 %285, %286
  %288 = sdiv i32 %287, 100
  %289 = icmp sgt i32 %284, %288
  br i1 %289, label %297, label %290

290:                                              ; preds = %283
  %291 = load i32, i32* %34, align 4
  %292 = load i32, i32* %37, align 4
  %293 = load i32, i32* %35, align 4
  %294 = mul nsw i32 %292, %293
  %295 = sdiv i32 %294, 100
  %296 = icmp sgt i32 %291, %295
  br i1 %296, label %297, label %352

297:                                              ; preds = %290, %283
  %298 = load i32, i32* %33, align 4
  store i32 %298, i32* %39, align 4
  %299 = load i32, i32* %34, align 4
  store i32 %299, i32* %40, align 4
  %300 = load i32, i32* %33, align 4
  %301 = load i32, i32* %36, align 4
  %302 = load i32, i32* %35, align 4
  %303 = mul nsw i32 %301, %302
  %304 = sdiv i32 %303, 100
  %305 = icmp sgt i32 %300, %304
  br i1 %305, label %306, label %316

306:                                              ; preds = %297
  %307 = load i32, i32* %36, align 4
  %308 = load i32, i32* %35, align 4
  %309 = mul nsw i32 %307, %308
  %310 = sdiv i32 %309, 100
  store i32 %310, i32* %33, align 4
  %311 = load i32, i32* %34, align 4
  %312 = load i32, i32* %33, align 4
  %313 = mul nsw i32 %311, %312
  %314 = load i32, i32* %39, align 4
  %315 = sdiv i32 %313, %314
  store i32 %315, i32* %34, align 4
  br label %316

316:                                              ; preds = %306, %297
  %317 = load i32, i32* %34, align 4
  %318 = load i32, i32* %37, align 4
  %319 = load i32, i32* %35, align 4
  %320 = mul nsw i32 %318, %319
  %321 = sdiv i32 %320, 100
  %322 = icmp sgt i32 %317, %321
  br i1 %322, label %323, label %333

323:                                              ; preds = %316
  %324 = load i32, i32* %37, align 4
  %325 = load i32, i32* %35, align 4
  %326 = mul nsw i32 %324, %325
  %327 = sdiv i32 %326, 100
  store i32 %327, i32* %34, align 4
  %328 = load i32, i32* %39, align 4
  %329 = load i32, i32* %34, align 4
  %330 = mul nsw i32 %328, %329
  %331 = load i32, i32* %40, align 4
  %332 = sdiv i32 %330, %331
  store i32 %332, i32* %33, align 4
  br label %333

333:                                              ; preds = %323, %316
  %334 = load i32, i32* %33, align 4
  %335 = load i32, i32* %39, align 4
  %336 = sdiv i32 %334, %335
  %337 = load i32, i32* %31, align 4
  %338 = mul nsw i32 %337, %336
  store i32 %338, i32* %31, align 4
  %339 = load i32, i32* %34, align 4
  %340 = load i32, i32* %40, align 4
  %341 = sdiv i32 %339, %340
  %342 = load i32, i32* %32, align 4
  %343 = mul nsw i32 %342, %341
  store i32 %343, i32* %32, align 4
  %344 = load i32*, i32** %16, align 8
  %345 = load i32, i32* %33, align 4
  %346 = load i32, i32* %34, align 4
  %347 = load i32, i32* @GDK_INTERP_HYPER, align 4
  %348 = call i32* @gdk_pixbuf_scale_simple(i32* %344, i32 %345, i32 %346, i32 %347)
  store i32* %348, i32** %38, align 8
  %349 = load i32*, i32** %16, align 8
  %350 = call i32 @g_object_unref(i32* %349)
  %351 = load i32*, i32** %38, align 8
  store i32* %351, i32** %16, align 8
  br label %352

352:                                              ; preds = %333, %290, %280, %272
  br label %353

353:                                              ; preds = %352, %260
  %354 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %355 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = call i64 @ghb_dict_get_bool(i32 %356, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %394

359:                                              ; preds = %353
  %360 = load i32, i32* %32, align 4
  %361 = load i32, i32* %27, align 4
  %362 = mul nsw i32 %361, %360
  store i32 %362, i32* %27, align 4
  %363 = load i32, i32* %32, align 4
  %364 = load i32, i32* %28, align 4
  %365 = mul nsw i32 %364, %363
  store i32 %365, i32* %28, align 4
  %366 = load i32, i32* %31, align 4
  %367 = load i32, i32* %29, align 4
  %368 = mul nsw i32 %367, %366
  store i32 %368, i32* %29, align 4
  %369 = load i32, i32* %31, align 4
  %370 = load i32, i32* %30, align 4
  %371 = mul nsw i32 %370, %369
  store i32 %371, i32* %30, align 4
  %372 = load i32*, i32** %16, align 8
  %373 = load i32, i32* %33, align 4
  %374 = load i32, i32* %27, align 4
  %375 = call i32 @hash_pixbuf(i32* %372, i32 0, i32 0, i32 %373, i32 %374, i32 32, i32 0)
  %376 = load i32*, i32** %16, align 8
  %377 = load i32, i32* %34, align 4
  %378 = load i32, i32* %28, align 4
  %379 = sub nsw i32 %377, %378
  %380 = load i32, i32* %33, align 4
  %381 = load i32, i32* %28, align 4
  %382 = call i32 @hash_pixbuf(i32* %376, i32 0, i32 %379, i32 %380, i32 %381, i32 32, i32 0)
  %383 = load i32*, i32** %16, align 8
  %384 = load i32, i32* %29, align 4
  %385 = load i32, i32* %34, align 4
  %386 = call i32 @hash_pixbuf(i32* %383, i32 0, i32 0, i32 %384, i32 %385, i32 32, i32 1)
  %387 = load i32*, i32** %16, align 8
  %388 = load i32, i32* %33, align 4
  %389 = load i32, i32* %30, align 4
  %390 = sub nsw i32 %388, %389
  %391 = load i32, i32* %30, align 4
  %392 = load i32, i32* %34, align 4
  %393 = call i32 @hash_pixbuf(i32* %387, i32 %390, i32 0, i32 %391, i32 %392, i32 32, i32 1)
  br label %394

394:                                              ; preds = %359, %353
  %395 = call i32 @hb_image_close(%struct.TYPE_32__** %17)
  %396 = load i32*, i32** %16, align 8
  store i32* %396, i32** %6, align 8
  br label %397

397:                                              ; preds = %394, %83, %43
  %398 = load i32*, i32** %6, align 8
  ret i32* %398
}

declare dso_local i64 @ghb_settings_combo_int(i32, i8*) #1

declare dso_local i32 @get_preview_geometry(%struct.TYPE_30__*, %struct.TYPE_31__*, %struct.TYPE_33__*, %struct.TYPE_24__*) #1

declare dso_local i32 @hb_set_anamorphic_size2(%struct.TYPE_33__*, %struct.TYPE_24__*, %struct.TYPE_33__*) #1

declare dso_local i32 @ghb_par_scale(%struct.TYPE_30__*, i32*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_32__* @hb_get_preview2(i32, i32, i32, %struct.TYPE_24__*, i32) #1

declare dso_local i32* @gdk_pixbuf_new(i32, i32, i32, i32, i32) #1

declare dso_local i32* @gdk_pixbuf_get_pixels(i32*) #1

declare dso_local i32 @gdk_pixbuf_get_n_channels(i32*) #1

declare dso_local i32 @gdk_pixbuf_get_rowstride(i32*) #1

declare dso_local i32 @ghb_dict_get_int(i32, i8*) #1

declare dso_local i64 @ghb_dict_get_bool(i32, i8*) #1

declare dso_local i32 @ghb_monitor_get_size(i32, i32*, i32*) #1

declare dso_local i32 @GHB_WIDGET(i32, i8*) #1

declare dso_local i32* @gdk_pixbuf_scale_simple(i32*, i32, i32, i32) #1

declare dso_local i32 @g_object_unref(i32*) #1

declare dso_local i32 @hash_pixbuf(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hb_image_close(%struct.TYPE_32__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
