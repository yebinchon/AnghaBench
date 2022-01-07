; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/winfonts/extr_winfnt.c_FNT_Face_Init.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/winfonts/extr_winfnt.c_FNT_Face_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i64, i8*, i8*, %struct.TYPE_24__*, i64 }
%struct.TYPE_24__ = type { i32, i32, i32, i8*, i8* }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i8*, i32, %struct.TYPE_20__, i32, i64 }
%struct.TYPE_20__ = type { i32, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_22__*, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Windows FNT driver\0A\00", align 1
@Unknown_File_Format = common dso_local global i32 0, align 4
@Invalid_Argument = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid pixel height\0A\00", align 1
@Invalid_File_Format = common dso_local global i32 0, align 4
@FT_FACE_FLAG_FIXED_SIZES = common dso_local global i32 0, align 4
@FT_FACE_FLAG_HORIZONTAL = common dso_local global i32 0, align 4
@FT_FACE_FLAG_FIXED_WIDTH = common dso_local global i32 0, align 4
@FT_STYLE_FLAG_ITALIC = common dso_local global i32 0, align 4
@FT_STYLE_FLAG_BOLD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"use pixel_height as the nominal height\0A\00", align 1
@FT_ENCODING_NONE = common dso_local global i32 0, align 4
@TT_PLATFORM_APPLE_UNICODE = common dso_local global i32 0, align 4
@TT_APPLE_ID_DEFAULT = common dso_local global i32 0, align 4
@FT_WinFNT_ID_MAC = common dso_local global i64 0, align 8
@FT_ENCODING_APPLE_ROMAN = common dso_local global i32 0, align 4
@TT_PLATFORM_MACINTOSH = common dso_local global i32 0, align 4
@fnt_cmap_class = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"invalid number of glyphs\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"invalid family name offset\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Regular\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Bold Italic\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Bold\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Italic\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*, %struct.TYPE_22__*, i64, i64, i32*)* @FNT_Face_Init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @FNT_Face_Init(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_24__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_23__, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %24 = bitcast %struct.TYPE_22__* %23 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %24, %struct.TYPE_26__** %11, align 8
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %26 = call i32 @FT_FACE_MEMORY(%struct.TYPE_26__* %25)
  store i32 %26, i32* %13, align 4
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @FT_UNUSED(i64 %27)
  %29 = load i32*, i32** %10, align 8
  %30 = ptrtoint i32* %29 to i64
  %31 = call i32 @FT_UNUSED(i64 %30)
  %32 = call i32 @FT_TRACE2(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @FT_ABS(i64 %33)
  %35 = and i32 %34, 65535
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %14, align 8
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i64 @fnt_face_get_dll_font(%struct.TYPE_26__* %37, i64 %38)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %5
  %43 = load i64, i64* %8, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %434

46:                                               ; preds = %42, %5
  %47 = load i64, i64* %12, align 8
  %48 = load i32, i32* @Unknown_File_Format, align 4
  %49 = call i64 @FT_ERR_EQ(i64 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %88

51:                                               ; preds = %46
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %53, align 8
  %55 = call i64 @FT_NEW(%struct.TYPE_25__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %434

58:                                               ; preds = %51
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %62, align 8
  store %struct.TYPE_25__* %63, %struct.TYPE_25__** %15, align 8
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 4
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %73 = call i64 @fnt_font_load(%struct.TYPE_25__* %71, %struct.TYPE_21__* %72)
  store i64 %73, i64* %12, align 8
  %74 = load i64, i64* %12, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %58
  %77 = load i64, i64* %8, align 8
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %434

80:                                               ; preds = %76
  %81 = load i64, i64* %14, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* @Invalid_Argument, align 4
  %85 = call i64 @FT_THROW(i32 %84)
  store i64 %85, i64* %12, align 8
  br label %86

86:                                               ; preds = %83, %80
  br label %87

87:                                               ; preds = %86, %58
  br label %88

88:                                               ; preds = %87, %46
  %89 = load i64, i64* %12, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %431

92:                                               ; preds = %88
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %92
  %101 = call i32 @FT_TRACE2(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* @Invalid_File_Format, align 4
  %103 = call i64 @FT_THROW(i32 %102)
  store i64 %103, i64* %12, align 8
  br label %431

104:                                              ; preds = %92
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %106 = call %struct.TYPE_22__* @FT_FACE(%struct.TYPE_26__* %105)
  store %struct.TYPE_22__* %106, %struct.TYPE_22__** %16, align 8
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %108, align 8
  store %struct.TYPE_25__* %109, %struct.TYPE_25__** %17, align 8
  %110 = load i64, i64* %14, align 8
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 8
  store i64 %110, i64* %112, align 8
  %113 = load i32, i32* @FT_FACE_FLAG_FIXED_SIZES, align 4
  %114 = load i32, i32* @FT_FACE_FLAG_HORIZONTAL, align 4
  %115 = or i32 %113, %114
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %123, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %104
  %130 = load i32, i32* @FT_FACE_FLAG_FIXED_WIDTH, align 4
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %129, %104
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 13
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %135
  %142 = load i32, i32* @FT_STYLE_FLAG_ITALIC, align 4
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  br label %147

147:                                              ; preds = %141, %135
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = icmp sge i32 %151, 800
  br i1 %152, label %153, label %159

153:                                              ; preds = %147
  %154 = load i32, i32* @FT_STYLE_FLAG_BOLD, align 4
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %153, %147
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 7
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %161, align 8
  %163 = call i64 @FT_NEW_ARRAY(%struct.TYPE_24__* %162, i32 1)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %159
  br label %431

166:                                              ; preds = %159
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 3
  store i32 1, i32* %168, align 4
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 7
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %170, align 8
  store %struct.TYPE_24__* %171, %struct.TYPE_24__** %19, align 8
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = inttoptr i64 %175 to i8*
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 4
  store i8* %176, i8** %178, align 8
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 12
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %183, %187
  %189 = inttoptr i64 %188 to i8*
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 3
  store i8* %189, i8** %191, align 8
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = shl i32 %195, 6
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 8
  %199 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %200 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  store i32 %202, i32* %20, align 4
  %203 = load i32, i32* %20, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %166
  store i32 72, i32* %20, align 4
  br label %206

206:                                              ; preds = %205, %166
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %21, align 4
  %211 = load i32, i32* %21, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %206
  store i32 72, i32* %21, align 4
  br label %214

214:                                              ; preds = %213, %206
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* %21, align 4
  %219 = call i8* @FT_MulDiv(i32 %217, i32 %218, i32 72)
  %220 = ptrtoint i8* %219 to i32
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %222 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %221, i32 0, i32 1
  store i32 %220, i32* %222, align 4
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = call i8* @FT_PIX_ROUND(i32 %225)
  %227 = ptrtoint i8* %226 to i32
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %229 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %228, i32 0, i32 1
  store i32 %227, i32* %229, align 4
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = shl i32 %236, 6
  %238 = icmp sgt i32 %232, %237
  br i1 %238, label %239, label %256

239:                                              ; preds = %214
  %240 = call i32 @FT_TRACE2(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %242 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = shl i32 %244, 6
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 1
  store i32 %245, i32* %247, align 4
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %21, align 4
  %252 = call i8* @FT_MulDiv(i32 %250, i32 72, i32 %251)
  %253 = ptrtoint i8* %252 to i32
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %255 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %254, i32 0, i32 0
  store i32 %253, i32* %255, align 8
  br label %256

256:                                              ; preds = %239, %214
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %258 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* %20, align 4
  %261 = call i8* @FT_MulDiv(i32 %259, i32 %260, i32 72)
  %262 = ptrtoint i8* %261 to i32
  %263 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i32 0, i32 2
  store i32 %262, i32* %264, align 8
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %266 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = call i8* @FT_PIX_ROUND(i32 %267)
  %269 = ptrtoint i8* %268 to i32
  %270 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %271 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %270, i32 0, i32 2
  store i32 %269, i32* %271, align 8
  %272 = load i32, i32* @FT_ENCODING_NONE, align 4
  %273 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 1
  store i32 %272, i32* %273, align 4
  %274 = load i32, i32* @TT_PLATFORM_APPLE_UNICODE, align 4
  %275 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  store i32 %274, i32* %275, align 8
  %276 = load i32, i32* @TT_APPLE_ID_DEFAULT, align 4
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 3
  store i32 %276, i32* %277, align 8
  %278 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 2
  store %struct.TYPE_22__* %278, %struct.TYPE_22__** %279, align 8
  %280 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %281 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 7
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @FT_WinFNT_ID_MAC, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %286, label %291

286:                                              ; preds = %256
  %287 = load i32, i32* @FT_ENCODING_APPLE_ROMAN, align 4
  %288 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 1
  store i32 %287, i32* %288, align 4
  %289 = load i32, i32* @TT_PLATFORM_MACINTOSH, align 4
  %290 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  store i32 %289, i32* %290, align 8
  br label %291

291:                                              ; preds = %286, %256
  %292 = load i32, i32* @fnt_cmap_class, align 4
  %293 = call i64 @FT_CMap_New(i32 %292, i32* null, %struct.TYPE_23__* %22, i32* null)
  store i64 %293, i64* %12, align 8
  %294 = load i64, i64* %12, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %291
  br label %431

297:                                              ; preds = %291
  %298 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %299 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %298, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %299, i32 0, i32 8
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %303 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %303, i32 0, i32 9
  %305 = load i64, i64* %304, align 8
  %306 = icmp slt i64 %301, %305
  br i1 %306, label %307, label %311

307:                                              ; preds = %297
  %308 = call i32 @FT_TRACE2(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %309 = load i32, i32* @Invalid_File_Format, align 4
  %310 = call i64 @FT_THROW(i32 %309)
  store i64 %310, i64* %12, align 8
  br label %431

311:                                              ; preds = %297
  %312 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %313 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %312, i32 0, i32 2
  %314 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %313, i32 0, i32 8
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %317 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %317, i32 0, i32 9
  %319 = load i64, i64* %318, align 8
  %320 = sub nsw i64 %315, %319
  %321 = add nsw i64 %320, 1
  %322 = add nsw i64 %321, 1
  %323 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %324 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %323, i32 0, i32 4
  store i64 %322, i64* %324, align 8
  %325 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %326 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %325, i32 0, i32 2
  %327 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %326, i32 0, i32 10
  %328 = load i64, i64* %327, align 8
  %329 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %330 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %329, i32 0, i32 2
  %331 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %330, i32 0, i32 11
  %332 = load i64, i64* %331, align 8
  %333 = icmp sge i64 %328, %332
  br i1 %333, label %334, label %338

334:                                              ; preds = %311
  %335 = call i32 @FT_TRACE2(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %336 = load i32, i32* @Invalid_File_Format, align 4
  %337 = call i64 @FT_THROW(i32 %336)
  store i64 %337, i64* %12, align 8
  br label %431

338:                                              ; preds = %311
  %339 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %340 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %339, i32 0, i32 2
  %341 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %340, i32 0, i32 11
  %342 = load i64, i64* %341, align 8
  %343 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %344 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %343, i32 0, i32 2
  %345 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %344, i32 0, i32 10
  %346 = load i64, i64* %345, align 8
  %347 = sub nsw i64 %342, %346
  %348 = trunc i64 %347 to i32
  store i32 %348, i32* %18, align 4
  %349 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %350 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %349, i32 0, i32 0
  %351 = load i8*, i8** %350, align 8
  %352 = load i32, i32* %18, align 4
  %353 = add nsw i32 %352, 1
  %354 = call i64 @FT_ALLOC(i8* %351, i32 %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %338
  br label %431

357:                                              ; preds = %338
  %358 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %359 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %358, i32 0, i32 0
  %360 = load i8*, i8** %359, align 8
  %361 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %362 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 8
  %364 = sext i32 %363 to i64
  %365 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %366 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %365, i32 0, i32 2
  %367 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %366, i32 0, i32 10
  %368 = load i64, i64* %367, align 8
  %369 = add nsw i64 %364, %368
  %370 = trunc i64 %369 to i32
  %371 = load i32, i32* %18, align 4
  %372 = call i32 @FT_MEM_COPY(i8* %360, i32 %370, i32 %371)
  %373 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %374 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %373, i32 0, i32 0
  %375 = load i8*, i8** %374, align 8
  %376 = load i32, i32* %18, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i8, i8* %375, i64 %377
  store i8 0, i8* %378, align 1
  %379 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %380 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %379, i32 0, i32 0
  %381 = load i8*, i8** %380, align 8
  %382 = load i32, i32* %18, align 4
  %383 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %384 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %383, i32 0, i32 0
  %385 = load i8*, i8** %384, align 8
  %386 = call i64 @ft_strlen(i8* %385)
  %387 = add nsw i64 %386, 1
  %388 = call i64 @FT_REALLOC(i8* %381, i32 %382, i64 %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %391

390:                                              ; preds = %357
  br label %431

391:                                              ; preds = %357
  %392 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %393 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %392, i32 0, i32 0
  %394 = load i8*, i8** %393, align 8
  %395 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %396 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %395, i32 0, i32 5
  store i8* %394, i8** %396, align 8
  %397 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %398 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %397, i32 0, i32 6
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %398, align 8
  %399 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %400 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 8
  %402 = load i32, i32* @FT_STYLE_FLAG_BOLD, align 4
  %403 = and i32 %401, %402
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %419

405:                                              ; preds = %391
  %406 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %407 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 8
  %409 = load i32, i32* @FT_STYLE_FLAG_ITALIC, align 4
  %410 = and i32 %408, %409
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %415

412:                                              ; preds = %405
  %413 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %414 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %413, i32 0, i32 6
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %414, align 8
  br label %418

415:                                              ; preds = %405
  %416 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %417 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %416, i32 0, i32 6
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %417, align 8
  br label %418

418:                                              ; preds = %415, %412
  br label %430

419:                                              ; preds = %391
  %420 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %421 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %420, i32 0, i32 2
  %422 = load i32, i32* %421, align 8
  %423 = load i32, i32* @FT_STYLE_FLAG_ITALIC, align 4
  %424 = and i32 %422, %423
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %429

426:                                              ; preds = %419
  %427 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %428 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %427, i32 0, i32 6
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %428, align 8
  br label %429

429:                                              ; preds = %426, %419
  br label %430

430:                                              ; preds = %429, %418
  br label %434

431:                                              ; preds = %390, %356, %334, %307, %296, %165, %100, %91
  %432 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %433 = call i32 @FNT_Face_Done(%struct.TYPE_22__* %432)
  br label %434

434:                                              ; preds = %431, %430, %79, %57, %45
  %435 = load i64, i64* %12, align 8
  ret i64 %435
}

declare dso_local i32 @FT_FACE_MEMORY(%struct.TYPE_26__*) #1

declare dso_local i32 @FT_UNUSED(i64) #1

declare dso_local i32 @FT_TRACE2(i8*) #1

declare dso_local i32 @FT_ABS(i64) #1

declare dso_local i64 @fnt_face_get_dll_font(%struct.TYPE_26__*, i64) #1

declare dso_local i64 @FT_ERR_EQ(i64, i32) #1

declare dso_local i64 @FT_NEW(%struct.TYPE_25__*) #1

declare dso_local i64 @fnt_font_load(%struct.TYPE_25__*, %struct.TYPE_21__*) #1

declare dso_local i64 @FT_THROW(i32) #1

declare dso_local %struct.TYPE_22__* @FT_FACE(%struct.TYPE_26__*) #1

declare dso_local i64 @FT_NEW_ARRAY(%struct.TYPE_24__*, i32) #1

declare dso_local i8* @FT_MulDiv(i32, i32, i32) #1

declare dso_local i8* @FT_PIX_ROUND(i32) #1

declare dso_local i64 @FT_CMap_New(i32, i32*, %struct.TYPE_23__*, i32*) #1

declare dso_local i64 @FT_ALLOC(i8*, i32) #1

declare dso_local i32 @FT_MEM_COPY(i8*, i32, i32) #1

declare dso_local i64 @FT_REALLOC(i8*, i32, i64) #1

declare dso_local i64 @ft_strlen(i8*) #1

declare dso_local i32 @FNT_Face_Done(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
