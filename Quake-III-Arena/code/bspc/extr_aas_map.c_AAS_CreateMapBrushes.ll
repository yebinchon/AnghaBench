; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_map.c_AAS_CreateMapBrushes.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_map.c_AAS_CreateMapBrushes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i64, i64 }

@nummapbrushsides = common dso_local global i32 0, align 4
@CONTENTS_DETAIL = common dso_local global i32 0, align 4
@CONTENTS_AREAPORTAL = common dso_local global i32 0, align 4
@CONTENTS_CLUSTERPORTAL = common dso_local global i32 0, align 4
@CONTENTS_WINDOW = common dso_local global i32 0, align 4
@CONTENTS_PLAYERCLIP = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@CONTENTS_BOTCLIP = common dso_local global i32 0, align 4
@CONTENTS_LADDER = common dso_local global i32 0, align 4
@CONTENTS_DONOTENTER = common dso_local global i32 0, align 4
@CONTENTS_TELEPORTER = common dso_local global i32 0, align 4
@CONTENTS_JUMPPAD = common dso_local global i32 0, align 4
@CONTENTS_WATER = common dso_local global i32 0, align 4
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_MOVER = common dso_local global i32 0, align 4
@entities = common dso_local global %struct.TYPE_21__* null, align 8
@nummapbrushes = common dso_local global i32 0, align 4
@cfg = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_CreateMapBrushes(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [16 x %struct.TYPE_20__*], align 16
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %10 = call i32 @AAS_ValidEntity(%struct.TYPE_21__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @nummapbrushsides, align 4
  %17 = sext i32 %16 to i64
  %18 = sub nsw i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* @nummapbrushsides, align 4
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  br label %266

22:                                               ; preds = %3
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %25 = call i32 @AAS_PositionBrush(%struct.TYPE_21__* %23, %struct.TYPE_20__* %24)
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %27 = call i32 @AAS_SetTexinfo(%struct.TYPE_20__* %26)
  %28 = load i32, i32* @CONTENTS_DETAIL, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CONTENTS_AREAPORTAL, align 4
  %38 = load i32, i32* @CONTENTS_CLUSTERPORTAL, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %22
  %43 = load i32, i32* @CONTENTS_CLUSTERPORTAL, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  store i32 -1, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %22
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @CONTENTS_WINDOW, align 4
  %53 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %48
  %58 = load i32, i32* @CONTENTS_WINDOW, align 4
  %59 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %60 = or i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* @CONTENTS_SOLID, align 4
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 1
  store i32 -1, i32* %72, align 4
  br label %73

73:                                               ; preds = %57, %48
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @CONTENTS_BOTCLIP, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i32, i32* @CONTENTS_SOLID, align 4
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 1
  store i32 -1, i32* %85, align 4
  br label %86

86:                                               ; preds = %80, %73
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @CONTENTS_SOLID, align 4
  %91 = load i32, i32* @CONTENTS_LADDER, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @CONTENTS_CLUSTERPORTAL, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @CONTENTS_DONOTENTER, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @CONTENTS_TELEPORTER, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @CONTENTS_JUMPPAD, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @CONTENTS_WATER, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @CONTENTS_LAVA, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @CONTENTS_SLIME, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @CONTENTS_MOVER, align 4
  %108 = or i32 %106, %107
  %109 = and i32 %89, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %121, label %111

111:                                              ; preds = %86
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* @nummapbrushsides, align 4
  %116 = sext i32 %115 to i64
  %117 = sub nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* @nummapbrushsides, align 4
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 3
  store i64 0, i64* %120, align 8
  br label %266

121:                                              ; preds = %86
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %126 = call i32 @AAS_MakeBrushWindings(%struct.TYPE_20__* %125)
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %128 = call i32 @AddBrushBevels(%struct.TYPE_20__* %127)
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %130 = call i32 @FreeBrushWindings(%struct.TYPE_20__* %129)
  br label %131

131:                                              ; preds = %124, %121
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** @entities, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i64 0
  store %struct.TYPE_21__* %133, %struct.TYPE_21__** %5, align 8
  %134 = load i32, i32* @nummapbrushes, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* @nummapbrushes, align 4
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @CONTENTS_WATER, align 4
  %144 = load i32, i32* @CONTENTS_LAVA, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @CONTENTS_SLIME, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @CONTENTS_TELEPORTER, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @CONTENTS_JUMPPAD, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @CONTENTS_DONOTENTER, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @CONTENTS_MOVER, align 4
  %155 = or i32 %153, %154
  %156 = and i32 %142, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %173

158:                                              ; preds = %131
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 2
  store i64 0, i64* %160, align 8
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @cfg, i32 0, i32 1), align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i64 0
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @cfg, i32 0, i32 1), align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i64 0
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @AAS_ExpandMapBrush(%struct.TYPE_20__* %161, i32 %165, i32 %169)
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %172 = call i32 @AAS_MakeBrushWindings(%struct.TYPE_20__* %171)
  br label %266

173:                                              ; preds = %131
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @CONTENTS_CLUSTERPORTAL, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %195

180:                                              ; preds = %173
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 2
  store i64 0, i64* %182, align 8
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @cfg, i32 0, i32 1), align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i64 0
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @cfg, i32 0, i32 1), align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i64 0
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @AAS_ExpandMapBrush(%struct.TYPE_20__* %183, i32 %187, i32 %191)
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %194 = call i32 @AAS_MakeBrushWindings(%struct.TYPE_20__* %193)
  br label %265

195:                                              ; preds = %173
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @CONTENTS_SOLID, align 4
  %200 = load i32, i32* @CONTENTS_LADDER, align 4
  %201 = or i32 %199, %200
  %202 = and i32 %198, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %264

204:                                              ; preds = %195
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %206 = getelementptr inbounds [16 x %struct.TYPE_20__*], [16 x %struct.TYPE_20__*]* %8, i64 0, i64 0
  store %struct.TYPE_20__* %205, %struct.TYPE_20__** %206, align 16
  store i32 1, i32* %7, align 4
  br label %207

207:                                              ; preds = %218, %204
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @cfg, i32 0, i32 0), align 8
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %221

211:                                              ; preds = %207
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %214 = call %struct.TYPE_20__* @AAS_CopyMapBrush(%struct.TYPE_20__* %212, %struct.TYPE_21__* %213)
  %215 = load i32, i32* %7, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [16 x %struct.TYPE_20__*], [16 x %struct.TYPE_20__*]* %8, i64 0, i64 %216
  store %struct.TYPE_20__* %214, %struct.TYPE_20__** %217, align 8
  br label %218

218:                                              ; preds = %211
  %219 = load i32, i32* %7, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %7, align 4
  br label %207

221:                                              ; preds = %207
  store i32 0, i32* %7, align 4
  br label %222

222:                                              ; preds = %260, %221
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @cfg, i32 0, i32 0), align 8
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %263

226:                                              ; preds = %222
  %227 = load i32, i32* %7, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [16 x %struct.TYPE_20__*], [16 x %struct.TYPE_20__*]* %8, i64 0, i64 %228
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %229, align 8
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @cfg, i32 0, i32 1), align 8
  %232 = load i32, i32* %7, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @cfg, i32 0, i32 1), align 8
  %238 = load i32, i32* %7, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @AAS_ExpandMapBrush(%struct.TYPE_20__* %230, i32 %236, i32 %242)
  %244 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @cfg, i32 0, i32 1), align 8
  %245 = load i32, i32* %7, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i32, i32* %7, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [16 x %struct.TYPE_20__*], [16 x %struct.TYPE_20__*]* %8, i64 0, i64 %251
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i32 0, i32 2
  store i64 %249, i64* %254, align 8
  %255 = load i32, i32* %7, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [16 x %struct.TYPE_20__*], [16 x %struct.TYPE_20__*]* %8, i64 0, i64 %256
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %257, align 8
  %259 = call i32 @AAS_MakeBrushWindings(%struct.TYPE_20__* %258)
  br label %260

260:                                              ; preds = %226
  %261 = load i32, i32* %7, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %7, align 4
  br label %222

263:                                              ; preds = %222
  br label %264

264:                                              ; preds = %263, %195
  br label %265

265:                                              ; preds = %264, %180
  br label %266

266:                                              ; preds = %12, %111, %265, %158
  ret void
}

declare dso_local i32 @AAS_ValidEntity(%struct.TYPE_21__*) #1

declare dso_local i32 @AAS_PositionBrush(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @AAS_SetTexinfo(%struct.TYPE_20__*) #1

declare dso_local i32 @AAS_MakeBrushWindings(%struct.TYPE_20__*) #1

declare dso_local i32 @AddBrushBevels(%struct.TYPE_20__*) #1

declare dso_local i32 @FreeBrushWindings(%struct.TYPE_20__*) #1

declare dso_local i32 @AAS_ExpandMapBrush(%struct.TYPE_20__*, i32, i32) #1

declare dso_local %struct.TYPE_20__* @AAS_CopyMapBrush(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
