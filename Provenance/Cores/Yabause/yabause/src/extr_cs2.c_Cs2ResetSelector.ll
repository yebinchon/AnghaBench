; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2ResetSelector.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2ResetSelector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, %struct.TYPE_9__, i32, i64, %struct.TYPE_8__*, %struct.TYPE_7__*, i64, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i32*, i32, i32** }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@Cs2Area = common dso_local global %struct.TYPE_10__* null, align 8
@MAX_SELECTORS = common dso_local global i64 0, align 8
@CDB_HIRQ_CMOK = common dso_local global i32 0, align 4
@CDB_HIRQ_ESEL = common dso_local global i32 0, align 4
@MAX_BLOCKS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cs2ResetSelector() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %118

10:                                               ; preds = %0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 8
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @MAX_SELECTORS, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %77

20:                                               ; preds = %10
  store i64 0, i64* %1, align 8
  br label %21

21:                                               ; preds = %61, %20
  %22 = load i64, i64* %1, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 7
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %22, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %21
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 7
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  %38 = load i32**, i32*** %37, align 8
  %39 = load i64, i64* %1, align 8
  %40 = getelementptr inbounds i32*, i32** %38, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @Cs2FreeBlock(i32* %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 7
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = load i64, i64* %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = load i32**, i32*** %48, align 8
  %50 = load i64, i64* %1, align 8
  %51 = getelementptr inbounds i32*, i32** %49, i64 %50
  store i32* null, i32** %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 7
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load i64, i64* %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %1, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 255, i32* %60, align 4
  br label %61

61:                                               ; preds = %31
  %62 = load i64, i64* %1, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %1, align 8
  br label %21

64:                                               ; preds = %21
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 7
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load i64, i64* %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  store i32 -1, i32* %70, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 7
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = load i64, i64* %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %64, %10
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 8
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %82, %77
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 200
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 5
  store i64 0, i64* %92, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  store i32 -1, i32* %94, align 4
  br label %105

95:                                               ; preds = %85
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %3, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  store i32 -1, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %95
  br label %105

105:                                              ; preds = %104, %90
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @doCDReport(i32 %108)
  %110 = load i32, i32* @CDB_HIRQ_CMOK, align 4
  %111 = load i32, i32* @CDB_HIRQ_ESEL, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %112
  store i32 %117, i32* %115, align 8
  br label %342

118:                                              ; preds = %0
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %122, 128
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %118
  store i64 0, i64* %1, align 8
  br label %126

126:                                              ; preds = %137, %125
  %127 = load i64, i64* %1, align 8
  %128 = load i64, i64* @MAX_SELECTORS, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %126
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 9
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = load i64, i64* %1, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  store i32 255, i32* %136, align 8
  br label %137

137:                                              ; preds = %130
  %138 = load i64, i64* %1, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %1, align 8
  br label %126

140:                                              ; preds = %126
  br label %141

141:                                              ; preds = %140, %118
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = and i32 %145, 64
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %165

148:                                              ; preds = %141
  store i64 0, i64* %1, align 8
  br label %149

149:                                              ; preds = %161, %148
  %150 = load i64, i64* %1, align 8
  %151 = load i64, i64* @MAX_SELECTORS, align 8
  %152 = icmp ult i64 %150, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %149
  %154 = load i64, i64* %1, align 8
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 9
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = load i64, i64* %1, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 10
  store i64 %154, i64* %160, align 8
  br label %161

161:                                              ; preds = %153
  %162 = load i64, i64* %1, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %1, align 8
  br label %149

164:                                              ; preds = %149
  br label %165

165:                                              ; preds = %164, %141
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = and i32 %169, 16
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %236

172:                                              ; preds = %165
  store i64 0, i64* %1, align 8
  br label %173

173:                                              ; preds = %232, %172
  %174 = load i64, i64* %1, align 8
  %175 = load i64, i64* @MAX_SELECTORS, align 8
  %176 = icmp ult i64 %174, %175
  br i1 %176, label %177, label %235

177:                                              ; preds = %173
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 9
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = load i64, i64* %1, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 9
  store i64 0, i64* %183, align 8
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 9
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = load i64, i64* %1, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  store i32 -1, i32* %189, align 4
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 9
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = load i64, i64* %1, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 8
  store i64 0, i64* %195, align 8
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 9
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = load i64, i64* %1, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 7
  store i64 0, i64* %201, align 8
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 9
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = load i64, i64* %1, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 6
  store i64 0, i64* %207, align 8
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 9
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  %211 = load i64, i64* %1, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 5
  store i64 0, i64* %213, align 8
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 9
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = load i64, i64* %1, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 4
  store i64 0, i64* %219, align 8
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 9
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = load i64, i64* %1, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 3
  store i64 0, i64* %225, align 8
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 9
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %227, align 8
  %229 = load i64, i64* %1, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 2
  store i64 0, i64* %231, align 8
  br label %232

232:                                              ; preds = %177
  %233 = load i64, i64* %1, align 8
  %234 = add i64 %233, 1
  store i64 %234, i64* %1, align 8
  br label %173

235:                                              ; preds = %173
  br label %236

236:                                              ; preds = %235, %165
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = and i32 %240, 8
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  br label %244

244:                                              ; preds = %243, %236
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 3
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = and i32 %248, 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %329

251:                                              ; preds = %244
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 8
  store i64 0, i64* %253, align 8
  store i64 0, i64* %1, align 8
  br label %254

254:                                              ; preds = %298, %251
  %255 = load i64, i64* %1, align 8
  %256 = load i64, i64* @MAX_SELECTORS, align 8
  %257 = icmp ult i64 %255, %256
  br i1 %257, label %258, label %301

258:                                              ; preds = %254
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 7
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %260, align 8
  %262 = load i64, i64* %1, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 2
  store i32 -1, i32* %264, align 8
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 7
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %266, align 8
  %268 = load i64, i64* %1, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 0
  store i64 0, i64* %270, align 8
  store i64 0, i64* %2, align 8
  br label %271

271:                                              ; preds = %294, %258
  %272 = load i64, i64* %2, align 8
  %273 = load i64, i64* @MAX_BLOCKS, align 8
  %274 = icmp ult i64 %272, %273
  br i1 %274, label %275, label %297

275:                                              ; preds = %271
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 7
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %277, align 8
  %279 = load i64, i64* %1, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 3
  %282 = load i32**, i32*** %281, align 8
  %283 = load i64, i64* %2, align 8
  %284 = getelementptr inbounds i32*, i32** %282, i64 %283
  store i32* null, i32** %284, align 8
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 7
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %286, align 8
  %288 = load i64, i64* %1, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 1
  %291 = load i32*, i32** %290, align 8
  %292 = load i64, i64* %2, align 8
  %293 = getelementptr inbounds i32, i32* %291, i64 %292
  store i32 255, i32* %293, align 4
  br label %294

294:                                              ; preds = %275
  %295 = load i64, i64* %2, align 8
  %296 = add i64 %295, 1
  store i64 %296, i64* %2, align 8
  br label %271

297:                                              ; preds = %271
  br label %298

298:                                              ; preds = %297
  %299 = load i64, i64* %1, align 8
  %300 = add i64 %299, 1
  store i64 %300, i64* %1, align 8
  br label %254

301:                                              ; preds = %254
  store i64 0, i64* %1, align 8
  br label %302

302:                                              ; preds = %321, %301
  %303 = load i64, i64* %1, align 8
  %304 = load i64, i64* @MAX_BLOCKS, align 8
  %305 = icmp ult i64 %303, %304
  br i1 %305, label %306, label %324

306:                                              ; preds = %302
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 6
  %309 = load %struct.TYPE_8__*, %struct.TYPE_8__** %308, align 8
  %310 = load i64, i64* %1, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 0
  store i32 -1, i32* %312, align 4
  %313 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 6
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %314, align 8
  %316 = load i64, i64* %1, align 8
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @memset(i32 %319, i32 0, i32 2352)
  br label %321

321:                                              ; preds = %306
  %322 = load i64, i64* %1, align 8
  %323 = add i64 %322, 1
  store i64 %323, i64* %1, align 8
  br label %302

324:                                              ; preds = %302
  %325 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 5
  store i64 0, i64* %326, align 8
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 1
  store i32 -1, i32* %328, align 4
  br label %329

329:                                              ; preds = %324, %244
  %330 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i32 0, i32 4
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @doCDReport(i32 %332)
  %334 = load i32, i32* @CDB_HIRQ_CMOK, align 4
  %335 = load i32, i32* @CDB_HIRQ_ESEL, align 4
  %336 = or i32 %334, %335
  %337 = load %struct.TYPE_10__*, %struct.TYPE_10__** @Cs2Area, align 8
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 3
  %339 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = or i32 %340, %336
  store i32 %341, i32* %339, align 8
  br label %342

342:                                              ; preds = %329, %105
  ret void
}

declare dso_local i32 @Cs2FreeBlock(i32*) #1

declare dso_local i32 @doCDReport(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
