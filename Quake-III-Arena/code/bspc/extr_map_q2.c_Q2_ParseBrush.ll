; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_q2.c_Q2_ParseBrush.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_q2.c_Q2_ParseBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_29__ = type { i32, i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i8**, i8*, i8** }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_27__ = type { i32, i64 }
%struct.TYPE_24__ = type { i32, i32 }

@nummapbrushes = common dso_local global i64 0, align 8
@MAX_MAPFILE_BRUSHES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"nummapbrushes == MAX_MAPFILE_BRUSHES\00", align 1
@mapbrushes = common dso_local global %struct.TYPE_26__* null, align 8
@brushsides = common dso_local global %struct.TYPE_25__* null, align 8
@nummapbrushsides = common dso_local global i64 0, align 8
@num_entities = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@MAX_MAPFILE_BRUSHSIDES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"MAX_MAPFILE_BRUSHSIDES\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c")\00", align 1
@textureref = common dso_local global %struct.TYPE_29__* null, align 8
@TT_NUMBER = common dso_local global i32 0, align 4
@SURF_TRANS33 = common dso_local global i32 0, align 4
@SURF_TRANS66 = common dso_local global i32 0, align 4
@CONTENTS_DETAIL = common dso_local global i32 0, align 4
@CONTENTS_PLAYERCLIP = common dso_local global i32 0, align 4
@CONTENTS_MONSTERCLIP = common dso_local global i32 0, align 4
@fulldetail = common dso_local global i64 0, align 8
@LAST_VISIBLE_CONTENTS = common dso_local global i32 0, align 4
@CONTENTS_MIST = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@SURF_HINT = common dso_local global i32 0, align 4
@SURF_SKIP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Entity %i, Brush %i: plane with no normal\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Entity %i, Brush %i: duplicate plane\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Entity %i, Brush %i: mirrored plane\0A\00", align 1
@mapplanes = common dso_local global i32* null, align 8
@vec3_origin = common dso_local global i32 0, align 4
@side_brushtextures = common dso_local global %struct.TYPE_28__* null, align 8
@nodetail = common dso_local global i64 0, align 8
@nowater = common dso_local global i64 0, align 8
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_WATER = common dso_local global i32 0, align 4
@c_clipbrushes = common dso_local global i32 0, align 4
@TEXINFO_NODE = common dso_local global i32 0, align 4
@CONTENTS_ORIGIN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [57 x i8] c"Entity %i, Brush %i: origin brushes not allowed in world\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"%i %i %i\00", align 1
@entities = common dso_local global %struct.TYPE_30__* null, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@SFL_TEXTURED = common dso_local global i32 0, align 4
@c_squattbrushes = common dso_local global i32 0, align 4
@create_aas = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Q2_ParseBrush(i32* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_28__, align 8
  %14 = alloca [3 x [3 x i32]], align 16
  %15 = alloca %struct.TYPE_24__, align 4
  %16 = alloca [32 x i8], align 16
  %17 = alloca i64*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %4, align 8
  %18 = load i64, i64* @nummapbrushes, align 8
  %19 = load i64, i64* @MAX_MAPFILE_BRUSHES, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %2
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** @mapbrushes, align 8
  %25 = load i64, i64* @nummapbrushes, align 8
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i64 %25
  store %struct.TYPE_26__* %26, %struct.TYPE_26__** %5, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** @brushsides, align 8
  %28 = load i64, i64* @nummapbrushsides, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i64 %28
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 7
  store %struct.TYPE_25__* %29, %struct.TYPE_25__** %31, align 8
  %32 = load i32, i32* @num_entities, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i64, i64* @nummapbrushes, align 8
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %36, %39
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i32 0, i32 6
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 1
  store i32 -1, i32* %44, align 4
  br label %45

45:                                               ; preds = %384, %23
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @PS_ReadToken(i32* %46, %struct.TYPE_24__* %15)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  br label %385

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @strcmp(i32 %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %385

56:                                               ; preds = %50
  %57 = load i64, i64* @nummapbrushsides, align 8
  %58 = load i64, i64* @MAX_MAPFILE_BRUSHSIDES, align 8
  %59 = icmp uge i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %56
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** @brushsides, align 8
  %64 = load i64, i64* @nummapbrushsides, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i64 %64
  store %struct.TYPE_25__* %65, %struct.TYPE_25__** %10, align 8
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %98, %62
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 3
  br i1 %68, label %69, label %101

69:                                               ; preds = %66
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @PS_ExpectTokenString(i32* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %69
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %92, %75
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 3
  br i1 %78, label %79, label %95

79:                                               ; preds = %76
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @PS_ExpectAnyToken(i32* %80, %struct.TYPE_24__* %15)
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @atof(i32 %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %14, i64 0, i64 %87
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %88, i64 0, i64 %90
  store i32 %85, i32* %91, align 4
  br label %92

92:                                               ; preds = %79
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %76

95:                                               ; preds = %76
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @PS_ExpectTokenString(i32* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %66

101:                                              ; preds = %66
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @PS_ExpectAnyToken(i32* %102, %struct.TYPE_24__* %15)
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @strcpy(i32 %105, i32 %107)
  %109 = load i32*, i32** %3, align 8
  %110 = call i32 @PS_ExpectAnyToken(i32* %109, %struct.TYPE_24__* %15)
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @atol(i32 %112)
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 5
  %115 = load i8**, i8*** %114, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 0
  store i8* %113, i8** %116, align 8
  %117 = load i32*, i32** %3, align 8
  %118 = call i32 @PS_ExpectAnyToken(i32* %117, %struct.TYPE_24__* %15)
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i8* @atol(i32 %120)
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 5
  %123 = load i8**, i8*** %122, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 1
  store i8* %121, i8** %124, align 8
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @PS_ExpectAnyToken(i32* %125, %struct.TYPE_24__* %15)
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @atol(i32 %128)
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 4
  store i8* %129, i8** %130, align 8
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @PS_ExpectAnyToken(i32* %131, %struct.TYPE_24__* %15)
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @atof(i32 %134)
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 3
  %137 = load i8**, i8*** %136, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 0
  store i8* %135, i8** %138, align 8
  %139 = load i32*, i32** %3, align 8
  %140 = call i32 @PS_ExpectAnyToken(i32* %139, %struct.TYPE_24__* %15)
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @atof(i32 %142)
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 3
  %145 = load i8**, i8*** %144, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 1
  store i8* %143, i8** %146, align 8
  %147 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @FindMiptex(i32 %148)
  store i32 %149, i32* %9, align 4
  %150 = load %struct.TYPE_29__*, %struct.TYPE_29__** @textureref, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 0
  store i32 %155, i32* %156, align 8
  %157 = load %struct.TYPE_29__*, %struct.TYPE_29__** @textureref, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 1
  store i32 %162, i32* %163, align 4
  %164 = load %struct.TYPE_29__*, %struct.TYPE_29__** @textureref, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 4
  %172 = load %struct.TYPE_29__*, %struct.TYPE_29__** @textureref, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 0
  store i32 %177, i32* %178, align 8
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 1
  store i32 %177, i32* %180, align 4
  %181 = load i32*, i32** %3, align 8
  %182 = load i32, i32* @TT_NUMBER, align 4
  %183 = call i64 @PS_CheckTokenType(i32* %181, i32 %182, i32 0, %struct.TYPE_24__* %15)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %204

185:                                              ; preds = %101
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 4
  %190 = load i32*, i32** %3, align 8
  %191 = load i32, i32* @TT_NUMBER, align 4
  %192 = call i32 @PS_ExpectTokenType(i32* %190, i32 %191, i32 0, %struct.TYPE_24__* %15)
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 0
  store i32 %194, i32* %195, align 8
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 1
  store i32 %194, i32* %197, align 4
  %198 = load i32*, i32** %3, align 8
  %199 = load i32, i32* @TT_NUMBER, align 4
  %200 = call i32 @PS_ExpectTokenType(i32* %198, i32 %199, i32 0, %struct.TYPE_24__* %15)
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 1
  store i32 %202, i32* %203, align 4
  br label %204

204:                                              ; preds = %185, %101
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @SURF_TRANS33, align 4
  %209 = load i32, i32* @SURF_TRANS66, align 4
  %210 = or i32 %208, %209
  %211 = and i32 %207, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %204
  %214 = load i32, i32* @CONTENTS_DETAIL, align 4
  %215 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 4
  br label %219

219:                                              ; preds = %213, %204
  %220 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %224 = load i32, i32* @CONTENTS_MONSTERCLIP, align 4
  %225 = or i32 %223, %224
  %226 = and i32 %222, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %219
  %229 = load i32, i32* @CONTENTS_DETAIL, align 4
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 4
  br label %234

234:                                              ; preds = %228, %219
  %235 = load i64, i64* @fulldetail, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %234
  %238 = load i32, i32* @CONTENTS_DETAIL, align 4
  %239 = xor i32 %238, -1
  %240 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = and i32 %242, %239
  store i32 %243, i32* %241, align 4
  br label %244

244:                                              ; preds = %237, %234
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @LAST_VISIBLE_CONTENTS, align 4
  %249 = sub nsw i32 %248, 1
  %250 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %251 = or i32 %249, %250
  %252 = load i32, i32* @CONTENTS_MONSTERCLIP, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* @CONTENTS_MIST, align 4
  %255 = or i32 %253, %254
  %256 = and i32 %247, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %264, label %258

258:                                              ; preds = %244
  %259 = load i32, i32* @CONTENTS_SOLID, align 4
  %260 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %261 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = or i32 %262, %259
  store i32 %263, i32* %261, align 4
  br label %264

264:                                              ; preds = %258, %244
  %265 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %266 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @SURF_HINT, align 4
  %269 = load i32, i32* @SURF_SKIP, align 4
  %270 = or i32 %268, %269
  %271 = and i32 %267, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %282

273:                                              ; preds = %264
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %274, i32 0, i32 0
  store i32 0, i32* %275, align 4
  %276 = load i32, i32* @CONTENTS_DETAIL, align 4
  %277 = xor i32 %276, -1
  %278 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = and i32 %280, %277
  store i32 %281, i32* %279, align 4
  br label %282

282:                                              ; preds = %273, %264
  %283 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %14, i64 0, i64 0
  %284 = getelementptr inbounds [3 x i32], [3 x i32]* %283, i64 0, i64 0
  %285 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %14, i64 0, i64 1
  %286 = getelementptr inbounds [3 x i32], [3 x i32]* %285, i64 0, i64 0
  %287 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %14, i64 0, i64 2
  %288 = getelementptr inbounds [3 x i32], [3 x i32]* %287, i64 0, i64 0
  %289 = call i32 @PlaneFromPoints(i32* %284, i32* %286, i32* %288)
  store i32 %289, i32* %12, align 4
  %290 = load i32, i32* %12, align 4
  %291 = icmp eq i32 %290, -1
  br i1 %291, label %292, label %300

292:                                              ; preds = %282
  %293 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %296, i32 0, i32 6
  %298 = load i64, i64* %297, align 8
  %299 = call i32 @Log_Print(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %295, i64 %298)
  br label %384

300:                                              ; preds = %282
  store i32 0, i32* %8, align 4
  br label %301

301:                                              ; preds = %343, %300
  %302 = load i32, i32* %8, align 4
  %303 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = icmp slt i32 %302, %305
  br i1 %306, label %307, label %346

307:                                              ; preds = %301
  %308 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %308, i32 0, i32 7
  %310 = load %struct.TYPE_25__*, %struct.TYPE_25__** %309, align 8
  %311 = load i32, i32* %8, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %310, i64 %312
  store %struct.TYPE_25__* %313, %struct.TYPE_25__** %11, align 8
  %314 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %315 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* %12, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %327

319:                                              ; preds = %307
  %320 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %323, i32 0, i32 6
  %325 = load i64, i64* %324, align 8
  %326 = call i32 @Log_Print(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %322, i64 %325)
  br label %346

327:                                              ; preds = %307
  %328 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %329 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* %12, align 4
  %332 = xor i32 %331, 1
  %333 = icmp eq i32 %330, %332
  br i1 %333, label %334, label %342

334:                                              ; preds = %327
  %335 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %338, i32 0, i32 6
  %340 = load i64, i64* %339, align 8
  %341 = call i32 @Log_Print(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %337, i64 %340)
  br label %346

342:                                              ; preds = %327
  br label %343

343:                                              ; preds = %342
  %344 = load i32, i32* %8, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %8, align 4
  br label %301

346:                                              ; preds = %334, %319, %301
  %347 = load i32, i32* %8, align 4
  %348 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 8
  %351 = icmp ne i32 %347, %350
  br i1 %351, label %352, label %353

352:                                              ; preds = %346
  br label %384

353:                                              ; preds = %346
  %354 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %354, i32 0, i32 7
  %356 = load %struct.TYPE_25__*, %struct.TYPE_25__** %355, align 8
  %357 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %358 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 8
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %356, i64 %360
  store %struct.TYPE_25__* %361, %struct.TYPE_25__** %10, align 8
  %362 = load i32, i32* %12, align 4
  %363 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %364 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %363, i32 0, i32 2
  store i32 %362, i32* %364, align 4
  %365 = load i32*, i32** @mapplanes, align 8
  %366 = load i32, i32* %12, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %365, i64 %367
  %369 = load i32, i32* @vec3_origin, align 4
  %370 = call i32 @TexinfoForBrushTexture(i32* %368, %struct.TYPE_28__* %13, i32 %369)
  %371 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %372 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %371, i32 0, i32 3
  store i32 %370, i32* %372, align 4
  %373 = load %struct.TYPE_28__*, %struct.TYPE_28__** @side_brushtextures, align 8
  %374 = load i64, i64* @nummapbrushsides, align 8
  %375 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %373, i64 %374
  %376 = bitcast %struct.TYPE_28__* %375 to i8*
  %377 = bitcast %struct.TYPE_28__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %376, i8* align 8 %377, i64 40, i1 false)
  %378 = load i64, i64* @nummapbrushsides, align 8
  %379 = add i64 %378, 1
  store i64 %379, i64* @nummapbrushsides, align 8
  %380 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 8
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %381, align 8
  br label %384

384:                                              ; preds = %353, %352, %292
  br i1 true, label %45, label %385

385:                                              ; preds = %384, %55, %49
  %386 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %387 = call i32 @Q2_BrushContents(%struct.TYPE_26__* %386)
  %388 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %389 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %388, i32 0, i32 3
  store i32 %387, i32* %389, align 4
  %390 = load i64, i64* @nodetail, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %402

392:                                              ; preds = %385
  %393 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %394 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %393, i32 0, i32 3
  %395 = load i32, i32* %394, align 4
  %396 = load i32, i32* @CONTENTS_DETAIL, align 4
  %397 = and i32 %395, %396
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %402

399:                                              ; preds = %392
  %400 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %401 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %400, i32 0, i32 2
  store i32 0, i32* %401, align 8
  br label %525

402:                                              ; preds = %392, %385
  %403 = load i64, i64* @nowater, align 8
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %419

405:                                              ; preds = %402
  %406 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %407 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %406, i32 0, i32 3
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* @CONTENTS_LAVA, align 4
  %410 = load i32, i32* @CONTENTS_SLIME, align 4
  %411 = or i32 %409, %410
  %412 = load i32, i32* @CONTENTS_WATER, align 4
  %413 = or i32 %411, %412
  %414 = and i32 %408, %413
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %419

416:                                              ; preds = %405
  %417 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %418 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %417, i32 0, i32 2
  store i32 0, i32* %418, align 8
  br label %525

419:                                              ; preds = %405, %402
  %420 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %421 = call i32 @MakeBrushWindings(%struct.TYPE_26__* %420)
  %422 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %422, i32 0, i32 3
  %424 = load i32, i32* %423, align 4
  %425 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %426 = load i32, i32* @CONTENTS_MONSTERCLIP, align 4
  %427 = or i32 %425, %426
  %428 = and i32 %424, %427
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %452

430:                                              ; preds = %419
  %431 = load i32, i32* @c_clipbrushes, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* @c_clipbrushes, align 4
  store i32 0, i32* %6, align 4
  br label %433

433:                                              ; preds = %448, %430
  %434 = load i32, i32* %6, align 4
  %435 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %436 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %435, i32 0, i32 2
  %437 = load i32, i32* %436, align 8
  %438 = icmp slt i32 %434, %437
  br i1 %438, label %439, label %451

439:                                              ; preds = %433
  %440 = load i32, i32* @TEXINFO_NODE, align 4
  %441 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %442 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %441, i32 0, i32 7
  %443 = load %struct.TYPE_25__*, %struct.TYPE_25__** %442, align 8
  %444 = load i32, i32* %6, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %443, i64 %445
  %447 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %446, i32 0, i32 3
  store i32 %440, i32* %447, align 4
  br label %448

448:                                              ; preds = %439
  %449 = load i32, i32* %6, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %6, align 4
  br label %433

451:                                              ; preds = %433
  br label %452

452:                                              ; preds = %451, %419
  %453 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %454 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %453, i32 0, i32 3
  %455 = load i32, i32* %454, align 4
  %456 = load i32, i32* @CONTENTS_ORIGIN, align 4
  %457 = and i32 %455, %456
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %516

459:                                              ; preds = %452
  %460 = load i32, i32* @num_entities, align 4
  %461 = icmp eq i32 %460, 1
  br i1 %461, label %462, label %470

462:                                              ; preds = %459
  %463 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %464 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %467 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %466, i32 0, i32 6
  %468 = load i64, i64* %467, align 8
  %469 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i32 %465, i64 %468)
  br label %525

470:                                              ; preds = %459
  %471 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %472 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %471, i32 0, i32 5
  %473 = load i32, i32* %472, align 4
  %474 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %475 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %474, i32 0, i32 4
  %476 = load i32, i32* %475, align 8
  %477 = load i64*, i64** %17, align 8
  %478 = call i32 @VectorAdd(i32 %473, i32 %476, i64* %477)
  %479 = load i64*, i64** %17, align 8
  %480 = load i64*, i64** %17, align 8
  %481 = call i32 @VectorScale(i64* %479, double 5.000000e-01, i64* %480)
  %482 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %483 = load i64*, i64** %17, align 8
  %484 = getelementptr inbounds i64, i64* %483, i64 0
  %485 = load i64, i64* %484, align 8
  %486 = trunc i64 %485 to i32
  %487 = load i64*, i64** %17, align 8
  %488 = getelementptr inbounds i64, i64* %487, i64 1
  %489 = load i64, i64* %488, align 8
  %490 = trunc i64 %489 to i32
  %491 = load i64*, i64** %17, align 8
  %492 = getelementptr inbounds i64, i64* %491, i64 2
  %493 = load i64, i64* %492, align 8
  %494 = trunc i64 %493 to i32
  %495 = call i32 @sprintf(i8* %482, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %486, i32 %490, i32 %494)
  %496 = load %struct.TYPE_30__*, %struct.TYPE_30__** @entities, align 8
  %497 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %498 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 8
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %496, i64 %500
  %502 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %503 = call i32 @SetKeyValue(%struct.TYPE_30__* %501, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %502)
  %504 = load i64*, i64** %17, align 8
  %505 = load %struct.TYPE_30__*, %struct.TYPE_30__** @entities, align 8
  %506 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %507 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %505, i64 %509
  %511 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %510, i32 0, i32 0
  %512 = load i32, i32* %511, align 4
  %513 = call i32 @VectorCopy(i64* %504, i32 %512)
  %514 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %515 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %514, i32 0, i32 2
  store i32 0, i32* %515, align 8
  br label %525

516:                                              ; preds = %452
  %517 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %518 = call i32 @AddBrushBevels(%struct.TYPE_26__* %517)
  %519 = load i64, i64* @nummapbrushes, align 8
  %520 = add i64 %519, 1
  store i64 %520, i64* @nummapbrushes, align 8
  %521 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %522 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 8
  %524 = add nsw i32 %523, 1
  store i32 %524, i32* %522, align 8
  br label %525

525:                                              ; preds = %516, %470, %462, %416, %399
  ret void
}

declare dso_local i32 @Error(i8*, ...) #1

declare dso_local i32 @PS_ReadToken(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @PS_ExpectTokenString(i32*, i8*) #1

declare dso_local i32 @PS_ExpectAnyToken(i32*, %struct.TYPE_24__*) #1

declare dso_local i8* @atof(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i8* @atol(i32) #1

declare dso_local i32 @FindMiptex(i32) #1

declare dso_local i64 @PS_CheckTokenType(i32*, i32, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @PS_ExpectTokenType(i32*, i32, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @PlaneFromPoints(i32*, i32*, i32*) #1

declare dso_local i32 @Log_Print(i8*, i32, i64) #1

declare dso_local i32 @TexinfoForBrushTexture(i32*, %struct.TYPE_28__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @Q2_BrushContents(%struct.TYPE_26__*) #1

declare dso_local i32 @MakeBrushWindings(%struct.TYPE_26__*) #1

declare dso_local i32 @VectorAdd(i32, i32, i64*) #1

declare dso_local i32 @VectorScale(i64*, double, i64*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @SetKeyValue(%struct.TYPE_30__*, i8*, i8*) #1

declare dso_local i32 @VectorCopy(i64*, i32) #1

declare dso_local i32 @AddBrushBevels(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
