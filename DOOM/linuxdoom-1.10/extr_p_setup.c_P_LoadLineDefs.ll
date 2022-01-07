; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_setup.c_P_LoadLineDefs.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_setup.c_P_LoadLineDefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i64*, i64*, i64, i64, i32, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i32*, i32, i32, i32, i32, i32 }

@numlines = common dso_local global i32 0, align 4
@PU_LEVEL = common dso_local global i32 0, align 4
@lines = common dso_local global %struct.TYPE_11__* null, align 8
@PU_STATIC = common dso_local global i32 0, align 4
@vertexes = common dso_local global %struct.TYPE_9__* null, align 8
@ST_VERTICAL = common dso_local global i32 0, align 4
@ST_HORIZONTAL = common dso_local global i32 0, align 4
@ST_POSITIVE = common dso_local global i32 0, align 4
@ST_NEGATIVE = common dso_local global i32 0, align 4
@BOXLEFT = common dso_local global i64 0, align 8
@BOXRIGHT = common dso_local global i64 0, align 8
@BOXBOTTOM = common dso_local global i64 0, align 8
@BOXTOP = common dso_local global i64 0, align 8
@sides = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_LoadLineDefs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @W_LumpLength(i32 %9)
  %11 = sext i32 %10 to i64
  %12 = udiv i64 %11, 32
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* @numlines, align 4
  %14 = load i32, i32* @numlines, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 96
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @PU_LEVEL, align 4
  %19 = call %struct.TYPE_11__* @Z_Malloc(i32 %17, i32 %18, i32 0)
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** @lines, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** @lines, align 8
  %21 = load i32, i32* @numlines, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 96
  %24 = trunc i64 %23 to i32
  %25 = call i32 @memset(%struct.TYPE_11__* %20, i32 0, i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @PU_STATIC, align 4
  %28 = call i32* @W_CacheLumpNum(i32 %26, i32 %27)
  store i32* %28, i32** %3, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = bitcast i32* %29 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %5, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** @lines, align 8
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %6, align 8
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %274, %1
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @numlines, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %281

36:                                               ; preds = %32
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @SHORT(i32 %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @SHORT(i32 %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @SHORT(i32 %51)
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vertexes, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @SHORT(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i64 %59
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 11
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %62, align 8
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %7, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vertexes, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @SHORT(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i64 %67
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 10
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %70, align 8
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %8, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %82, %85
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 4
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %36
  %94 = load i32, i32* @ST_VERTICAL, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 9
  store i32 %94, i32* %96, align 8
  br label %125

97:                                               ; preds = %36
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* @ST_HORIZONTAL, align 4
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 9
  store i32 %103, i32* %105, align 8
  br label %124

106:                                              ; preds = %97
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @FixedDiv(i64 %109, i64 %112)
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %106
  %116 = load i32, i32* @ST_POSITIVE, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 9
  store i32 %116, i32* %118, align 8
  br label %123

119:                                              ; preds = %106
  %120 = load i32, i32* @ST_NEGATIVE, align 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 9
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %119, %115
  br label %124

124:                                              ; preds = %123, %102
  br label %125

125:                                              ; preds = %124, %93
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp slt i64 %128, %131
  br i1 %132, label %133, label %150

133:                                              ; preds = %125
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 5
  %139 = load i64*, i64** %138, align 8
  %140 = load i64, i64* @BOXLEFT, align 8
  %141 = getelementptr inbounds i64, i64* %139, i64 %140
  store i64 %136, i64* %141, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 5
  %147 = load i64*, i64** %146, align 8
  %148 = load i64, i64* @BOXRIGHT, align 8
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  store i64 %144, i64* %149, align 8
  br label %167

150:                                              ; preds = %125
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 5
  %156 = load i64*, i64** %155, align 8
  %157 = load i64, i64* @BOXLEFT, align 8
  %158 = getelementptr inbounds i64, i64* %156, i64 %157
  store i64 %153, i64* %158, align 8
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 5
  %164 = load i64*, i64** %163, align 8
  %165 = load i64, i64* @BOXRIGHT, align 8
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  store i64 %161, i64* %166, align 8
  br label %167

167:                                              ; preds = %150, %133
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp slt i64 %170, %173
  br i1 %174, label %175, label %192

175:                                              ; preds = %167
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 5
  %181 = load i64*, i64** %180, align 8
  %182 = load i64, i64* @BOXBOTTOM, align 8
  %183 = getelementptr inbounds i64, i64* %181, i64 %182
  store i64 %178, i64* %183, align 8
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 5
  %189 = load i64*, i64** %188, align 8
  %190 = load i64, i64* @BOXTOP, align 8
  %191 = getelementptr inbounds i64, i64* %189, i64 %190
  store i64 %186, i64* %191, align 8
  br label %209

192:                                              ; preds = %167
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 5
  %198 = load i64*, i64** %197, align 8
  %199 = load i64, i64* @BOXBOTTOM, align 8
  %200 = getelementptr inbounds i64, i64* %198, i64 %199
  store i64 %195, i64* %200, align 8
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 5
  %206 = load i64*, i64** %205, align 8
  %207 = load i64, i64* @BOXTOP, align 8
  %208 = getelementptr inbounds i64, i64* %206, i64 %207
  store i64 %203, i64* %208, align 8
  br label %209

209:                                              ; preds = %192, %175
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = call i64 @SHORT(i32 %214)
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 6
  %218 = load i64*, i64** %217, align 8
  %219 = getelementptr inbounds i64, i64* %218, i64 0
  store i64 %215, i64* %219, align 8
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 1
  %224 = load i32, i32* %223, align 4
  %225 = call i64 @SHORT(i32 %224)
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 6
  %228 = load i64*, i64** %227, align 8
  %229 = getelementptr inbounds i64, i64* %228, i64 1
  store i64 %225, i64* %229, align 8
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 6
  %232 = load i64*, i64** %231, align 8
  %233 = getelementptr inbounds i64, i64* %232, i64 0
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, -1
  br i1 %235, label %236, label %248

236:                                              ; preds = %209
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sides, align 8
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 6
  %240 = load i64*, i64** %239, align 8
  %241 = getelementptr inbounds i64, i64* %240, i64 0
  %242 = load i64, i64* %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 8
  store i64 %245, i64* %247, align 8
  br label %251

248:                                              ; preds = %209
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 8
  store i64 0, i64* %250, align 8
  br label %251

251:                                              ; preds = %248, %236
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 6
  %254 = load i64*, i64** %253, align 8
  %255 = getelementptr inbounds i64, i64* %254, i64 1
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, -1
  br i1 %257, label %258, label %270

258:                                              ; preds = %251
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sides, align 8
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 6
  %262 = load i64*, i64** %261, align 8
  %263 = getelementptr inbounds i64, i64* %262, i64 1
  %264 = load i64, i64* %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 7
  store i64 %267, i64* %269, align 8
  br label %273

270:                                              ; preds = %251
  %271 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 7
  store i64 0, i64* %272, align 8
  br label %273

273:                                              ; preds = %270, %258
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %4, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %4, align 4
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 1
  store %struct.TYPE_10__* %278, %struct.TYPE_10__** %5, align 8
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 1
  store %struct.TYPE_11__* %280, %struct.TYPE_11__** %6, align 8
  br label %32

281:                                              ; preds = %32
  %282 = load i32*, i32** %3, align 8
  %283 = call i32 @Z_Free(i32* %282)
  ret void
}

declare dso_local i32 @W_LumpLength(i32) #1

declare dso_local %struct.TYPE_11__* @Z_Malloc(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32* @W_CacheLumpNum(i32, i32) #1

declare dso_local i64 @SHORT(i32) #1

declare dso_local i64 @FixedDiv(i64, i64) #1

declare dso_local i32 @Z_Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
