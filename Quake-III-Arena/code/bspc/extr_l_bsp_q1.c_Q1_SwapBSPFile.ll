; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_bsp_q1.c_Q1_SwapBSPFile.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_bsp_q1.c_Q1_SwapBSPFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, i32, i32, i32, i8**, i8**, i8** }
%struct.TYPE_17__ = type { i8** }
%struct.TYPE_18__ = type { i32, i8*, i8** }
%struct.TYPE_16__ = type { i32, i32, i8*** }
%struct.TYPE_21__ = type { i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_19__ = type { i32, i8*, i8*, i8**, i8**, i8** }
%struct.TYPE_20__ = type { i32, i32, i8*, i8*, i8**, i8** }
%struct.TYPE_13__ = type { i32, i8** }
%struct.TYPE_12__ = type { i8** }
%struct.TYPE_15__ = type { i32, i32* }

@q1_nummodels = common dso_local global i32 0, align 4
@q1_dmodels = common dso_local global %struct.TYPE_14__* null, align 8
@Q1_MAX_MAP_HULLS = common dso_local global i32 0, align 4
@q1_numvertexes = common dso_local global i32 0, align 4
@q1_dvertexes = common dso_local global %struct.TYPE_17__* null, align 8
@q1_numplanes = common dso_local global i32 0, align 4
@q1_dplanes = common dso_local global %struct.TYPE_18__* null, align 8
@q1_numtexinfo = common dso_local global i32 0, align 4
@q1_texinfo = common dso_local global %struct.TYPE_16__* null, align 8
@q1_numfaces = common dso_local global i32 0, align 4
@q1_dfaces = common dso_local global %struct.TYPE_21__* null, align 8
@q1_numnodes = common dso_local global i32 0, align 4
@q1_dnodes = common dso_local global %struct.TYPE_19__* null, align 8
@q1_numleafs = common dso_local global i32 0, align 4
@q1_dleafs = common dso_local global %struct.TYPE_20__* null, align 8
@q1_numclipnodes = common dso_local global i32 0, align 4
@q1_dclipnodes = common dso_local global %struct.TYPE_13__* null, align 8
@q1_texdatasize = common dso_local global i64 0, align 8
@q1_dtexdata = common dso_local global i64 0, align 8
@q1_nummarksurfaces = common dso_local global i32 0, align 4
@q1_dmarksurfaces = common dso_local global i8** null, align 8
@q1_numsurfedges = common dso_local global i32 0, align 4
@q1_dsurfedges = common dso_local global i32* null, align 8
@q1_numedges = common dso_local global i32 0, align 4
@q1_dedges = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Q1_SwapBSPFile(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %112, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @q1_nummodels, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %115

12:                                               ; preds = %8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** @q1_dmodels, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i64 %15
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %6, align 8
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %37, %12
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @Q1_MAX_MAP_HULLS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @LittleLong(i32 %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %30, i32* %36, align 4
  br label %37

37:                                               ; preds = %21
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %17

40:                                               ; preds = %17
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @LittleLong(i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @LittleLong(i32 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @LittleLong(i32 %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %108, %40
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 3
  br i1 %64, label %65, label %111

65:                                               ; preds = %62
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 6
  %68 = load i8**, i8*** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i8* @LittleFloat(i8* %72)
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 6
  %76 = load i8**, i8*** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  store i8* %73, i8** %79, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 5
  %82 = load i8**, i8*** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @LittleFloat(i8* %86)
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 5
  %90 = load i8**, i8*** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  store i8* %87, i8** %93, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 4
  %96 = load i8**, i8*** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i8* @LittleFloat(i8* %100)
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 4
  %104 = load i8**, i8*** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  store i8* %101, i8** %107, align 8
  br label %108

108:                                              ; preds = %65
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %4, align 4
  br label %62

111:                                              ; preds = %62
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %3, align 4
  br label %8

115:                                              ; preds = %8
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %149, %115
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* @q1_numvertexes, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %152

120:                                              ; preds = %116
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %145, %120
  %122 = load i32, i32* %4, align 4
  %123 = icmp slt i32 %122, 3
  br i1 %123, label %124, label %148

124:                                              ; preds = %121
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** @q1_dvertexes, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load i8**, i8*** %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = call i8* @LittleFloat(i8* %134)
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** @q1_dvertexes, align 8
  %137 = load i32, i32* %3, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = load i8**, i8*** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  store i8* %135, i8** %144, align 8
  br label %145

145:                                              ; preds = %124
  %146 = load i32, i32* %4, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %4, align 4
  br label %121

148:                                              ; preds = %121
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %3, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %3, align 4
  br label %116

152:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %211, %152
  %154 = load i32, i32* %3, align 4
  %155 = load i32, i32* @q1_numplanes, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %214

157:                                              ; preds = %153
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %182, %157
  %159 = load i32, i32* %4, align 4
  %160 = icmp slt i32 %159, 3
  br i1 %160, label %161, label %185

161:                                              ; preds = %158
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** @q1_dplanes, align 8
  %163 = load i32, i32* %3, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 2
  %167 = load i8**, i8*** %166, align 8
  %168 = load i32, i32* %4, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %167, i64 %169
  %171 = load i8*, i8** %170, align 8
  %172 = call i8* @LittleFloat(i8* %171)
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** @q1_dplanes, align 8
  %174 = load i32, i32* %3, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 2
  %178 = load i8**, i8*** %177, align 8
  %179 = load i32, i32* %4, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %178, i64 %180
  store i8* %172, i8** %181, align 8
  br label %182

182:                                              ; preds = %161
  %183 = load i32, i32* %4, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %4, align 4
  br label %158

185:                                              ; preds = %158
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** @q1_dplanes, align 8
  %187 = load i32, i32* %3, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 1
  %191 = load i8*, i8** %190, align 8
  %192 = call i8* @LittleFloat(i8* %191)
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** @q1_dplanes, align 8
  %194 = load i32, i32* %3, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 1
  store i8* %192, i8** %197, align 8
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** @q1_dplanes, align 8
  %199 = load i32, i32* %3, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i8* @LittleLong(i32 %203)
  %205 = ptrtoint i8* %204 to i32
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** @q1_dplanes, align 8
  %207 = load i32, i32* %3, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 0
  store i32 %205, i32* %210, align 8
  br label %211

211:                                              ; preds = %185
  %212 = load i32, i32* %3, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %3, align 4
  br label %153

214:                                              ; preds = %153
  store i32 0, i32* %3, align 4
  br label %215

215:                                              ; preds = %278, %214
  %216 = load i32, i32* %3, align 4
  %217 = load i32, i32* @q1_numtexinfo, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %281

219:                                              ; preds = %215
  store i32 0, i32* %4, align 4
  br label %220

220:                                              ; preds = %248, %219
  %221 = load i32, i32* %4, align 4
  %222 = icmp slt i32 %221, 8
  br i1 %222, label %223, label %251

223:                                              ; preds = %220
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** @q1_texinfo, align 8
  %225 = load i32, i32* %3, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 2
  %229 = load i8***, i8**** %228, align 8
  %230 = getelementptr inbounds i8**, i8*** %229, i64 0
  %231 = load i8**, i8*** %230, align 8
  %232 = load i32, i32* %4, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8*, i8** %231, i64 %233
  %235 = load i8*, i8** %234, align 8
  %236 = call i8* @LittleFloat(i8* %235)
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** @q1_texinfo, align 8
  %238 = load i32, i32* %3, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 2
  %242 = load i8***, i8**** %241, align 8
  %243 = getelementptr inbounds i8**, i8*** %242, i64 0
  %244 = load i8**, i8*** %243, align 8
  %245 = load i32, i32* %4, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8*, i8** %244, i64 %246
  store i8* %236, i8** %247, align 8
  br label %248

248:                                              ; preds = %223
  %249 = load i32, i32* %4, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %4, align 4
  br label %220

251:                                              ; preds = %220
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** @q1_texinfo, align 8
  %253 = load i32, i32* %3, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = call i8* @LittleLong(i32 %257)
  %259 = ptrtoint i8* %258 to i32
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** @q1_texinfo, align 8
  %261 = load i32, i32* %3, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 0
  store i32 %259, i32* %264, align 8
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** @q1_texinfo, align 8
  %266 = load i32, i32* %3, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = call i8* @LittleLong(i32 %270)
  %272 = ptrtoint i8* %271 to i32
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** @q1_texinfo, align 8
  %274 = load i32, i32* %3, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 1
  store i32 %272, i32* %277, align 4
  br label %278

278:                                              ; preds = %251
  %279 = load i32, i32* %3, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %3, align 4
  br label %215

281:                                              ; preds = %215
  store i32 0, i32* %3, align 4
  br label %282

282:                                              ; preds = %361, %281
  %283 = load i32, i32* %3, align 4
  %284 = load i32, i32* @q1_numfaces, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %364

286:                                              ; preds = %282
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** @q1_dfaces, align 8
  %288 = load i32, i32* %3, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 5
  %292 = load i8*, i8** %291, align 8
  %293 = call i8* @LittleShort(i8* %292)
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** @q1_dfaces, align 8
  %295 = load i32, i32* %3, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %297, i32 0, i32 5
  store i8* %293, i8** %298, align 8
  %299 = load %struct.TYPE_21__*, %struct.TYPE_21__** @q1_dfaces, align 8
  %300 = load i32, i32* %3, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %302, i32 0, i32 4
  %304 = load i8*, i8** %303, align 8
  %305 = call i8* @LittleShort(i8* %304)
  %306 = load %struct.TYPE_21__*, %struct.TYPE_21__** @q1_dfaces, align 8
  %307 = load i32, i32* %3, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %309, i32 0, i32 4
  store i8* %305, i8** %310, align 8
  %311 = load %struct.TYPE_21__*, %struct.TYPE_21__** @q1_dfaces, align 8
  %312 = load i32, i32* %3, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %314, i32 0, i32 3
  %316 = load i8*, i8** %315, align 8
  %317 = call i8* @LittleShort(i8* %316)
  %318 = load %struct.TYPE_21__*, %struct.TYPE_21__** @q1_dfaces, align 8
  %319 = load i32, i32* %3, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %318, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %321, i32 0, i32 3
  store i8* %317, i8** %322, align 8
  %323 = load %struct.TYPE_21__*, %struct.TYPE_21__** @q1_dfaces, align 8
  %324 = load i32, i32* %3, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = call i8* @LittleLong(i32 %328)
  %330 = ptrtoint i8* %329 to i32
  %331 = load %struct.TYPE_21__*, %struct.TYPE_21__** @q1_dfaces, align 8
  %332 = load i32, i32* %3, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %334, i32 0, i32 0
  store i32 %330, i32* %335, align 8
  %336 = load %struct.TYPE_21__*, %struct.TYPE_21__** @q1_dfaces, align 8
  %337 = load i32, i32* %3, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = call i8* @LittleLong(i32 %341)
  %343 = ptrtoint i8* %342 to i32
  %344 = load %struct.TYPE_21__*, %struct.TYPE_21__** @q1_dfaces, align 8
  %345 = load i32, i32* %3, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %347, i32 0, i32 1
  store i32 %343, i32* %348, align 4
  %349 = load %struct.TYPE_21__*, %struct.TYPE_21__** @q1_dfaces, align 8
  %350 = load i32, i32* %3, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %349, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %352, i32 0, i32 2
  %354 = load i8*, i8** %353, align 8
  %355 = call i8* @LittleShort(i8* %354)
  %356 = load %struct.TYPE_21__*, %struct.TYPE_21__** @q1_dfaces, align 8
  %357 = load i32, i32* %3, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %356, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %359, i32 0, i32 2
  store i8* %355, i8** %360, align 8
  br label %361

361:                                              ; preds = %286
  %362 = load i32, i32* %3, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %3, align 4
  br label %282

364:                                              ; preds = %282
  store i32 0, i32* %3, align 4
  br label %365

365:                                              ; preds = %487, %364
  %366 = load i32, i32* %3, align 4
  %367 = load i32, i32* @q1_numnodes, align 4
  %368 = icmp slt i32 %366, %367
  br i1 %368, label %369, label %490

369:                                              ; preds = %365
  %370 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %371 = load i32, i32* %3, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %370, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = call i8* @LittleLong(i32 %375)
  %377 = ptrtoint i8* %376 to i32
  %378 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %379 = load i32, i32* %3, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %378, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %381, i32 0, i32 0
  store i32 %377, i32* %382, align 8
  store i32 0, i32* %4, align 4
  br label %383

383:                                              ; preds = %427, %369
  %384 = load i32, i32* %4, align 4
  %385 = icmp slt i32 %384, 3
  br i1 %385, label %386, label %430

386:                                              ; preds = %383
  %387 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %388 = load i32, i32* %3, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %387, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %390, i32 0, i32 5
  %392 = load i8**, i8*** %391, align 8
  %393 = load i32, i32* %4, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i8*, i8** %392, i64 %394
  %396 = load i8*, i8** %395, align 8
  %397 = call i8* @LittleShort(i8* %396)
  %398 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %399 = load i32, i32* %3, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %398, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %401, i32 0, i32 5
  %403 = load i8**, i8*** %402, align 8
  %404 = load i32, i32* %4, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i8*, i8** %403, i64 %405
  store i8* %397, i8** %406, align 8
  %407 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %408 = load i32, i32* %3, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %407, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %410, i32 0, i32 4
  %412 = load i8**, i8*** %411, align 8
  %413 = load i32, i32* %4, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i8*, i8** %412, i64 %414
  %416 = load i8*, i8** %415, align 8
  %417 = call i8* @LittleShort(i8* %416)
  %418 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %419 = load i32, i32* %3, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %418, i64 %420
  %422 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %421, i32 0, i32 4
  %423 = load i8**, i8*** %422, align 8
  %424 = load i32, i32* %4, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i8*, i8** %423, i64 %425
  store i8* %417, i8** %426, align 8
  br label %427

427:                                              ; preds = %386
  %428 = load i32, i32* %4, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %4, align 4
  br label %383

430:                                              ; preds = %383
  %431 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %432 = load i32, i32* %3, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %431, i64 %433
  %435 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %434, i32 0, i32 3
  %436 = load i8**, i8*** %435, align 8
  %437 = getelementptr inbounds i8*, i8** %436, i64 0
  %438 = load i8*, i8** %437, align 8
  %439 = call i8* @LittleShort(i8* %438)
  %440 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %441 = load i32, i32* %3, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %440, i64 %442
  %444 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %443, i32 0, i32 3
  %445 = load i8**, i8*** %444, align 8
  %446 = getelementptr inbounds i8*, i8** %445, i64 0
  store i8* %439, i8** %446, align 8
  %447 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %448 = load i32, i32* %3, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %447, i64 %449
  %451 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %450, i32 0, i32 3
  %452 = load i8**, i8*** %451, align 8
  %453 = getelementptr inbounds i8*, i8** %452, i64 1
  %454 = load i8*, i8** %453, align 8
  %455 = call i8* @LittleShort(i8* %454)
  %456 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %457 = load i32, i32* %3, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %456, i64 %458
  %460 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %459, i32 0, i32 3
  %461 = load i8**, i8*** %460, align 8
  %462 = getelementptr inbounds i8*, i8** %461, i64 1
  store i8* %455, i8** %462, align 8
  %463 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %464 = load i32, i32* %3, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %463, i64 %465
  %467 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %466, i32 0, i32 2
  %468 = load i8*, i8** %467, align 8
  %469 = call i8* @LittleShort(i8* %468)
  %470 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %471 = load i32, i32* %3, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %470, i64 %472
  %474 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %473, i32 0, i32 2
  store i8* %469, i8** %474, align 8
  %475 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %476 = load i32, i32* %3, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %475, i64 %477
  %479 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %478, i32 0, i32 1
  %480 = load i8*, i8** %479, align 8
  %481 = call i8* @LittleShort(i8* %480)
  %482 = load %struct.TYPE_19__*, %struct.TYPE_19__** @q1_dnodes, align 8
  %483 = load i32, i32* %3, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %482, i64 %484
  %486 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %485, i32 0, i32 1
  store i8* %481, i8** %486, align 8
  br label %487

487:                                              ; preds = %430
  %488 = load i32, i32* %3, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %3, align 4
  br label %365

490:                                              ; preds = %365
  store i32 0, i32* %3, align 4
  br label %491

491:                                              ; preds = %594, %490
  %492 = load i32, i32* %3, align 4
  %493 = load i32, i32* @q1_numleafs, align 4
  %494 = icmp slt i32 %492, %493
  br i1 %494, label %495, label %597

495:                                              ; preds = %491
  %496 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_dleafs, align 8
  %497 = load i32, i32* %3, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %496, i64 %498
  %500 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 8
  %502 = call i8* @LittleLong(i32 %501)
  %503 = ptrtoint i8* %502 to i32
  %504 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_dleafs, align 8
  %505 = load i32, i32* %3, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %504, i64 %506
  %508 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %507, i32 0, i32 0
  store i32 %503, i32* %508, align 8
  store i32 0, i32* %4, align 4
  br label %509

509:                                              ; preds = %553, %495
  %510 = load i32, i32* %4, align 4
  %511 = icmp slt i32 %510, 3
  br i1 %511, label %512, label %556

512:                                              ; preds = %509
  %513 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_dleafs, align 8
  %514 = load i32, i32* %3, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %513, i64 %515
  %517 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %516, i32 0, i32 5
  %518 = load i8**, i8*** %517, align 8
  %519 = load i32, i32* %4, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i8*, i8** %518, i64 %520
  %522 = load i8*, i8** %521, align 8
  %523 = call i8* @LittleShort(i8* %522)
  %524 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_dleafs, align 8
  %525 = load i32, i32* %3, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %524, i64 %526
  %528 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %527, i32 0, i32 5
  %529 = load i8**, i8*** %528, align 8
  %530 = load i32, i32* %4, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds i8*, i8** %529, i64 %531
  store i8* %523, i8** %532, align 8
  %533 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_dleafs, align 8
  %534 = load i32, i32* %3, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %533, i64 %535
  %537 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %536, i32 0, i32 4
  %538 = load i8**, i8*** %537, align 8
  %539 = load i32, i32* %4, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds i8*, i8** %538, i64 %540
  %542 = load i8*, i8** %541, align 8
  %543 = call i8* @LittleShort(i8* %542)
  %544 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_dleafs, align 8
  %545 = load i32, i32* %3, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %544, i64 %546
  %548 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %547, i32 0, i32 4
  %549 = load i8**, i8*** %548, align 8
  %550 = load i32, i32* %4, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i8*, i8** %549, i64 %551
  store i8* %543, i8** %552, align 8
  br label %553

553:                                              ; preds = %512
  %554 = load i32, i32* %4, align 4
  %555 = add nsw i32 %554, 1
  store i32 %555, i32* %4, align 4
  br label %509

556:                                              ; preds = %509
  %557 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_dleafs, align 8
  %558 = load i32, i32* %3, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %557, i64 %559
  %561 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %560, i32 0, i32 3
  %562 = load i8*, i8** %561, align 8
  %563 = call i8* @LittleShort(i8* %562)
  %564 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_dleafs, align 8
  %565 = load i32, i32* %3, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %564, i64 %566
  %568 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %567, i32 0, i32 3
  store i8* %563, i8** %568, align 8
  %569 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_dleafs, align 8
  %570 = load i32, i32* %3, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %569, i64 %571
  %573 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %572, i32 0, i32 2
  %574 = load i8*, i8** %573, align 8
  %575 = call i8* @LittleShort(i8* %574)
  %576 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_dleafs, align 8
  %577 = load i32, i32* %3, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %576, i64 %578
  %580 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %579, i32 0, i32 2
  store i8* %575, i8** %580, align 8
  %581 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_dleafs, align 8
  %582 = load i32, i32* %3, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %581, i64 %583
  %585 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %584, i32 0, i32 1
  %586 = load i32, i32* %585, align 4
  %587 = call i8* @LittleLong(i32 %586)
  %588 = ptrtoint i8* %587 to i32
  %589 = load %struct.TYPE_20__*, %struct.TYPE_20__** @q1_dleafs, align 8
  %590 = load i32, i32* %3, align 4
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %589, i64 %591
  %593 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %592, i32 0, i32 1
  store i32 %588, i32* %593, align 4
  br label %594

594:                                              ; preds = %556
  %595 = load i32, i32* %3, align 4
  %596 = add nsw i32 %595, 1
  store i32 %596, i32* %3, align 4
  br label %491

597:                                              ; preds = %491
  store i32 0, i32* %3, align 4
  br label %598

598:                                              ; preds = %648, %597
  %599 = load i32, i32* %3, align 4
  %600 = load i32, i32* @q1_numclipnodes, align 4
  %601 = icmp slt i32 %599, %600
  br i1 %601, label %602, label %651

602:                                              ; preds = %598
  %603 = load %struct.TYPE_13__*, %struct.TYPE_13__** @q1_dclipnodes, align 8
  %604 = load i32, i32* %3, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %603, i64 %605
  %607 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %606, i32 0, i32 0
  %608 = load i32, i32* %607, align 8
  %609 = call i8* @LittleLong(i32 %608)
  %610 = ptrtoint i8* %609 to i32
  %611 = load %struct.TYPE_13__*, %struct.TYPE_13__** @q1_dclipnodes, align 8
  %612 = load i32, i32* %3, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %611, i64 %613
  %615 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %614, i32 0, i32 0
  store i32 %610, i32* %615, align 8
  %616 = load %struct.TYPE_13__*, %struct.TYPE_13__** @q1_dclipnodes, align 8
  %617 = load i32, i32* %3, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %616, i64 %618
  %620 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %619, i32 0, i32 1
  %621 = load i8**, i8*** %620, align 8
  %622 = getelementptr inbounds i8*, i8** %621, i64 0
  %623 = load i8*, i8** %622, align 8
  %624 = call i8* @LittleShort(i8* %623)
  %625 = load %struct.TYPE_13__*, %struct.TYPE_13__** @q1_dclipnodes, align 8
  %626 = load i32, i32* %3, align 4
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %625, i64 %627
  %629 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %628, i32 0, i32 1
  %630 = load i8**, i8*** %629, align 8
  %631 = getelementptr inbounds i8*, i8** %630, i64 0
  store i8* %624, i8** %631, align 8
  %632 = load %struct.TYPE_13__*, %struct.TYPE_13__** @q1_dclipnodes, align 8
  %633 = load i32, i32* %3, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %632, i64 %634
  %636 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %635, i32 0, i32 1
  %637 = load i8**, i8*** %636, align 8
  %638 = getelementptr inbounds i8*, i8** %637, i64 1
  %639 = load i8*, i8** %638, align 8
  %640 = call i8* @LittleShort(i8* %639)
  %641 = load %struct.TYPE_13__*, %struct.TYPE_13__** @q1_dclipnodes, align 8
  %642 = load i32, i32* %3, align 4
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %641, i64 %643
  %645 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %644, i32 0, i32 1
  %646 = load i8**, i8*** %645, align 8
  %647 = getelementptr inbounds i8*, i8** %646, i64 1
  store i8* %640, i8** %647, align 8
  br label %648

648:                                              ; preds = %602
  %649 = load i32, i32* %3, align 4
  %650 = add nsw i32 %649, 1
  store i32 %650, i32* %3, align 4
  br label %598

651:                                              ; preds = %598
  %652 = load i64, i64* @q1_texdatasize, align 8
  %653 = icmp ne i64 %652, 0
  br i1 %653, label %654, label %701

654:                                              ; preds = %651
  %655 = load i64, i64* @q1_dtexdata, align 8
  %656 = inttoptr i64 %655 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %656, %struct.TYPE_15__** %7, align 8
  %657 = load i64, i64* %2, align 8
  %658 = icmp ne i64 %657, 0
  br i1 %658, label %659, label %663

659:                                              ; preds = %654
  %660 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %661 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %660, i32 0, i32 0
  %662 = load i32, i32* %661, align 8
  store i32 %662, i32* %5, align 4
  br label %669

663:                                              ; preds = %654
  %664 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %665 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %664, i32 0, i32 0
  %666 = load i32, i32* %665, align 8
  %667 = call i8* @LittleLong(i32 %666)
  %668 = ptrtoint i8* %667 to i32
  store i32 %668, i32* %5, align 4
  br label %669

669:                                              ; preds = %663, %659
  %670 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %671 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %670, i32 0, i32 0
  %672 = load i32, i32* %671, align 8
  %673 = call i8* @LittleLong(i32 %672)
  %674 = ptrtoint i8* %673 to i32
  %675 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %676 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %675, i32 0, i32 0
  store i32 %674, i32* %676, align 8
  store i32 0, i32* %3, align 4
  br label %677

677:                                              ; preds = %697, %669
  %678 = load i32, i32* %3, align 4
  %679 = load i32, i32* %5, align 4
  %680 = icmp slt i32 %678, %679
  br i1 %680, label %681, label %700

681:                                              ; preds = %677
  %682 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %683 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %682, i32 0, i32 1
  %684 = load i32*, i32** %683, align 8
  %685 = load i32, i32* %3, align 4
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds i32, i32* %684, i64 %686
  %688 = load i32, i32* %687, align 4
  %689 = call i8* @LittleLong(i32 %688)
  %690 = ptrtoint i8* %689 to i32
  %691 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %692 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %691, i32 0, i32 1
  %693 = load i32*, i32** %692, align 8
  %694 = load i32, i32* %3, align 4
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds i32, i32* %693, i64 %695
  store i32 %690, i32* %696, align 4
  br label %697

697:                                              ; preds = %681
  %698 = load i32, i32* %3, align 4
  %699 = add nsw i32 %698, 1
  store i32 %699, i32* %3, align 4
  br label %677

700:                                              ; preds = %677
  br label %701

701:                                              ; preds = %700, %651
  store i32 0, i32* %3, align 4
  br label %702

702:                                              ; preds = %717, %701
  %703 = load i32, i32* %3, align 4
  %704 = load i32, i32* @q1_nummarksurfaces, align 4
  %705 = icmp slt i32 %703, %704
  br i1 %705, label %706, label %720

706:                                              ; preds = %702
  %707 = load i8**, i8*** @q1_dmarksurfaces, align 8
  %708 = load i32, i32* %3, align 4
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds i8*, i8** %707, i64 %709
  %711 = load i8*, i8** %710, align 8
  %712 = call i8* @LittleShort(i8* %711)
  %713 = load i8**, i8*** @q1_dmarksurfaces, align 8
  %714 = load i32, i32* %3, align 4
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds i8*, i8** %713, i64 %715
  store i8* %712, i8** %716, align 8
  br label %717

717:                                              ; preds = %706
  %718 = load i32, i32* %3, align 4
  %719 = add nsw i32 %718, 1
  store i32 %719, i32* %3, align 4
  br label %702

720:                                              ; preds = %702
  store i32 0, i32* %3, align 4
  br label %721

721:                                              ; preds = %737, %720
  %722 = load i32, i32* %3, align 4
  %723 = load i32, i32* @q1_numsurfedges, align 4
  %724 = icmp slt i32 %722, %723
  br i1 %724, label %725, label %740

725:                                              ; preds = %721
  %726 = load i32*, i32** @q1_dsurfedges, align 8
  %727 = load i32, i32* %3, align 4
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds i32, i32* %726, i64 %728
  %730 = load i32, i32* %729, align 4
  %731 = call i8* @LittleLong(i32 %730)
  %732 = ptrtoint i8* %731 to i32
  %733 = load i32*, i32** @q1_dsurfedges, align 8
  %734 = load i32, i32* %3, align 4
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds i32, i32* %733, i64 %735
  store i32 %732, i32* %736, align 4
  br label %737

737:                                              ; preds = %725
  %738 = load i32, i32* %3, align 4
  %739 = add nsw i32 %738, 1
  store i32 %739, i32* %3, align 4
  br label %721

740:                                              ; preds = %721
  store i32 0, i32* %3, align 4
  br label %741

741:                                              ; preds = %778, %740
  %742 = load i32, i32* %3, align 4
  %743 = load i32, i32* @q1_numedges, align 4
  %744 = icmp slt i32 %742, %743
  br i1 %744, label %745, label %781

745:                                              ; preds = %741
  %746 = load %struct.TYPE_12__*, %struct.TYPE_12__** @q1_dedges, align 8
  %747 = load i32, i32* %3, align 4
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %746, i64 %748
  %750 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %749, i32 0, i32 0
  %751 = load i8**, i8*** %750, align 8
  %752 = getelementptr inbounds i8*, i8** %751, i64 0
  %753 = load i8*, i8** %752, align 8
  %754 = call i8* @LittleShort(i8* %753)
  %755 = load %struct.TYPE_12__*, %struct.TYPE_12__** @q1_dedges, align 8
  %756 = load i32, i32* %3, align 4
  %757 = sext i32 %756 to i64
  %758 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %755, i64 %757
  %759 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %758, i32 0, i32 0
  %760 = load i8**, i8*** %759, align 8
  %761 = getelementptr inbounds i8*, i8** %760, i64 0
  store i8* %754, i8** %761, align 8
  %762 = load %struct.TYPE_12__*, %struct.TYPE_12__** @q1_dedges, align 8
  %763 = load i32, i32* %3, align 4
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %762, i64 %764
  %766 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %765, i32 0, i32 0
  %767 = load i8**, i8*** %766, align 8
  %768 = getelementptr inbounds i8*, i8** %767, i64 1
  %769 = load i8*, i8** %768, align 8
  %770 = call i8* @LittleShort(i8* %769)
  %771 = load %struct.TYPE_12__*, %struct.TYPE_12__** @q1_dedges, align 8
  %772 = load i32, i32* %3, align 4
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %771, i64 %773
  %775 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %774, i32 0, i32 0
  %776 = load i8**, i8*** %775, align 8
  %777 = getelementptr inbounds i8*, i8** %776, i64 1
  store i8* %770, i8** %777, align 8
  br label %778

778:                                              ; preds = %745
  %779 = load i32, i32* %3, align 4
  %780 = add nsw i32 %779, 1
  store i32 %780, i32* %3, align 4
  br label %741

781:                                              ; preds = %741
  ret void
}

declare dso_local i8* @LittleLong(i32) #1

declare dso_local i8* @LittleFloat(i8*) #1

declare dso_local i8* @LittleShort(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
