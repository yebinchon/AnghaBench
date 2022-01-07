; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_q3.c_Q3_BSPBrushToMapBrush.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_q3.c_Q3_BSPBrushToMapBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_21__*, i64, %struct.TYPE_26__*, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i64 }
%struct.TYPE_24__ = type { i32, i32, i64 }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_27__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }

@nummapbrushes = common dso_local global i64 0, align 8
@MAX_MAPFILE_BRUSHES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"nummapbrushes >= MAX_MAPFILE_BRUSHES\00", align 1
@mapbrushes = common dso_local global %struct.TYPE_25__* null, align 8
@brushsides = common dso_local global %struct.TYPE_21__* null, align 8
@nummapbrushsides = common dso_local global i64 0, align 8
@entities = common dso_local global i32 0, align 4
@dbrushleafnums = common dso_local global i32* null, align 8
@q3_dbrushes = common dso_local global %struct.TYPE_24__* null, align 8
@q3_dbrushsides = common dso_local global %struct.TYPE_23__* null, align 8
@MAX_MAPFILE_BRUSHSIDES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"MAX_MAPFILE_BRUSHSIDES\00", align 1
@q3_dbrushsidetextured = common dso_local global i64* null, align 8
@SFL_TEXTURED = common dso_local global i32 0, align 4
@SFL_VISIBLE = common dso_local global i32 0, align 4
@q3_dshaders = common dso_local global %struct.TYPE_27__* null, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"common/hint\00", align 1
@SURF_HINT = common dso_local global i32 0, align 4
@SURF_NODRAW = common dso_local global i32 0, align 4
@SURF_SKIP = common dso_local global i32 0, align 4
@q3_dplanes = common dso_local global %struct.TYPE_22__* null, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Entity %i, Brush %i: duplicate plane\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Entity %i, Brush %i: mirrored plane\0A\00", align 1
@CONTENTS_LADDER = common dso_local global i32 0, align 4
@CONTENTS_FOG = common dso_local global i32 0, align 4
@CONTENTS_STRUCTURAL = common dso_local global i32 0, align 4
@c_squattbrushes = common dso_local global i32 0, align 4
@create_aas = common dso_local global i64 0, align 8
@nodetail = common dso_local global i64 0, align 8
@CONTENTS_DETAIL = common dso_local global i32 0, align 4
@nowater = common dso_local global i64 0, align 8
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_WATER = common dso_local global i32 0, align 4
@CONTENTS_PLAYERCLIP = common dso_local global i32 0, align 4
@CONTENTS_MONSTERCLIP = common dso_local global i32 0, align 4
@c_clipbrushes = common dso_local global i32 0, align 4
@TEXINFO_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Q3_BSPBrushToMapBrush(%struct.TYPE_24__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %4, align 8
  %14 = load i64, i64* @nummapbrushes, align 8
  %15 = load i64, i64* @MAX_MAPFILE_BRUSHES, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @Error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %2
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** @mapbrushes, align 8
  %21 = load i64, i64* @nummapbrushes, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i64 %21
  store %struct.TYPE_25__* %22, %struct.TYPE_25__** %5, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** @brushsides, align 8
  %24 = load i64, i64* @nummapbrushsides, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i64 %24
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 2
  store %struct.TYPE_21__* %25, %struct.TYPE_21__** %27, align 8
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %29 = load i32, i32* @entities, align 4
  %30 = sext i32 %29 to i64
  %31 = sub i64 0, %30
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i64 %31
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 4
  store %struct.TYPE_26__* %32, %struct.TYPE_26__** %34, align 8
  %35 = load i64, i64* @nummapbrushes, align 8
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %35, %38
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 3
  store i64 %39, i64* %41, align 8
  %42 = load i32*, i32** @dbrushleafnums, align 8
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** @q3_dbrushes, align 8
  %45 = ptrtoint %struct.TYPE_24__* %43 to i64
  %46 = ptrtoint %struct.TYPE_24__* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 16
  %49 = getelementptr inbounds i32, i32* %42, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %257, %19
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %260

59:                                               ; preds = %53
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** @q3_dbrushsides, align 8
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i64 %66
  store %struct.TYPE_23__* %67, %struct.TYPE_23__** %12, align 8
  %68 = load i64, i64* @nummapbrushsides, align 8
  %69 = load i64, i64* @MAX_MAPFILE_BRUSHSIDES, align 8
  %70 = icmp uge i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = call i32 @Error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %59
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** @brushsides, align 8
  %75 = load i64, i64* @nummapbrushsides, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i64 %75
  store %struct.TYPE_21__* %76, %struct.TYPE_21__** %9, align 8
  %77 = load i64*, i64** @q3_dbrushsidetextured, align 8
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %77, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %73
  %88 = load i32, i32* @SFL_TEXTURED, align 4
  %89 = load i32, i32* @SFL_VISIBLE, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %102

95:                                               ; preds = %73
  %96 = load i32, i32* @SFL_TEXTURED, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %95, %87
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ult i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 1
  store i32 0, i32* %109, align 4
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 2
  store i32 0, i32* %111, align 4
  br label %147

112:                                              ; preds = %102
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** @q3_dshaders, align 8
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** @q3_dshaders, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 4
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** @q3_dshaders, align 8
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @strstr(i32 %137, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %112
  %141 = load i32, i32* @SURF_HINT, align 4
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %140, %112
  br label %147

147:                                              ; preds = %146, %107
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @SURF_NODRAW, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %147
  %155 = load i32, i32* @SFL_TEXTURED, align 4
  %156 = load i32, i32* @SFL_VISIBLE, align 4
  %157 = or i32 %155, %156
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %154, %147
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @SURF_HINT, align 4
  %167 = load i32, i32* @SURF_SKIP, align 4
  %168 = or i32 %166, %167
  %169 = and i32 %165, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %162
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 1
  store i32 0, i32* %173, align 4
  br label %174

174:                                              ; preds = %171, %162
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** @q3_dplanes, align 8
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i64 %178
  store %struct.TYPE_22__* %179, %struct.TYPE_22__** %13, align 8
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @FindFloatPlane(i32 %182, i32 %185)
  store i32 %186, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %187

187:                                              ; preds = %229, %174
  %188 = load i32, i32* %7, align 4
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp slt i32 %188, %191
  br i1 %192, label %193, label %232

193:                                              ; preds = %187
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %195, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i64 %198
  store %struct.TYPE_21__* %199, %struct.TYPE_21__** %10, align 8
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %11, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %213

205:                                              ; preds = %193
  %206 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 4
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %207, align 8
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = call i32 @Log_Print(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_26__* %208, i64 %211)
  br label %232

213:                                              ; preds = %193
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %11, align 4
  %218 = xor i32 %217, 1
  %219 = icmp eq i32 %216, %218
  br i1 %219, label %220, label %228

220:                                              ; preds = %213
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i32 0, i32 4
  %223 = load %struct.TYPE_26__*, %struct.TYPE_26__** %222, align 8
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @Log_Print(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_26__* %223, i64 %226)
  br label %232

228:                                              ; preds = %213
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %7, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %7, align 4
  br label %187

232:                                              ; preds = %220, %205, %187
  %233 = load i32, i32* %7, align 4
  %234 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %233, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %232
  br label %257

239:                                              ; preds = %232
  %240 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %240, i32 0, i32 2
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %241, align 8
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i64 %246
  store %struct.TYPE_21__* %247, %struct.TYPE_21__** %9, align 8
  %248 = load i32, i32* %11, align 4
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 3
  store i32 %248, i32* %250, align 4
  %251 = load i64, i64* @nummapbrushsides, align 8
  %252 = add i64 %251, 1
  store i64 %252, i64* @nummapbrushsides, align 8
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %254, align 8
  br label %257

257:                                              ; preds = %239, %238
  %258 = load i32, i32* %8, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %8, align 4
  br label %53

260:                                              ; preds = %53
  %261 = load %struct.TYPE_27__*, %struct.TYPE_27__** @q3_dshaders, align 8
  %262 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %261, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %268, i32 0, i32 1
  store i32 %267, i32* %269, align 4
  %270 = load i32, i32* @CONTENTS_LADDER, align 4
  %271 = load i32, i32* @CONTENTS_FOG, align 4
  %272 = or i32 %270, %271
  %273 = load i32, i32* @CONTENTS_STRUCTURAL, align 4
  %274 = or i32 %272, %273
  %275 = xor i32 %274, -1
  %276 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = and i32 %278, %275
  store i32 %279, i32* %277, align 4
  %280 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %281 = call i64 @BrushExists(%struct.TYPE_25__* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %260
  %284 = load i32, i32* @c_squattbrushes, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* @c_squattbrushes, align 4
  %286 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %286, i32 0, i32 0
  store i32 0, i32* %287, align 8
  br label %367

288:                                              ; preds = %260
  %289 = load i64, i64* @create_aas, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %288
  %292 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %293 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %294 = call i32 @AAS_CreateMapBrushes(%struct.TYPE_25__* %292, %struct.TYPE_26__* %293, i32 0)
  br label %367

295:                                              ; preds = %288
  %296 = load i64, i64* @nodetail, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %308

298:                                              ; preds = %295
  %299 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @CONTENTS_DETAIL, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %298
  %306 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %306, i32 0, i32 0
  store i32 0, i32* %307, align 8
  br label %367

308:                                              ; preds = %298, %295
  %309 = load i64, i64* @nowater, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %325

311:                                              ; preds = %308
  %312 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @CONTENTS_LAVA, align 4
  %316 = load i32, i32* @CONTENTS_SLIME, align 4
  %317 = or i32 %315, %316
  %318 = load i32, i32* @CONTENTS_WATER, align 4
  %319 = or i32 %317, %318
  %320 = and i32 %314, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %311
  %323 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %323, i32 0, i32 0
  store i32 0, i32* %324, align 8
  br label %367

325:                                              ; preds = %311, %308
  %326 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %327 = call i32 @MakeBrushWindings(%struct.TYPE_25__* %326)
  %328 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %329 = call i32 @MarkBrushBevels(%struct.TYPE_25__* %328)
  %330 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %334 = load i32, i32* @CONTENTS_MONSTERCLIP, align 4
  %335 = or i32 %333, %334
  %336 = and i32 %332, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %360

338:                                              ; preds = %325
  %339 = load i32, i32* @c_clipbrushes, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* @c_clipbrushes, align 4
  store i32 0, i32* %6, align 4
  br label %341

341:                                              ; preds = %356, %338
  %342 = load i32, i32* %6, align 4
  %343 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = icmp slt i32 %342, %345
  br i1 %346, label %347, label %359

347:                                              ; preds = %341
  %348 = load i32, i32* @TEXINFO_NODE, align 4
  %349 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %349, i32 0, i32 2
  %351 = load %struct.TYPE_21__*, %struct.TYPE_21__** %350, align 8
  %352 = load i32, i32* %6, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %351, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %354, i32 0, i32 4
  store i32 %348, i32* %355, align 4
  br label %356

356:                                              ; preds = %347
  %357 = load i32, i32* %6, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %6, align 4
  br label %341

359:                                              ; preds = %341
  br label %360

360:                                              ; preds = %359, %325
  %361 = load i64, i64* @nummapbrushes, align 8
  %362 = add i64 %361, 1
  store i64 %362, i64* @nummapbrushes, align 8
  %363 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %364 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %364, align 8
  br label %367

367:                                              ; preds = %360, %322, %305, %291, %283
  ret void
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i64 @strstr(i32, i8*) #1

declare dso_local i32 @FindFloatPlane(i32, i32) #1

declare dso_local i32 @Log_Print(i8*, %struct.TYPE_26__*, i64) #1

declare dso_local i64 @BrushExists(%struct.TYPE_25__*) #1

declare dso_local i32 @AAS_CreateMapBrushes(%struct.TYPE_25__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @MakeBrushWindings(%struct.TYPE_25__*) #1

declare dso_local i32 @MarkBrushBevels(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
