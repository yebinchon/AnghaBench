; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_displayP4.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_displayP4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8*, %struct.TYPE_12__*, %struct.TYPE_16__*, i32*, i32, i32*, %struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_17__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, i8*, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_17__ = type { i32, i32*, %struct.TYPE_19__** }

@.str = private unnamed_addr constant [11 x i8] c"keyinfo(%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c",...\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"collseq(%.20s)\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s(%d)\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%.16g\00", align 1
@MEM_Str = common dso_local global i32 0, align 4
@MEM_Int = common dso_local global i32 0, align 4
@MEM_Real = common dso_local global i32 0, align 4
@MEM_Null = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@MEM_Blob = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"(blob)\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"vtab:%p:%p\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"intarray\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"program\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_15__*, i8*, i32)* @displayP4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @displayP4(%struct.TYPE_15__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp sge i32 %19, 20
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %274 [
    i32 132, label %26
    i32 133, label %26
    i32 138, label %132
    i32 137, label %143
    i32 135, label %157
    i32 136, label %166
    i32 130, label %174
    i32 131, label %183
    i32 128, label %249
    i32 134, label %263
    i32 129, label %267
    i32 139, label %271
  ]

26:                                               ; preds = %3, %3
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %10, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 %37, i8* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @sqlite3Strlen30(i8* %43)
  store i32 %44, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %114, %26
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %117

51:                                               ; preds = %45
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %54, i64 %56
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %57, align 8
  store %struct.TYPE_19__* %58, %struct.TYPE_19__** %11, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %60 = icmp ne %struct.TYPE_19__* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  br label %66

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %61
  %67 = phi i8* [ %64, %61 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %65 ]
  store i8* %67, i8** %12, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @sqlite3Strlen30(i8* %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* %6, align 4
  %74 = sub nsw i32 %73, 6
  %75 = icmp sgt i32 %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %66
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = call i32 @memcpy(i8* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  br label %117

82:                                               ; preds = %66
  %83 = load i8*, i8** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  store i8 44, i8* %87, align 1
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %82
  %97 = load i8*, i8** %5, align 8
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  store i8 45, i8* %101, align 1
  br label %102

102:                                              ; preds = %96, %82
  %103 = load i8*, i8** %5, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8*, i8** %12, align 8
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  %110 = call i32 @memcpy(i8* %106, i8* %107, i32 %109)
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %8, align 4
  br label %114

114:                                              ; preds = %102
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %45

117:                                              ; preds = %76, %45
  %118 = load i8*, i8** %5, align 8
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  store i8 41, i8* %122, align 1
  %123 = load i8*, i8** %5, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  store i8 0, i8* %126, align 1
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp slt i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  br label %286

132:                                              ; preds = %3
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 7
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %135, align 8
  store %struct.TYPE_19__* %136, %struct.TYPE_19__** %14, align 8
  %137 = load i32, i32* %6, align 4
  %138 = load i8*, i8** %5, align 8
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 %137, i8* %138, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %141)
  br label %286

143:                                              ; preds = %3
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 6
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %146, align 8
  store %struct.TYPE_18__* %147, %struct.TYPE_18__** %15, align 8
  %148 = load i32, i32* %6, align 4
  %149 = load i8*, i8** %5, align 8
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 %148, i8* %149, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %152, i32 %155)
  br label %286

157:                                              ; preds = %3
  %158 = load i32, i32* %6, align 4
  %159 = load i8*, i8** %5, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 5
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 %158, i8* %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %164)
  br label %286

166:                                              ; preds = %3
  %167 = load i32, i32* %6, align 4
  %168 = load i8*, i8** %5, align 8
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 %167, i8* %168, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %172)
  br label %286

174:                                              ; preds = %3
  %175 = load i32, i32* %6, align 4
  %176 = load i8*, i8** %5, align 8
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 %175, i8* %176, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %181)
  br label %286

183:                                              ; preds = %3
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %186, align 8
  store %struct.TYPE_16__* %187, %struct.TYPE_16__** %16, align 8
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @MEM_Str, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %183
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 1
  %197 = load i8*, i8** %196, align 8
  store i8* %197, i8** %7, align 8
  br label %248

198:                                              ; preds = %183
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @MEM_Int, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %198
  %206 = load i32, i32* %6, align 4
  %207 = load i8*, i8** %5, align 8
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 %206, i8* %207, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %211)
  br label %247

213:                                              ; preds = %198
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @MEM_Real, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %213
  %221 = load i32, i32* %6, align 4
  %222 = load i8*, i8** %5, align 8
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 %221, i8* %222, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %225)
  br label %246

227:                                              ; preds = %213
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @MEM_Null, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %227
  %235 = load i32, i32* %6, align 4
  %236 = load i8*, i8** %5, align 8
  %237 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 %235, i8* %236, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %245

238:                                              ; preds = %227
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @MEM_Blob, align 4
  %243 = and i32 %241, %242
  %244 = call i32 @assert(i32 %243)
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %7, align 8
  br label %245

245:                                              ; preds = %238, %234
  br label %246

246:                                              ; preds = %245, %220
  br label %247

247:                                              ; preds = %246, %205
  br label %248

248:                                              ; preds = %247, %194
  br label %286

249:                                              ; preds = %3
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %254, align 8
  store %struct.TYPE_14__* %255, %struct.TYPE_14__** %17, align 8
  %256 = load i32, i32* %6, align 4
  %257 = load i8*, i8** %5, align 8
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 %256, i8* %257, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_14__* %258, i32 %261)
  br label %286

263:                                              ; preds = %3
  %264 = load i32, i32* %6, align 4
  %265 = load i8*, i8** %5, align 8
  %266 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 %264, i8* %265, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %286

267:                                              ; preds = %3
  %268 = load i32, i32* %6, align 4
  %269 = load i8*, i8** %5, align 8
  %270 = call i32 (i32, i8*, i8*, ...) @sqlite3_snprintf(i32 %268, i8* %269, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %286

271:                                              ; preds = %3
  %272 = load i8*, i8** %5, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 0
  store i8 0, i8* %273, align 1
  br label %286

274:                                              ; preds = %3
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 0
  %278 = load i8*, i8** %277, align 8
  store i8* %278, i8** %7, align 8
  %279 = load i8*, i8** %7, align 8
  %280 = icmp eq i8* %279, null
  br i1 %280, label %281, label %285

281:                                              ; preds = %274
  %282 = load i8*, i8** %5, align 8
  store i8* %282, i8** %7, align 8
  %283 = load i8*, i8** %5, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 0
  store i8 0, i8* %284, align 1
  br label %285

285:                                              ; preds = %281, %274
  br label %286

286:                                              ; preds = %285, %271, %267, %263, %249, %248, %174, %166, %157, %143, %132, %117
  %287 = load i8*, i8** %7, align 8
  %288 = icmp ne i8* %287, null
  %289 = zext i1 %288 to i32
  %290 = call i32 @assert(i32 %289)
  %291 = load i8*, i8** %7, align 8
  ret i8* %291
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
