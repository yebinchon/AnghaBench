; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_generateColumnNames.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_generateColumnNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i64, %struct.TYPE_19__*, i32* }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_23__*, i32*, %struct.TYPE_21__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8*, i8*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i8* }

@.str = private unnamed_addr constant [25 x i8] c"generating column names\0A\00", align 1
@SQLITE_FullColNames = common dso_local global i32 0, align 4
@SQLITE_ShortColNames = common dso_local global i32 0, align 4
@TK_AGG_COLUMN = common dso_local global i64 0, align 8
@TK_COLUMN = common dso_local global i64 0, align 8
@COLNAME_NAME = common dso_local global i32 0, align 4
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"rowid\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@SQLITE_DYNAMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"column%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_21__*)* @generateColumnNames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateColumnNames(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %5, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %10, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %277

30:                                               ; preds = %2
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %30
  br label %277

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %47, %41
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %44, align 8
  %46 = icmp ne %struct.TYPE_21__* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %49, align 8
  store %struct.TYPE_21__* %50, %struct.TYPE_21__** %4, align 8
  br label %42

51:                                               ; preds = %42
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %54 = call i32 @SELECTTRACE(i32 1, %struct.TYPE_22__* %52, %struct.TYPE_21__* %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %8, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %59, align 8
  store %struct.TYPE_23__* %60, %struct.TYPE_23__** %9, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = icmp ne i32* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i32*, i32** %8, align 8
  %66 = icmp ne i32* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SQLITE_FullColNames, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %11, align 4
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SQLITE_ShortColNames, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %51
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br label %87

87:                                               ; preds = %84, %51
  %88 = phi i1 [ true, %51 ], [ %86, %84 ]
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %12, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @sqlite3VdbeSetNumCols(i32* %90, i32 %93)
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %269, %87
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %272

101:                                              ; preds = %95
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %108, align 8
  store %struct.TYPE_24__* %109, %struct.TYPE_24__** %13, align 8
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %111 = icmp ne %struct.TYPE_24__* %110, null
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @TK_AGG_COLUMN, align 8
  %118 = icmp ne i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @TK_COLUMN, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %131, label %126

126:                                              ; preds = %101
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %128, align 8
  %130 = icmp ne %struct.TYPE_20__* %129, null
  br label %131

131:                                              ; preds = %126, %101
  %132 = phi i1 [ true, %101 ], [ %130, %126 ]
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %159

144:                                              ; preds = %131
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  store i8* %152, i8** %14, align 8
  %153 = load i32*, i32** %5, align 8
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* @COLNAME_NAME, align 4
  %156 = load i8*, i8** %14, align 8
  %157 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %158 = call i32 @sqlite3VdbeSetColName(i32* %153, i32 %154, i32 %155, i8* %156, i32 %157)
  br label %268

159:                                              ; preds = %131
  %160 = load i32, i32* %12, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %239

162:                                              ; preds = %159
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @TK_COLUMN, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %239

168:                                              ; preds = %162
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* %16, align 4
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %173, align 8
  store %struct.TYPE_20__* %174, %struct.TYPE_20__** %7, align 8
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %176 = icmp ne %struct.TYPE_20__* %175, null
  %177 = zext i1 %176 to i32
  %178 = call i32 @assert(i32 %177)
  %179 = load i32, i32* %16, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %168
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  store i32 %184, i32* %16, align 4
  br label %185

185:                                              ; preds = %181, %168
  %186 = load i32, i32* %16, align 4
  %187 = icmp eq i32 %186, -1
  br i1 %187, label %199, label %188

188:                                              ; preds = %185
  %189 = load i32, i32* %16, align 4
  %190 = icmp sge i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %188
  %192 = load i32, i32* %16, align 4
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp slt i32 %192, %195
  br label %197

197:                                              ; preds = %191, %188
  %198 = phi i1 [ false, %188 ], [ %196, %191 ]
  br label %199

199:                                              ; preds = %197, %185
  %200 = phi i1 [ true, %185 ], [ %198, %197 ]
  %201 = zext i1 %200 to i32
  %202 = call i32 @assert(i32 %201)
  %203 = load i32, i32* %16, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %199
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  br label %215

206:                                              ; preds = %199
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 3
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %208, align 8
  %210 = load i32, i32* %16, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  store i8* %214, i8** %15, align 8
  br label %215

215:                                              ; preds = %206, %205
  %216 = load i32, i32* %11, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %231

218:                                              ; preds = %215
  store i8* null, i8** %17, align 8
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = load i8*, i8** %15, align 8
  %224 = call i8* (%struct.TYPE_19__*, i8*, i32, ...) @sqlite3MPrintf(%struct.TYPE_19__* %219, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %222, i8* %223)
  store i8* %224, i8** %17, align 8
  %225 = load i32*, i32** %5, align 8
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* @COLNAME_NAME, align 4
  %228 = load i8*, i8** %17, align 8
  %229 = load i32, i32* @SQLITE_DYNAMIC, align 4
  %230 = call i32 @sqlite3VdbeSetColName(i32* %225, i32 %226, i32 %227, i8* %228, i32 %229)
  br label %238

231:                                              ; preds = %215
  %232 = load i32*, i32** %5, align 8
  %233 = load i32, i32* %6, align 4
  %234 = load i32, i32* @COLNAME_NAME, align 4
  %235 = load i8*, i8** %15, align 8
  %236 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %237 = call i32 @sqlite3VdbeSetColName(i32* %232, i32 %233, i32 %234, i8* %235, i32 %236)
  br label %238

238:                                              ; preds = %231, %218
  br label %267

239:                                              ; preds = %162, %159
  %240 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %241, align 8
  %243 = load i32, i32* %6, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 1
  %247 = load i8*, i8** %246, align 8
  store i8* %247, i8** %18, align 8
  %248 = load i8*, i8** %18, align 8
  %249 = icmp eq i8* %248, null
  br i1 %249, label %250, label %255

250:                                              ; preds = %239
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %252 = load i32, i32* %6, align 4
  %253 = add nsw i32 %252, 1
  %254 = call i8* (%struct.TYPE_19__*, i8*, i32, ...) @sqlite3MPrintf(%struct.TYPE_19__* %251, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %253)
  br label %259

255:                                              ; preds = %239
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %257 = load i8*, i8** %18, align 8
  %258 = call i8* @sqlite3DbStrDup(%struct.TYPE_19__* %256, i8* %257)
  br label %259

259:                                              ; preds = %255, %250
  %260 = phi i8* [ %254, %250 ], [ %258, %255 ]
  store i8* %260, i8** %18, align 8
  %261 = load i32*, i32** %5, align 8
  %262 = load i32, i32* %6, align 4
  %263 = load i32, i32* @COLNAME_NAME, align 4
  %264 = load i8*, i8** %18, align 8
  %265 = load i32, i32* @SQLITE_DYNAMIC, align 4
  %266 = call i32 @sqlite3VdbeSetColName(i32* %261, i32 %262, i32 %263, i8* %264, i32 %265)
  br label %267

267:                                              ; preds = %259, %238
  br label %268

268:                                              ; preds = %267, %144
  br label %269

269:                                              ; preds = %268
  %270 = load i32, i32* %6, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %6, align 4
  br label %95

272:                                              ; preds = %95
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %274 = load i32*, i32** %8, align 8
  %275 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %276 = call i32 @generateColumnTypes(%struct.TYPE_22__* %273, i32* %274, %struct.TYPE_23__* %275)
  br label %277

277:                                              ; preds = %272, %40, %29
  ret void
}

declare dso_local i32 @SELECTTRACE(i32, %struct.TYPE_22__*, %struct.TYPE_21__*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeSetNumCols(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeSetColName(i32*, i32, i32, i8*, i32) #1

declare dso_local i8* @sqlite3MPrintf(%struct.TYPE_19__*, i8*, i32, ...) #1

declare dso_local i8* @sqlite3DbStrDup(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @generateColumnTypes(%struct.TYPE_22__*, i32*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
