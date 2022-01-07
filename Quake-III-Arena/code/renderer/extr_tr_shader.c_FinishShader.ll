; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shader.c_FinishShader.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shader.c_FinishShader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i64, i32, i64, i64 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__*, i64, i8* }
%struct.TYPE_14__ = type { i64, i64, i32* }
%struct.TYPE_17__ = type { i32 (i32, i8*, i32)* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_13__ = type { i64 }

@qfalse = common dso_local global i8* null, align 8
@shader = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@SS_ENVIRONMENT = common dso_local global i64 0, align 8
@SS_DECAL = common dso_local global i64 0, align 8
@MAX_SHADER_STAGES = common dso_local global i32 0, align 4
@stages = common dso_local global %struct.TYPE_15__* null, align 8
@ri = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Shader %s has a stage with no image\0A\00", align 1
@r_detailTextures = common dso_local global %struct.TYPE_20__* null, align 8
@TCGEN_BAD = common dso_local global i64 0, align 8
@TCGEN_LIGHTMAP = common dso_local global i64 0, align 8
@qtrue = common dso_local global i8* null, align 8
@TCGEN_TEXTURE = common dso_local global i64 0, align 8
@GLS_SRCBLEND_BITS = common dso_local global i32 0, align 4
@GLS_DSTBLEND_BITS = common dso_local global i32 0, align 4
@GLS_SRCBLEND_ONE = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ONE = common dso_local global i32 0, align 4
@GLS_SRCBLEND_ZERO = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ONE_MINUS_SRC_COLOR = common dso_local global i32 0, align 4
@ACFF_MODULATE_RGB = common dso_local global i32 0, align 4
@GLS_SRCBLEND_SRC_ALPHA = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA = common dso_local global i32 0, align 4
@ACFF_MODULATE_ALPHA = common dso_local global i32 0, align 4
@ACFF_MODULATE_RGBA = common dso_local global i32 0, align 4
@GLS_DEPTHMASK_TRUE = common dso_local global i32 0, align 4
@SS_SEE_THROUGH = common dso_local global i64 0, align 8
@SS_BLEND0 = common dso_local global i64 0, align 8
@SS_OPAQUE = common dso_local global i64 0, align 8
@r_vertexLight = common dso_local global %struct.TYPE_18__* null, align 8
@r_uiFullScreen = common dso_local global %struct.TYPE_19__* null, align 8
@glConfig = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@GLHW_PERMEDIA2 = common dso_local global i64 0, align 8
@PRINT_DEVELOPER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"WARNING: shader '%s' has VERTEX forced lightmap!\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"WARNING: shader '%s' has lightmap but no lightmap stage!\0A\00", align 1
@LIGHTMAP_NONE = common dso_local global i64 0, align 8
@SS_FOG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @FinishShader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @FinishShader() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i8*, i8** @qfalse, align 8
  store i8* %7, i8** %2, align 8
  %8 = load i8*, i8** @qfalse, align 8
  store i8* %8, i8** %3, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 5), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = load i64, i64* @SS_ENVIRONMENT, align 8
  store i64 %12, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 2), align 8
  br label %13

13:                                               ; preds = %11, %0
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 4), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 2), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* @SS_DECAL, align 8
  store i64 %20, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 2), align 8
  br label %21

21:                                               ; preds = %19, %16, %13
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %221, %21
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @MAX_SHADER_STAGES, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %224

26:                                               ; preds = %22
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** @stages, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i64 %29
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %4, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 4
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  br label %224

36:                                               ; preds = %26
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %36
  %47 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ri, i32 0, i32 0), align 8
  %48 = load i32, i32* @PRINT_WARNING, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 3), align 8
  %50 = call i32 %47(i32 %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i8*, i8** @qfalse, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  br label %221

54:                                               ; preds = %36
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %54
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** @r_detailTextures, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %85, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %1, align 4
  %66 = load i32, i32* @MAX_SHADER_STAGES, align 4
  %67 = sub nsw i32 %66, 1
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %64
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i64 1
  %73 = load i32, i32* @MAX_SHADER_STAGES, align 4
  %74 = load i32, i32* %1, align 4
  %75 = sub nsw i32 %73, %74
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = mul i64 32, %77
  %79 = trunc i64 %78 to i32
  %80 = call i32 @memmove(%struct.TYPE_15__* %70, %struct.TYPE_15__* %72, i32 %79)
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i64 1
  %83 = call i32 @Com_Memset(%struct.TYPE_15__* %82, i32 0, i32 32)
  br label %84

84:                                               ; preds = %69, %64
  br label %221

85:                                               ; preds = %59, %54
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %111

93:                                               ; preds = %85
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @TCGEN_BAD, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %93
  %103 = load i64, i64* @TCGEN_LIGHTMAP, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  store i64 %103, i64* %108, align 8
  br label %109

109:                                              ; preds = %102, %93
  %110 = load i8*, i8** @qtrue, align 8
  store i8* %110, i8** %2, align 8
  br label %128

111:                                              ; preds = %85
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @TCGEN_BAD, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %111
  %121 = load i64, i64* @TCGEN_TEXTURE, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  store i64 %121, i64* %126, align 8
  br label %127

127:                                              ; preds = %120, %111
  br label %128

128:                                              ; preds = %127, %109
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @GLS_SRCBLEND_BITS, align 4
  %133 = load i32, i32* @GLS_DSTBLEND_BITS, align 4
  %134 = or i32 %132, %133
  %135 = and i32 %131, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %220

137:                                              ; preds = %128
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** @stages, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @GLS_SRCBLEND_BITS, align 4
  %143 = load i32, i32* @GLS_DSTBLEND_BITS, align 4
  %144 = or i32 %142, %143
  %145 = and i32 %141, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %220

147:                                              ; preds = %137
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @GLS_SRCBLEND_BITS, align 4
  %152 = and i32 %150, %151
  store i32 %152, i32* %5, align 4
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @GLS_DSTBLEND_BITS, align 4
  %157 = and i32 %155, %156
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @GLS_SRCBLEND_ONE, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %147
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* @GLS_DSTBLEND_ONE, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %173, label %165

165:                                              ; preds = %161, %147
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* @GLS_SRCBLEND_ZERO, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %165
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* @GLS_DSTBLEND_ONE_MINUS_SRC_COLOR, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %169, %161
  %174 = load i32, i32* @ACFF_MODULATE_RGB, align 4
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  br label %204

177:                                              ; preds = %169, %165
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* @GLS_SRCBLEND_SRC_ALPHA, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %189

181:                                              ; preds = %177
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* @GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %181
  %186 = load i32, i32* @ACFF_MODULATE_ALPHA, align 4
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  br label %203

189:                                              ; preds = %181, %177
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* @GLS_SRCBLEND_ONE, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %201

193:                                              ; preds = %189
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* @GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %193
  %198 = load i32, i32* @ACFF_MODULATE_RGBA, align 4
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  br label %202

201:                                              ; preds = %193, %189
  br label %202

202:                                              ; preds = %201, %197
  br label %203

203:                                              ; preds = %202, %185
  br label %204

204:                                              ; preds = %203, %173
  %205 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 2), align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %219, label %207

207:                                              ; preds = %204
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @GLS_DEPTHMASK_TRUE, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %207
  %215 = load i64, i64* @SS_SEE_THROUGH, align 8
  store i64 %215, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 2), align 8
  br label %218

216:                                              ; preds = %207
  %217 = load i64, i64* @SS_BLEND0, align 8
  store i64 %217, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 2), align 8
  br label %218

218:                                              ; preds = %216, %214
  br label %219

219:                                              ; preds = %218, %204
  br label %220

220:                                              ; preds = %219, %137, %128
  br label %221

221:                                              ; preds = %220, %84, %46
  %222 = load i32, i32* %1, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %1, align 4
  br label %22

224:                                              ; preds = %35, %22
  %225 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 2), align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %224
  %228 = load i64, i64* @SS_OPAQUE, align 8
  store i64 %228, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 2), align 8
  br label %229

229:                                              ; preds = %227, %224
  %230 = load i32, i32* %1, align 4
  %231 = icmp sgt i32 %230, 1
  br i1 %231, label %232, label %249

232:                                              ; preds = %229
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** @r_vertexLight, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %232
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** @r_uiFullScreen, align 8
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %237, %232
  %243 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @glConfig, i32 0, i32 0), align 8
  %244 = load i64, i64* @GLHW_PERMEDIA2, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %242, %237
  %247 = call i32 (...) @VertexLightingCollapse()
  store i32 1, i32* %1, align 4
  %248 = load i8*, i8** @qfalse, align 8
  store i8* %248, i8** %2, align 8
  br label %249

249:                                              ; preds = %246, %242, %229
  %250 = load i32, i32* %1, align 4
  %251 = icmp sgt i32 %250, 1
  br i1 %251, label %252, label %258

252:                                              ; preds = %249
  %253 = call i64 (...) @CollapseMultitexture()
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  %256 = load i32, i32* %1, align 4
  %257 = add nsw i32 %256, -1
  store i32 %257, i32* %1, align 4
  br label %258

258:                                              ; preds = %255, %252, %249
  %259 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 0), align 8
  %260 = icmp sge i64 %259, 0
  br i1 %260, label %261, label %279

261:                                              ; preds = %258
  %262 = load i8*, i8** %2, align 8
  %263 = icmp ne i8* %262, null
  br i1 %263, label %279, label %264

264:                                              ; preds = %261
  %265 = load i8*, i8** %3, align 8
  %266 = icmp ne i8* %265, null
  br i1 %266, label %267, label %272

267:                                              ; preds = %264
  %268 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ri, i32 0, i32 0), align 8
  %269 = load i32, i32* @PRINT_DEVELOPER, align 4
  %270 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 3), align 8
  %271 = call i32 %268(i32 %269, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %270)
  br label %278

272:                                              ; preds = %264
  %273 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ri, i32 0, i32 0), align 8
  %274 = load i32, i32* @PRINT_DEVELOPER, align 4
  %275 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 3), align 8
  %276 = call i32 %273(i32 %274, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %275)
  %277 = load i64, i64* @LIGHTMAP_NONE, align 8
  store i64 %277, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 0), align 8
  br label %278

278:                                              ; preds = %272, %267
  br label %279

279:                                              ; preds = %278, %261, %258
  %280 = load i32, i32* %1, align 4
  store i32 %280, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 1), align 8
  %281 = load i32, i32* %1, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %279
  %284 = load i64, i64* @SS_FOG, align 8
  store i64 %284, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shader, i32 0, i32 2), align 8
  br label %285

285:                                              ; preds = %283, %279
  %286 = call i32 (...) @ComputeStageIteratorFunc()
  %287 = call i32* (...) @GeneratePermanentShader()
  ret i32* %287
}

declare dso_local i32 @memmove(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @Com_Memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @VertexLightingCollapse(...) #1

declare dso_local i64 @CollapseMultitexture(...) #1

declare dso_local i32 @ComputeStageIteratorFunc(...) #1

declare dso_local i32* @GeneratePermanentShader(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
