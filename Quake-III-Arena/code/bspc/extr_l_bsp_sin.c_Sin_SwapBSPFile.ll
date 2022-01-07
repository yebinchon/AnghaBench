; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_bsp_sin.c_Sin_SwapBSPFile.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_bsp_sin.c_Sin_SwapBSPFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, i8**, i8**, i8** }
%struct.TYPE_26__ = type { i8** }
%struct.TYPE_27__ = type { i32, i8*, i8** }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*** }
%struct.TYPE_16__ = type { i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_28__ = type { i32, i32*, i8*, i8*, i8**, i8** }
%struct.TYPE_29__ = type { i32, i8*, i8*, i8*, i8*, i8**, i8**, i8*, i8* }
%struct.TYPE_17__ = type { i8** }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i8*, i8* }
%struct.TYPE_25__ = type { i32, i32** }
%struct.TYPE_24__ = type { i32, i8*, i8*, i8*, i8** }

@sin_nummodels = common dso_local global i32 0, align 4
@sin_dmodels = common dso_local global %struct.TYPE_22__* null, align 8
@sin_numvertexes = common dso_local global i32 0, align 4
@sin_dvertexes = common dso_local global %struct.TYPE_26__* null, align 8
@sin_numplanes = common dso_local global i32 0, align 4
@sin_dplanes = common dso_local global %struct.TYPE_27__* null, align 8
@sin_numtexinfo = common dso_local global i32 0, align 4
@sin_texinfo = common dso_local global %struct.TYPE_23__* null, align 8
@sin_numfaces = common dso_local global i32 0, align 4
@sin_dfaces = common dso_local global %struct.TYPE_16__* null, align 8
@sin_numnodes = common dso_local global i32 0, align 4
@sin_dnodes = common dso_local global %struct.TYPE_28__* null, align 8
@sin_numleafs = common dso_local global i32 0, align 4
@sin_dleafs = common dso_local global %struct.TYPE_29__* null, align 8
@sin_numleaffaces = common dso_local global i32 0, align 4
@sin_dleaffaces = common dso_local global i8** null, align 8
@sin_numleafbrushes = common dso_local global i32 0, align 4
@sin_dleafbrushes = common dso_local global i8** null, align 8
@sin_numsurfedges = common dso_local global i32 0, align 4
@sin_dsurfedges = common dso_local global i32* null, align 8
@sin_numedges = common dso_local global i32 0, align 4
@sin_dedges = common dso_local global %struct.TYPE_17__* null, align 8
@sin_numbrushes = common dso_local global i32 0, align 4
@sin_dbrushes = common dso_local global %struct.TYPE_19__* null, align 8
@sin_numareas = common dso_local global i32 0, align 4
@sin_dareas = common dso_local global %struct.TYPE_20__* null, align 8
@sin_numareaportals = common dso_local global i32 0, align 4
@sin_dareaportals = common dso_local global %struct.TYPE_21__* null, align 8
@sin_numbrushsides = common dso_local global i32 0, align 4
@sin_dbrushsides = common dso_local global %struct.TYPE_18__* null, align 8
@sin_dvis = common dso_local global %struct.TYPE_25__* null, align 8
@sin_lightinfo = common dso_local global %struct.TYPE_24__* null, align 8
@sin_numlightinfo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Sin_SwapBSPFile(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %86, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @sin_nummodels, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %89

10:                                               ; preds = %6
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** @sin_dmodels, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i64 %13
  store %struct.TYPE_22__* %14, %struct.TYPE_22__** %5, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @LittleLong(i32 %17)
  %19 = ptrtoint i8* %18 to i32
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @LittleLong(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @LittleLong(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %82, %10
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %85

39:                                               ; preds = %36
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 5
  %42 = load i8**, i8*** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i8* @LittleFloat(i8* %46)
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 5
  %50 = load i8**, i8*** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  store i8* %47, i8** %53, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 4
  %56 = load i8**, i8*** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @LittleFloat(i8* %60)
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 4
  %64 = load i8**, i8*** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  store i8* %61, i8** %67, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 3
  %70 = load i8**, i8*** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i8* @LittleFloat(i8* %74)
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 3
  %78 = load i8**, i8*** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  store i8* %75, i8** %81, align 8
  br label %82

82:                                               ; preds = %39
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %36

85:                                               ; preds = %36
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %6

89:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %123, %89
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @sin_numvertexes, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %126

94:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %119, %94
  %96 = load i32, i32* %4, align 4
  %97 = icmp slt i32 %96, 3
  br i1 %97, label %98, label %122

98:                                               ; preds = %95
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** @sin_dvertexes, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 0
  %104 = load i8**, i8*** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = call i8* @LittleFloat(i8* %108)
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** @sin_dvertexes, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 0
  %115 = load i8**, i8*** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  store i8* %109, i8** %118, align 8
  br label %119

119:                                              ; preds = %98
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %95

122:                                              ; preds = %95
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %3, align 4
  br label %90

126:                                              ; preds = %90
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %185, %126
  %128 = load i32, i32* %3, align 4
  %129 = load i32, i32* @sin_numplanes, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %188

131:                                              ; preds = %127
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %156, %131
  %133 = load i32, i32* %4, align 4
  %134 = icmp slt i32 %133, 3
  br i1 %134, label %135, label %159

135:                                              ; preds = %132
  %136 = load %struct.TYPE_27__*, %struct.TYPE_27__** @sin_dplanes, align 8
  %137 = load i32, i32* %3, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 2
  %141 = load i8**, i8*** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = call i8* @LittleFloat(i8* %145)
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** @sin_dplanes, align 8
  %148 = load i32, i32* %3, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %150, i32 0, i32 2
  %152 = load i8**, i8*** %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %152, i64 %154
  store i8* %146, i8** %155, align 8
  br label %156

156:                                              ; preds = %135
  %157 = load i32, i32* %4, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %4, align 4
  br label %132

159:                                              ; preds = %132
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** @sin_dplanes, align 8
  %161 = load i32, i32* %3, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = call i8* @LittleFloat(i8* %165)
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** @sin_dplanes, align 8
  %168 = load i32, i32* %3, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %170, i32 0, i32 1
  store i8* %166, i8** %171, align 8
  %172 = load %struct.TYPE_27__*, %struct.TYPE_27__** @sin_dplanes, align 8
  %173 = load i32, i32* %3, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i8* @LittleLong(i32 %177)
  %179 = ptrtoint i8* %178 to i32
  %180 = load %struct.TYPE_27__*, %struct.TYPE_27__** @sin_dplanes, align 8
  %181 = load i32, i32* %3, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %183, i32 0, i32 0
  store i32 %179, i32* %184, align 8
  br label %185

185:                                              ; preds = %159
  %186 = load i32, i32* %3, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %3, align 4
  br label %127

188:                                              ; preds = %127
  store i32 0, i32* %3, align 4
  br label %189

189:                                              ; preds = %265, %188
  %190 = load i32, i32* %3, align 4
  %191 = load i32, i32* @sin_numtexinfo, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %268

193:                                              ; preds = %189
  store i32 0, i32* %4, align 4
  br label %194

194:                                              ; preds = %222, %193
  %195 = load i32, i32* %4, align 4
  %196 = icmp slt i32 %195, 8
  br i1 %196, label %197, label %225

197:                                              ; preds = %194
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** @sin_texinfo, align 8
  %199 = load i32, i32* %3, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 10
  %203 = load i8***, i8**** %202, align 8
  %204 = getelementptr inbounds i8**, i8*** %203, i64 0
  %205 = load i8**, i8*** %204, align 8
  %206 = load i32, i32* %4, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8*, i8** %205, i64 %207
  %209 = load i8*, i8** %208, align 8
  %210 = call i8* @LittleFloat(i8* %209)
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** @sin_texinfo, align 8
  %212 = load i32, i32* %3, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 10
  %216 = load i8***, i8**** %215, align 8
  %217 = getelementptr inbounds i8**, i8*** %216, i64 0
  %218 = load i8**, i8*** %217, align 8
  %219 = load i32, i32* %4, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8*, i8** %218, i64 %220
  store i8* %210, i8** %221, align 8
  br label %222

222:                                              ; preds = %197
  %223 = load i32, i32* %4, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %4, align 4
  br label %194

225:                                              ; preds = %194
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** @sin_texinfo, align 8
  %227 = load i32, i32* %3, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = call i8* @LittleLong(i32 %231)
  %233 = ptrtoint i8* %232 to i32
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** @sin_texinfo, align 8
  %235 = load i32, i32* %3, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 2
  store i32 %233, i32* %238, align 8
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** @sin_texinfo, align 8
  %240 = load i32, i32* %3, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i8* @LittleLong(i32 %244)
  %246 = ptrtoint i8* %245 to i32
  %247 = load %struct.TYPE_23__*, %struct.TYPE_23__** @sin_texinfo, align 8
  %248 = load i32, i32* %3, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %250, i32 0, i32 1
  store i32 %246, i32* %251, align 4
  %252 = load %struct.TYPE_23__*, %struct.TYPE_23__** @sin_texinfo, align 8
  %253 = load i32, i32* %3, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = call i8* @LittleLong(i32 %257)
  %259 = ptrtoint i8* %258 to i32
  %260 = load %struct.TYPE_23__*, %struct.TYPE_23__** @sin_texinfo, align 8
  %261 = load i32, i32* %3, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i32 0, i32 3
  store i32 %259, i32* %264, align 4
  br label %265

265:                                              ; preds = %225
  %266 = load i32, i32* %3, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %3, align 4
  br label %189

268:                                              ; preds = %189
  store i32 0, i32* %3, align 4
  br label %269

269:                                              ; preds = %348, %268
  %270 = load i32, i32* %3, align 4
  %271 = load i32, i32* @sin_numfaces, align 4
  %272 = icmp slt i32 %270, %271
  br i1 %272, label %273, label %351

273:                                              ; preds = %269
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sin_dfaces, align 8
  %275 = load i32, i32* %3, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 6
  %279 = load i8*, i8** %278, align 8
  %280 = call i8* @LittleShort(i8* %279)
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sin_dfaces, align 8
  %282 = load i32, i32* %3, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 6
  store i8* %280, i8** %285, align 8
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sin_dfaces, align 8
  %287 = load i32, i32* %3, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %289, i32 0, i32 5
  %291 = load i8*, i8** %290, align 8
  %292 = call i8* @LittleShort(i8* %291)
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sin_dfaces, align 8
  %294 = load i32, i32* %3, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 5
  store i8* %292, i8** %297, align 8
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sin_dfaces, align 8
  %299 = load i32, i32* %3, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 4
  %303 = load i8*, i8** %302, align 8
  %304 = call i8* @LittleShort(i8* %303)
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sin_dfaces, align 8
  %306 = load i32, i32* %3, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 4
  store i8* %304, i8** %309, align 8
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sin_dfaces, align 8
  %311 = load i32, i32* %3, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = call i8* @LittleLong(i32 %315)
  %317 = ptrtoint i8* %316 to i32
  %318 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sin_dfaces, align 8
  %319 = load i32, i32* %3, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %318, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %321, i32 0, i32 1
  store i32 %317, i32* %322, align 4
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sin_dfaces, align 8
  %324 = load i32, i32* %3, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = call i8* @LittleLong(i32 %328)
  %330 = ptrtoint i8* %329 to i32
  %331 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sin_dfaces, align 8
  %332 = load i32, i32* %3, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 2
  store i32 %330, i32* %335, align 8
  %336 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sin_dfaces, align 8
  %337 = load i32, i32* %3, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %339, i32 0, i32 3
  %341 = load i8*, i8** %340, align 8
  %342 = call i8* @LittleShort(i8* %341)
  %343 = load %struct.TYPE_16__*, %struct.TYPE_16__** @sin_dfaces, align 8
  %344 = load i32, i32* %3, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i32 0, i32 3
  store i8* %342, i8** %347, align 8
  br label %348

348:                                              ; preds = %273
  %349 = load i32, i32* %3, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %3, align 4
  br label %269

351:                                              ; preds = %269
  store i32 0, i32* %3, align 4
  br label %352

352:                                              ; preds = %476, %351
  %353 = load i32, i32* %3, align 4
  %354 = load i32, i32* @sin_numnodes, align 4
  %355 = icmp slt i32 %353, %354
  br i1 %355, label %356, label %479

356:                                              ; preds = %352
  %357 = load %struct.TYPE_28__*, %struct.TYPE_28__** @sin_dnodes, align 8
  %358 = load i32, i32* %3, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = call i8* @LittleLong(i32 %362)
  %364 = ptrtoint i8* %363 to i32
  %365 = load %struct.TYPE_28__*, %struct.TYPE_28__** @sin_dnodes, align 8
  %366 = load i32, i32* %3, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %365, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %368, i32 0, i32 0
  store i32 %364, i32* %369, align 8
  store i32 0, i32* %4, align 4
  br label %370

370:                                              ; preds = %414, %356
  %371 = load i32, i32* %4, align 4
  %372 = icmp slt i32 %371, 3
  br i1 %372, label %373, label %417

373:                                              ; preds = %370
  %374 = load %struct.TYPE_28__*, %struct.TYPE_28__** @sin_dnodes, align 8
  %375 = load i32, i32* %3, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %374, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %377, i32 0, i32 5
  %379 = load i8**, i8*** %378, align 8
  %380 = load i32, i32* %4, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i8*, i8** %379, i64 %381
  %383 = load i8*, i8** %382, align 8
  %384 = call i8* @LittleShort(i8* %383)
  %385 = load %struct.TYPE_28__*, %struct.TYPE_28__** @sin_dnodes, align 8
  %386 = load i32, i32* %3, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %385, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %388, i32 0, i32 5
  %390 = load i8**, i8*** %389, align 8
  %391 = load i32, i32* %4, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i8*, i8** %390, i64 %392
  store i8* %384, i8** %393, align 8
  %394 = load %struct.TYPE_28__*, %struct.TYPE_28__** @sin_dnodes, align 8
  %395 = load i32, i32* %3, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %394, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %397, i32 0, i32 4
  %399 = load i8**, i8*** %398, align 8
  %400 = load i32, i32* %4, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i8*, i8** %399, i64 %401
  %403 = load i8*, i8** %402, align 8
  %404 = call i8* @LittleShort(i8* %403)
  %405 = load %struct.TYPE_28__*, %struct.TYPE_28__** @sin_dnodes, align 8
  %406 = load i32, i32* %3, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %405, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %408, i32 0, i32 4
  %410 = load i8**, i8*** %409, align 8
  %411 = load i32, i32* %4, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i8*, i8** %410, i64 %412
  store i8* %404, i8** %413, align 8
  br label %414

414:                                              ; preds = %373
  %415 = load i32, i32* %4, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %4, align 4
  br label %370

417:                                              ; preds = %370
  %418 = load %struct.TYPE_28__*, %struct.TYPE_28__** @sin_dnodes, align 8
  %419 = load i32, i32* %3, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %418, i64 %420
  %422 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %421, i32 0, i32 1
  %423 = load i32*, i32** %422, align 8
  %424 = getelementptr inbounds i32, i32* %423, i64 0
  %425 = load i32, i32* %424, align 4
  %426 = call i8* @LittleLong(i32 %425)
  %427 = ptrtoint i8* %426 to i32
  %428 = load %struct.TYPE_28__*, %struct.TYPE_28__** @sin_dnodes, align 8
  %429 = load i32, i32* %3, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %428, i64 %430
  %432 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %431, i32 0, i32 1
  %433 = load i32*, i32** %432, align 8
  %434 = getelementptr inbounds i32, i32* %433, i64 0
  store i32 %427, i32* %434, align 4
  %435 = load %struct.TYPE_28__*, %struct.TYPE_28__** @sin_dnodes, align 8
  %436 = load i32, i32* %3, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %435, i64 %437
  %439 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %438, i32 0, i32 1
  %440 = load i32*, i32** %439, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 1
  %442 = load i32, i32* %441, align 4
  %443 = call i8* @LittleLong(i32 %442)
  %444 = ptrtoint i8* %443 to i32
  %445 = load %struct.TYPE_28__*, %struct.TYPE_28__** @sin_dnodes, align 8
  %446 = load i32, i32* %3, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %445, i64 %447
  %449 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %448, i32 0, i32 1
  %450 = load i32*, i32** %449, align 8
  %451 = getelementptr inbounds i32, i32* %450, i64 1
  store i32 %444, i32* %451, align 4
  %452 = load %struct.TYPE_28__*, %struct.TYPE_28__** @sin_dnodes, align 8
  %453 = load i32, i32* %3, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %452, i64 %454
  %456 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %455, i32 0, i32 3
  %457 = load i8*, i8** %456, align 8
  %458 = call i8* @LittleShort(i8* %457)
  %459 = load %struct.TYPE_28__*, %struct.TYPE_28__** @sin_dnodes, align 8
  %460 = load i32, i32* %3, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %459, i64 %461
  %463 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %462, i32 0, i32 3
  store i8* %458, i8** %463, align 8
  %464 = load %struct.TYPE_28__*, %struct.TYPE_28__** @sin_dnodes, align 8
  %465 = load i32, i32* %3, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %464, i64 %466
  %468 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %467, i32 0, i32 2
  %469 = load i8*, i8** %468, align 8
  %470 = call i8* @LittleShort(i8* %469)
  %471 = load %struct.TYPE_28__*, %struct.TYPE_28__** @sin_dnodes, align 8
  %472 = load i32, i32* %3, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %471, i64 %473
  %475 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %474, i32 0, i32 2
  store i8* %470, i8** %475, align 8
  br label %476

476:                                              ; preds = %417
  %477 = load i32, i32* %3, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %3, align 4
  br label %352

479:                                              ; preds = %352
  store i32 0, i32* %3, align 4
  br label %480

480:                                              ; preds = %618, %479
  %481 = load i32, i32* %3, align 4
  %482 = load i32, i32* @sin_numleafs, align 4
  %483 = icmp slt i32 %481, %482
  br i1 %483, label %484, label %621

484:                                              ; preds = %480
  %485 = load %struct.TYPE_29__*, %struct.TYPE_29__** @sin_dleafs, align 8
  %486 = load i32, i32* %3, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %485, i64 %487
  %489 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  %491 = call i8* @LittleLong(i32 %490)
  %492 = ptrtoint i8* %491 to i32
  %493 = load %struct.TYPE_29__*, %struct.TYPE_29__** @sin_dleafs, align 8
  %494 = load i32, i32* %3, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %493, i64 %495
  %497 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %496, i32 0, i32 0
  store i32 %492, i32* %497, align 8
  %498 = load %struct.TYPE_29__*, %struct.TYPE_29__** @sin_dleafs, align 8
  %499 = load i32, i32* %3, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %498, i64 %500
  %502 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %501, i32 0, i32 8
  %503 = load i8*, i8** %502, align 8
  %504 = call i8* @LittleShort(i8* %503)
  %505 = load %struct.TYPE_29__*, %struct.TYPE_29__** @sin_dleafs, align 8
  %506 = load i32, i32* %3, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %505, i64 %507
  %509 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %508, i32 0, i32 8
  store i8* %504, i8** %509, align 8
  %510 = load %struct.TYPE_29__*, %struct.TYPE_29__** @sin_dleafs, align 8
  %511 = load i32, i32* %3, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %510, i64 %512
  %514 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %513, i32 0, i32 7
  %515 = load i8*, i8** %514, align 8
  %516 = call i8* @LittleShort(i8* %515)
  %517 = load %struct.TYPE_29__*, %struct.TYPE_29__** @sin_dleafs, align 8
  %518 = load i32, i32* %3, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %517, i64 %519
  %521 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %520, i32 0, i32 7
  store i8* %516, i8** %521, align 8
  store i32 0, i32* %4, align 4
  br label %522

522:                                              ; preds = %566, %484
  %523 = load i32, i32* %4, align 4
  %524 = icmp slt i32 %523, 3
  br i1 %524, label %525, label %569

525:                                              ; preds = %522
  %526 = load %struct.TYPE_29__*, %struct.TYPE_29__** @sin_dleafs, align 8
  %527 = load i32, i32* %3, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %526, i64 %528
  %530 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %529, i32 0, i32 6
  %531 = load i8**, i8*** %530, align 8
  %532 = load i32, i32* %4, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i8*, i8** %531, i64 %533
  %535 = load i8*, i8** %534, align 8
  %536 = call i8* @LittleShort(i8* %535)
  %537 = load %struct.TYPE_29__*, %struct.TYPE_29__** @sin_dleafs, align 8
  %538 = load i32, i32* %3, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %537, i64 %539
  %541 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %540, i32 0, i32 6
  %542 = load i8**, i8*** %541, align 8
  %543 = load i32, i32* %4, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i8*, i8** %542, i64 %544
  store i8* %536, i8** %545, align 8
  %546 = load %struct.TYPE_29__*, %struct.TYPE_29__** @sin_dleafs, align 8
  %547 = load i32, i32* %3, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %546, i64 %548
  %550 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %549, i32 0, i32 5
  %551 = load i8**, i8*** %550, align 8
  %552 = load i32, i32* %4, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds i8*, i8** %551, i64 %553
  %555 = load i8*, i8** %554, align 8
  %556 = call i8* @LittleShort(i8* %555)
  %557 = load %struct.TYPE_29__*, %struct.TYPE_29__** @sin_dleafs, align 8
  %558 = load i32, i32* %3, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %557, i64 %559
  %561 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %560, i32 0, i32 5
  %562 = load i8**, i8*** %561, align 8
  %563 = load i32, i32* %4, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds i8*, i8** %562, i64 %564
  store i8* %556, i8** %565, align 8
  br label %566

566:                                              ; preds = %525
  %567 = load i32, i32* %4, align 4
  %568 = add nsw i32 %567, 1
  store i32 %568, i32* %4, align 4
  br label %522

569:                                              ; preds = %522
  %570 = load %struct.TYPE_29__*, %struct.TYPE_29__** @sin_dleafs, align 8
  %571 = load i32, i32* %3, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %570, i64 %572
  %574 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %573, i32 0, i32 4
  %575 = load i8*, i8** %574, align 8
  %576 = call i8* @LittleShort(i8* %575)
  %577 = load %struct.TYPE_29__*, %struct.TYPE_29__** @sin_dleafs, align 8
  %578 = load i32, i32* %3, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %577, i64 %579
  %581 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %580, i32 0, i32 4
  store i8* %576, i8** %581, align 8
  %582 = load %struct.TYPE_29__*, %struct.TYPE_29__** @sin_dleafs, align 8
  %583 = load i32, i32* %3, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %582, i64 %584
  %586 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %585, i32 0, i32 3
  %587 = load i8*, i8** %586, align 8
  %588 = call i8* @LittleShort(i8* %587)
  %589 = load %struct.TYPE_29__*, %struct.TYPE_29__** @sin_dleafs, align 8
  %590 = load i32, i32* %3, align 4
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %589, i64 %591
  %593 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %592, i32 0, i32 3
  store i8* %588, i8** %593, align 8
  %594 = load %struct.TYPE_29__*, %struct.TYPE_29__** @sin_dleafs, align 8
  %595 = load i32, i32* %3, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %594, i64 %596
  %598 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %597, i32 0, i32 2
  %599 = load i8*, i8** %598, align 8
  %600 = call i8* @LittleShort(i8* %599)
  %601 = load %struct.TYPE_29__*, %struct.TYPE_29__** @sin_dleafs, align 8
  %602 = load i32, i32* %3, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %601, i64 %603
  %605 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %604, i32 0, i32 2
  store i8* %600, i8** %605, align 8
  %606 = load %struct.TYPE_29__*, %struct.TYPE_29__** @sin_dleafs, align 8
  %607 = load i32, i32* %3, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %606, i64 %608
  %610 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %609, i32 0, i32 1
  %611 = load i8*, i8** %610, align 8
  %612 = call i8* @LittleShort(i8* %611)
  %613 = load %struct.TYPE_29__*, %struct.TYPE_29__** @sin_dleafs, align 8
  %614 = load i32, i32* %3, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %613, i64 %615
  %617 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %616, i32 0, i32 1
  store i8* %612, i8** %617, align 8
  br label %618

618:                                              ; preds = %569
  %619 = load i32, i32* %3, align 4
  %620 = add nsw i32 %619, 1
  store i32 %620, i32* %3, align 4
  br label %480

621:                                              ; preds = %480
  store i32 0, i32* %3, align 4
  br label %622

622:                                              ; preds = %637, %621
  %623 = load i32, i32* %3, align 4
  %624 = load i32, i32* @sin_numleaffaces, align 4
  %625 = icmp slt i32 %623, %624
  br i1 %625, label %626, label %640

626:                                              ; preds = %622
  %627 = load i8**, i8*** @sin_dleaffaces, align 8
  %628 = load i32, i32* %3, align 4
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds i8*, i8** %627, i64 %629
  %631 = load i8*, i8** %630, align 8
  %632 = call i8* @LittleShort(i8* %631)
  %633 = load i8**, i8*** @sin_dleaffaces, align 8
  %634 = load i32, i32* %3, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds i8*, i8** %633, i64 %635
  store i8* %632, i8** %636, align 8
  br label %637

637:                                              ; preds = %626
  %638 = load i32, i32* %3, align 4
  %639 = add nsw i32 %638, 1
  store i32 %639, i32* %3, align 4
  br label %622

640:                                              ; preds = %622
  store i32 0, i32* %3, align 4
  br label %641

641:                                              ; preds = %656, %640
  %642 = load i32, i32* %3, align 4
  %643 = load i32, i32* @sin_numleafbrushes, align 4
  %644 = icmp slt i32 %642, %643
  br i1 %644, label %645, label %659

645:                                              ; preds = %641
  %646 = load i8**, i8*** @sin_dleafbrushes, align 8
  %647 = load i32, i32* %3, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds i8*, i8** %646, i64 %648
  %650 = load i8*, i8** %649, align 8
  %651 = call i8* @LittleShort(i8* %650)
  %652 = load i8**, i8*** @sin_dleafbrushes, align 8
  %653 = load i32, i32* %3, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds i8*, i8** %652, i64 %654
  store i8* %651, i8** %655, align 8
  br label %656

656:                                              ; preds = %645
  %657 = load i32, i32* %3, align 4
  %658 = add nsw i32 %657, 1
  store i32 %658, i32* %3, align 4
  br label %641

659:                                              ; preds = %641
  store i32 0, i32* %3, align 4
  br label %660

660:                                              ; preds = %676, %659
  %661 = load i32, i32* %3, align 4
  %662 = load i32, i32* @sin_numsurfedges, align 4
  %663 = icmp slt i32 %661, %662
  br i1 %663, label %664, label %679

664:                                              ; preds = %660
  %665 = load i32*, i32** @sin_dsurfedges, align 8
  %666 = load i32, i32* %3, align 4
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds i32, i32* %665, i64 %667
  %669 = load i32, i32* %668, align 4
  %670 = call i8* @LittleLong(i32 %669)
  %671 = ptrtoint i8* %670 to i32
  %672 = load i32*, i32** @sin_dsurfedges, align 8
  %673 = load i32, i32* %3, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds i32, i32* %672, i64 %674
  store i32 %671, i32* %675, align 4
  br label %676

676:                                              ; preds = %664
  %677 = load i32, i32* %3, align 4
  %678 = add nsw i32 %677, 1
  store i32 %678, i32* %3, align 4
  br label %660

679:                                              ; preds = %660
  store i32 0, i32* %3, align 4
  br label %680

680:                                              ; preds = %717, %679
  %681 = load i32, i32* %3, align 4
  %682 = load i32, i32* @sin_numedges, align 4
  %683 = icmp slt i32 %681, %682
  br i1 %683, label %684, label %720

684:                                              ; preds = %680
  %685 = load %struct.TYPE_17__*, %struct.TYPE_17__** @sin_dedges, align 8
  %686 = load i32, i32* %3, align 4
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %685, i64 %687
  %689 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %688, i32 0, i32 0
  %690 = load i8**, i8*** %689, align 8
  %691 = getelementptr inbounds i8*, i8** %690, i64 0
  %692 = load i8*, i8** %691, align 8
  %693 = call i8* @LittleShort(i8* %692)
  %694 = load %struct.TYPE_17__*, %struct.TYPE_17__** @sin_dedges, align 8
  %695 = load i32, i32* %3, align 4
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %694, i64 %696
  %698 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %697, i32 0, i32 0
  %699 = load i8**, i8*** %698, align 8
  %700 = getelementptr inbounds i8*, i8** %699, i64 0
  store i8* %693, i8** %700, align 8
  %701 = load %struct.TYPE_17__*, %struct.TYPE_17__** @sin_dedges, align 8
  %702 = load i32, i32* %3, align 4
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %701, i64 %703
  %705 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %704, i32 0, i32 0
  %706 = load i8**, i8*** %705, align 8
  %707 = getelementptr inbounds i8*, i8** %706, i64 1
  %708 = load i8*, i8** %707, align 8
  %709 = call i8* @LittleShort(i8* %708)
  %710 = load %struct.TYPE_17__*, %struct.TYPE_17__** @sin_dedges, align 8
  %711 = load i32, i32* %3, align 4
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %710, i64 %712
  %714 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %713, i32 0, i32 0
  %715 = load i8**, i8*** %714, align 8
  %716 = getelementptr inbounds i8*, i8** %715, i64 1
  store i8* %709, i8** %716, align 8
  br label %717

717:                                              ; preds = %684
  %718 = load i32, i32* %3, align 4
  %719 = add nsw i32 %718, 1
  store i32 %719, i32* %3, align 4
  br label %680

720:                                              ; preds = %680
  store i32 0, i32* %3, align 4
  br label %721

721:                                              ; preds = %765, %720
  %722 = load i32, i32* %3, align 4
  %723 = load i32, i32* @sin_numbrushes, align 4
  %724 = icmp slt i32 %722, %723
  br i1 %724, label %725, label %768

725:                                              ; preds = %721
  %726 = load %struct.TYPE_19__*, %struct.TYPE_19__** @sin_dbrushes, align 8
  %727 = load i32, i32* %3, align 4
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %726, i64 %728
  %730 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %729, i32 0, i32 0
  %731 = load i32, i32* %730, align 4
  %732 = call i8* @LittleLong(i32 %731)
  %733 = ptrtoint i8* %732 to i32
  %734 = load %struct.TYPE_19__*, %struct.TYPE_19__** @sin_dbrushes, align 8
  %735 = load i32, i32* %3, align 4
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %734, i64 %736
  %738 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %737, i32 0, i32 0
  store i32 %733, i32* %738, align 4
  %739 = load %struct.TYPE_19__*, %struct.TYPE_19__** @sin_dbrushes, align 8
  %740 = load i32, i32* %3, align 4
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %739, i64 %741
  %743 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %742, i32 0, i32 1
  %744 = load i32, i32* %743, align 4
  %745 = call i8* @LittleLong(i32 %744)
  %746 = ptrtoint i8* %745 to i32
  %747 = load %struct.TYPE_19__*, %struct.TYPE_19__** @sin_dbrushes, align 8
  %748 = load i32, i32* %3, align 4
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %747, i64 %749
  %751 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %750, i32 0, i32 1
  store i32 %746, i32* %751, align 4
  %752 = load %struct.TYPE_19__*, %struct.TYPE_19__** @sin_dbrushes, align 8
  %753 = load i32, i32* %3, align 4
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %752, i64 %754
  %756 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %755, i32 0, i32 2
  %757 = load i32, i32* %756, align 4
  %758 = call i8* @LittleLong(i32 %757)
  %759 = ptrtoint i8* %758 to i32
  %760 = load %struct.TYPE_19__*, %struct.TYPE_19__** @sin_dbrushes, align 8
  %761 = load i32, i32* %3, align 4
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %760, i64 %762
  %764 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %763, i32 0, i32 2
  store i32 %759, i32* %764, align 4
  br label %765

765:                                              ; preds = %725
  %766 = load i32, i32* %3, align 4
  %767 = add nsw i32 %766, 1
  store i32 %767, i32* %3, align 4
  br label %721

768:                                              ; preds = %721
  store i32 0, i32* %3, align 4
  br label %769

769:                                              ; preds = %800, %768
  %770 = load i32, i32* %3, align 4
  %771 = load i32, i32* @sin_numareas, align 4
  %772 = icmp slt i32 %770, %771
  br i1 %772, label %773, label %803

773:                                              ; preds = %769
  %774 = load %struct.TYPE_20__*, %struct.TYPE_20__** @sin_dareas, align 8
  %775 = load i32, i32* %3, align 4
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %774, i64 %776
  %778 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %777, i32 0, i32 0
  %779 = load i32, i32* %778, align 4
  %780 = call i8* @LittleLong(i32 %779)
  %781 = ptrtoint i8* %780 to i32
  %782 = load %struct.TYPE_20__*, %struct.TYPE_20__** @sin_dareas, align 8
  %783 = load i32, i32* %3, align 4
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %782, i64 %784
  %786 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %785, i32 0, i32 0
  store i32 %781, i32* %786, align 4
  %787 = load %struct.TYPE_20__*, %struct.TYPE_20__** @sin_dareas, align 8
  %788 = load i32, i32* %3, align 4
  %789 = sext i32 %788 to i64
  %790 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %787, i64 %789
  %791 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %790, i32 0, i32 1
  %792 = load i32, i32* %791, align 4
  %793 = call i8* @LittleLong(i32 %792)
  %794 = ptrtoint i8* %793 to i32
  %795 = load %struct.TYPE_20__*, %struct.TYPE_20__** @sin_dareas, align 8
  %796 = load i32, i32* %3, align 4
  %797 = sext i32 %796 to i64
  %798 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %795, i64 %797
  %799 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %798, i32 0, i32 1
  store i32 %794, i32* %799, align 4
  br label %800

800:                                              ; preds = %773
  %801 = load i32, i32* %3, align 4
  %802 = add nsw i32 %801, 1
  store i32 %802, i32* %3, align 4
  br label %769

803:                                              ; preds = %769
  store i32 0, i32* %3, align 4
  br label %804

804:                                              ; preds = %835, %803
  %805 = load i32, i32* %3, align 4
  %806 = load i32, i32* @sin_numareaportals, align 4
  %807 = icmp slt i32 %805, %806
  br i1 %807, label %808, label %838

808:                                              ; preds = %804
  %809 = load %struct.TYPE_21__*, %struct.TYPE_21__** @sin_dareaportals, align 8
  %810 = load i32, i32* %3, align 4
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %809, i64 %811
  %813 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %812, i32 0, i32 0
  %814 = load i32, i32* %813, align 4
  %815 = call i8* @LittleLong(i32 %814)
  %816 = ptrtoint i8* %815 to i32
  %817 = load %struct.TYPE_21__*, %struct.TYPE_21__** @sin_dareaportals, align 8
  %818 = load i32, i32* %3, align 4
  %819 = sext i32 %818 to i64
  %820 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %817, i64 %819
  %821 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %820, i32 0, i32 0
  store i32 %816, i32* %821, align 4
  %822 = load %struct.TYPE_21__*, %struct.TYPE_21__** @sin_dareaportals, align 8
  %823 = load i32, i32* %3, align 4
  %824 = sext i32 %823 to i64
  %825 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %822, i64 %824
  %826 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %825, i32 0, i32 1
  %827 = load i32, i32* %826, align 4
  %828 = call i8* @LittleLong(i32 %827)
  %829 = ptrtoint i8* %828 to i32
  %830 = load %struct.TYPE_21__*, %struct.TYPE_21__** @sin_dareaportals, align 8
  %831 = load i32, i32* %3, align 4
  %832 = sext i32 %831 to i64
  %833 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %830, i64 %832
  %834 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %833, i32 0, i32 1
  store i32 %829, i32* %834, align 4
  br label %835

835:                                              ; preds = %808
  %836 = load i32, i32* %3, align 4
  %837 = add nsw i32 %836, 1
  store i32 %837, i32* %3, align 4
  br label %804

838:                                              ; preds = %804
  store i32 0, i32* %3, align 4
  br label %839

839:                                              ; preds = %868, %838
  %840 = load i32, i32* %3, align 4
  %841 = load i32, i32* @sin_numbrushsides, align 4
  %842 = icmp slt i32 %840, %841
  br i1 %842, label %843, label %871

843:                                              ; preds = %839
  %844 = load %struct.TYPE_18__*, %struct.TYPE_18__** @sin_dbrushsides, align 8
  %845 = load i32, i32* %3, align 4
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %844, i64 %846
  %848 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %847, i32 0, i32 2
  %849 = load i8*, i8** %848, align 8
  %850 = call i8* @LittleShort(i8* %849)
  %851 = load %struct.TYPE_18__*, %struct.TYPE_18__** @sin_dbrushsides, align 8
  %852 = load i32, i32* %3, align 4
  %853 = sext i32 %852 to i64
  %854 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %851, i64 %853
  %855 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %854, i32 0, i32 2
  store i8* %850, i8** %855, align 8
  %856 = load %struct.TYPE_18__*, %struct.TYPE_18__** @sin_dbrushsides, align 8
  %857 = load i32, i32* %3, align 4
  %858 = sext i32 %857 to i64
  %859 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %856, i64 %858
  %860 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %859, i32 0, i32 1
  %861 = load i8*, i8** %860, align 8
  %862 = call i8* @LittleShort(i8* %861)
  %863 = load %struct.TYPE_18__*, %struct.TYPE_18__** @sin_dbrushsides, align 8
  %864 = load i32, i32* %3, align 4
  %865 = sext i32 %864 to i64
  %866 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %863, i64 %865
  %867 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %866, i32 0, i32 1
  store i8* %862, i8** %867, align 8
  br label %868

868:                                              ; preds = %843
  %869 = load i32, i32* %3, align 4
  %870 = add nsw i32 %869, 1
  store i32 %870, i32* %3, align 4
  br label %839

871:                                              ; preds = %839
  %872 = load i64, i64* %2, align 8
  %873 = icmp ne i64 %872, 0
  br i1 %873, label %874, label %878

874:                                              ; preds = %871
  %875 = load %struct.TYPE_25__*, %struct.TYPE_25__** @sin_dvis, align 8
  %876 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %875, i32 0, i32 0
  %877 = load i32, i32* %876, align 8
  store i32 %877, i32* %4, align 4
  br label %884

878:                                              ; preds = %871
  %879 = load %struct.TYPE_25__*, %struct.TYPE_25__** @sin_dvis, align 8
  %880 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %879, i32 0, i32 0
  %881 = load i32, i32* %880, align 8
  %882 = call i8* @LittleLong(i32 %881)
  %883 = ptrtoint i8* %882 to i32
  store i32 %883, i32* %4, align 4
  br label %884

884:                                              ; preds = %878, %874
  %885 = load %struct.TYPE_25__*, %struct.TYPE_25__** @sin_dvis, align 8
  %886 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %885, i32 0, i32 0
  %887 = load i32, i32* %886, align 8
  %888 = call i8* @LittleLong(i32 %887)
  %889 = ptrtoint i8* %888 to i32
  %890 = load %struct.TYPE_25__*, %struct.TYPE_25__** @sin_dvis, align 8
  %891 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %890, i32 0, i32 0
  store i32 %889, i32* %891, align 8
  store i32 0, i32* %3, align 4
  br label %892

892:                                              ; preds = %935, %884
  %893 = load i32, i32* %3, align 4
  %894 = load i32, i32* %4, align 4
  %895 = icmp slt i32 %893, %894
  br i1 %895, label %896, label %938

896:                                              ; preds = %892
  %897 = load %struct.TYPE_25__*, %struct.TYPE_25__** @sin_dvis, align 8
  %898 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %897, i32 0, i32 1
  %899 = load i32**, i32*** %898, align 8
  %900 = load i32, i32* %3, align 4
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds i32*, i32** %899, i64 %901
  %903 = load i32*, i32** %902, align 8
  %904 = getelementptr inbounds i32, i32* %903, i64 0
  %905 = load i32, i32* %904, align 4
  %906 = call i8* @LittleLong(i32 %905)
  %907 = ptrtoint i8* %906 to i32
  %908 = load %struct.TYPE_25__*, %struct.TYPE_25__** @sin_dvis, align 8
  %909 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %908, i32 0, i32 1
  %910 = load i32**, i32*** %909, align 8
  %911 = load i32, i32* %3, align 4
  %912 = sext i32 %911 to i64
  %913 = getelementptr inbounds i32*, i32** %910, i64 %912
  %914 = load i32*, i32** %913, align 8
  %915 = getelementptr inbounds i32, i32* %914, i64 0
  store i32 %907, i32* %915, align 4
  %916 = load %struct.TYPE_25__*, %struct.TYPE_25__** @sin_dvis, align 8
  %917 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %916, i32 0, i32 1
  %918 = load i32**, i32*** %917, align 8
  %919 = load i32, i32* %3, align 4
  %920 = sext i32 %919 to i64
  %921 = getelementptr inbounds i32*, i32** %918, i64 %920
  %922 = load i32*, i32** %921, align 8
  %923 = getelementptr inbounds i32, i32* %922, i64 1
  %924 = load i32, i32* %923, align 4
  %925 = call i8* @LittleLong(i32 %924)
  %926 = ptrtoint i8* %925 to i32
  %927 = load %struct.TYPE_25__*, %struct.TYPE_25__** @sin_dvis, align 8
  %928 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %927, i32 0, i32 1
  %929 = load i32**, i32*** %928, align 8
  %930 = load i32, i32* %3, align 4
  %931 = sext i32 %930 to i64
  %932 = getelementptr inbounds i32*, i32** %929, i64 %931
  %933 = load i32*, i32** %932, align 8
  %934 = getelementptr inbounds i32, i32* %933, i64 1
  store i32 %926, i32* %934, align 4
  br label %935

935:                                              ; preds = %896
  %936 = load i32, i32* %3, align 4
  %937 = add nsw i32 %936, 1
  store i32 %937, i32* %3, align 4
  br label %892

938:                                              ; preds = %892
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
