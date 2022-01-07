; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_misc_model.c_R_LoadMD3.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_misc_model.c_R_LoadMD3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i8**, i8***, i8* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_11__ = type { i8** }
%struct.TYPE_8__ = type { i8*, i8** }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@gamedir = common dso_local global i8* null, align 8
@MD3_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"R_LoadMD3: %s has wrong version (%i should be %i)\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"R_LoadMD3: %s has no frames\0A\00", align 1
@SHADER_MAX_VERTEXES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"R_LoadMD3: %s has more than %i verts on a surface (%i)\00", align 1
@SHADER_MAX_INDEXES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"R_LoadMD3: %s has more than %i triangles on a surface (%i)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @R_LoadMD3(i8* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %16 = load i8*, i8** @gamedir, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %17)
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %20 = bitcast %struct.TYPE_12__** %6 to i8**
  %21 = call i32 @TryLoadFile(i8* %19, i8** %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %413

25:                                               ; preds = %1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @LittleLong(i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @MD3_VERSION, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load i8*, i8** %3, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @MD3_VERSION, align 4
  %37 = call i32 (i8*, i8*, ...) @_printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32 %35, i32 %36)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %413

38:                                               ; preds = %25
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @LL(i32 %41)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @LL(i32 %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @LL(i32 %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @LL(i32 %53)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @LL(i32 %57)
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @LL(i32 %61)
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @LL(i32 %65)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @LL(i32 %69)
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @LL(i32 %73)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @LL(i32 %77)
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %81, 1
  br i1 %82, label %83, label %86

83:                                               ; preds = %38
  %84 = load i8*, i8** %3, align 8
  %85 = call i32 (i8*, i8*, ...) @_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %84)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %413

86:                                               ; preds = %38
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %88 = bitcast %struct.TYPE_12__* %87 to i32*
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  %94 = bitcast i32* %93 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %94, %struct.TYPE_13__** %7, align 8
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %166, %86
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %171

101:                                              ; preds = %95
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = call i8* @LittleFloat(i8* %104)
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %162, %101
  %109 = load i32, i32* %5, align 4
  %110 = icmp slt i32 %109, 3
  br i1 %110, label %111, label %165

111:                                              ; preds = %108
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = load i8***, i8**** %113, align 8
  %115 = getelementptr inbounds i8**, i8*** %114, i64 0
  %116 = load i8**, i8*** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = call i8* @LittleFloat(i8* %120)
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load i8***, i8**** %123, align 8
  %125 = getelementptr inbounds i8**, i8*** %124, i64 0
  %126 = load i8**, i8*** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %126, i64 %128
  store i8* %121, i8** %129, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load i8***, i8**** %131, align 8
  %133 = getelementptr inbounds i8**, i8*** %132, i64 1
  %134 = load i8**, i8*** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = call i8* @LittleFloat(i8* %138)
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  %142 = load i8***, i8**** %141, align 8
  %143 = getelementptr inbounds i8**, i8*** %142, i64 1
  %144 = load i8**, i8*** %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  store i8* %139, i8** %147, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i8**, i8*** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = call i8* @LittleFloat(i8* %154)
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = load i8**, i8*** %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %158, i64 %160
  store i8* %155, i8** %161, align 8
  br label %162

162:                                              ; preds = %111
  %163 = load i32, i32* %5, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %5, align 4
  br label %108

165:                                              ; preds = %108
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %4, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %4, align 4
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 1
  store %struct.TYPE_13__* %170, %struct.TYPE_13__** %7, align 8
  br label %95

171:                                              ; preds = %95
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %173 = bitcast %struct.TYPE_12__* %172 to i32*
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 8
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %173, i64 %177
  %179 = bitcast i32* %178 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %179, %struct.TYPE_10__** %8, align 8
  store i32 0, i32* %4, align 4
  br label %180

180:                                              ; preds = %408, %171
  %181 = load i32, i32* %4, align 4
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = icmp slt i32 %181, %184
  br i1 %185, label %186, label %411

186:                                              ; preds = %180
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @LL(i32 %189)
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @LL(i32 %193)
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @LL(i32 %197)
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @LL(i32 %201)
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @LL(i32 %205)
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @LL(i32 %209)
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @LL(i32 %213)
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 7
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @LL(i32 %217)
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 8
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @LL(i32 %221)
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 9
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @LL(i32 %225)
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 10
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @LL(i32 %229)
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 6
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @SHADER_MAX_VERTEXES, align 4
  %235 = icmp sgt i32 %233, %234
  br i1 %235, label %236, label %243

236:                                              ; preds = %186
  %237 = load i8*, i8** %3, align 8
  %238 = load i32, i32* @SHADER_MAX_VERTEXES, align 4
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 6
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @Error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* %237, i32 %238, i32 %241)
  br label %243

243:                                              ; preds = %236, %186
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 4
  %247 = mul nsw i32 %246, 3
  %248 = load i32, i32* @SHADER_MAX_INDEXES, align 4
  %249 = icmp sgt i32 %247, %248
  br i1 %249, label %250, label %258

250:                                              ; preds = %243
  %251 = load i8*, i8** %3, align 8
  %252 = load i32, i32* @SHADER_MAX_INDEXES, align 4
  %253 = sdiv i32 %252, 3
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @Error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i8* %251, i32 %253, i32 %256)
  br label %258

258:                                              ; preds = %250, %243
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %260 = bitcast %struct.TYPE_10__* %259 to i32*
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %260, i64 %264
  %266 = bitcast i32* %265 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %266, %struct.TYPE_9__** %9, align 8
  store i32 0, i32* %5, align 4
  br label %267

267:                                              ; preds = %292, %258
  %268 = load i32, i32* %5, align 4
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 4
  %272 = icmp slt i32 %268, %271
  br i1 %272, label %273, label %297

273:                                              ; preds = %267
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @LL(i32 %278)
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 1
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @LL(i32 %284)
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 2
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @LL(i32 %290)
  br label %292

292:                                              ; preds = %273
  %293 = load i32, i32* %5, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %5, align 4
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 1
  store %struct.TYPE_9__* %296, %struct.TYPE_9__** %9, align 8
  br label %267

297:                                              ; preds = %267
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %299 = bitcast %struct.TYPE_10__* %298 to i32*
  %300 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 8
  %302 = load i32, i32* %301, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %299, i64 %303
  %305 = bitcast i32* %304 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %305, %struct.TYPE_11__** %10, align 8
  store i32 0, i32* %5, align 4
  br label %306

306:                                              ; preds = %333, %297
  %307 = load i32, i32* %5, align 4
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 6
  %310 = load i32, i32* %309, align 4
  %311 = icmp slt i32 %307, %310
  br i1 %311, label %312, label %338

312:                                              ; preds = %306
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 0
  %315 = load i8**, i8*** %314, align 8
  %316 = getelementptr inbounds i8*, i8** %315, i64 0
  %317 = load i8*, i8** %316, align 8
  %318 = call i8* @LittleFloat(i8* %317)
  %319 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 0
  %321 = load i8**, i8*** %320, align 8
  %322 = getelementptr inbounds i8*, i8** %321, i64 0
  store i8* %318, i8** %322, align 8
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 0
  %325 = load i8**, i8*** %324, align 8
  %326 = getelementptr inbounds i8*, i8** %325, i64 1
  %327 = load i8*, i8** %326, align 8
  %328 = call i8* @LittleFloat(i8* %327)
  %329 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %330 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %329, i32 0, i32 0
  %331 = load i8**, i8*** %330, align 8
  %332 = getelementptr inbounds i8*, i8** %331, i64 1
  store i8* %328, i8** %332, align 8
  br label %333

333:                                              ; preds = %312
  %334 = load i32, i32* %5, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %5, align 4
  %336 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i32 1
  store %struct.TYPE_11__* %337, %struct.TYPE_11__** %10, align 8
  br label %306

338:                                              ; preds = %306
  %339 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %340 = bitcast %struct.TYPE_10__* %339 to i32*
  %341 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i32 0, i32 9
  %343 = load i32, i32* %342, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %340, i64 %344
  %346 = bitcast i32* %345 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %346, %struct.TYPE_8__** %11, align 8
  store i32 0, i32* %5, align 4
  br label %347

347:                                              ; preds = %394, %338
  %348 = load i32, i32* %5, align 4
  %349 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %350 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %349, i32 0, i32 6
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 4
  %355 = mul nsw i32 %351, %354
  %356 = icmp slt i32 %348, %355
  br i1 %356, label %357, label %399

357:                                              ; preds = %347
  %358 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %359 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %358, i32 0, i32 1
  %360 = load i8**, i8*** %359, align 8
  %361 = getelementptr inbounds i8*, i8** %360, i64 0
  %362 = load i8*, i8** %361, align 8
  %363 = call i8* @LittleShort(i8* %362)
  %364 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 1
  %366 = load i8**, i8*** %365, align 8
  %367 = getelementptr inbounds i8*, i8** %366, i64 0
  store i8* %363, i8** %367, align 8
  %368 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %369 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %368, i32 0, i32 1
  %370 = load i8**, i8*** %369, align 8
  %371 = getelementptr inbounds i8*, i8** %370, i64 1
  %372 = load i8*, i8** %371, align 8
  %373 = call i8* @LittleShort(i8* %372)
  %374 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %375 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %374, i32 0, i32 1
  %376 = load i8**, i8*** %375, align 8
  %377 = getelementptr inbounds i8*, i8** %376, i64 1
  store i8* %373, i8** %377, align 8
  %378 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 1
  %380 = load i8**, i8*** %379, align 8
  %381 = getelementptr inbounds i8*, i8** %380, i64 2
  %382 = load i8*, i8** %381, align 8
  %383 = call i8* @LittleShort(i8* %382)
  %384 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i32 0, i32 1
  %386 = load i8**, i8*** %385, align 8
  %387 = getelementptr inbounds i8*, i8** %386, i64 2
  store i8* %383, i8** %387, align 8
  %388 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %389 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %388, i32 0, i32 0
  %390 = load i8*, i8** %389, align 8
  %391 = call i8* @LittleShort(i8* %390)
  %392 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %393 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %392, i32 0, i32 0
  store i8* %391, i8** %393, align 8
  br label %394

394:                                              ; preds = %357
  %395 = load i32, i32* %5, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %5, align 4
  %397 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %398 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %397, i32 1
  store %struct.TYPE_8__* %398, %struct.TYPE_8__** %11, align 8
  br label %347

399:                                              ; preds = %347
  %400 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %401 = bitcast %struct.TYPE_10__* %400 to i32*
  %402 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %403 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %402, i32 0, i32 10
  %404 = load i32, i32* %403, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %401, i64 %405
  %407 = bitcast i32* %406 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %407, %struct.TYPE_10__** %8, align 8
  br label %408

408:                                              ; preds = %399
  %409 = load i32, i32* %4, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %4, align 4
  br label %180

411:                                              ; preds = %180
  %412 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %412, %struct.TYPE_12__** %2, align 8
  br label %413

413:                                              ; preds = %411, %83, %33, %24
  %414 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  ret %struct.TYPE_12__* %414
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @TryLoadFile(i8*, i8**) #1

declare dso_local i32 @LittleLong(i32) #1

declare dso_local i32 @_printf(i8*, i8*, ...) #1

declare dso_local i32 @LL(i32) #1

declare dso_local i8* @LittleFloat(i8*) #1

declare dso_local i32 @Error(i8*, i8*, i32, i32) #1

declare dso_local i8* @LittleShort(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
