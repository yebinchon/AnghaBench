; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_whereLoopAddVirtualOne.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_whereLoopAddVirtualOne.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_18__*, %struct.TYPE_24__*, %struct.TYPE_25__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, i32* }
%struct.TYPE_17__ = type { %struct.SrcList_item* }
%struct.SrcList_item = type { %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_24__ = type { i64, i32, i32, i32, i64*, %struct.TYPE_20__, i32, i32, i32, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32, double, i32, i32, i64, i64, i64, i64, i32, i64, %struct.sqlite3_index_constraint_usage* }
%struct.sqlite3_index_constraint_usage = type { i32, i64 }
%struct.sqlite3_index_constraint = type { i64, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_BIG_DBL = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [26 x i8] c"%s.xBestIndex malfunction\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@WO_IN = common dso_local global i32 0, align 4
@SQLITE_INDEX_SCAN_UNIQUE = common dso_local global i32 0, align 4
@WHERE_ONEROW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"  bIn=%d prereqIn=%04llx prereqOut=%04llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i32, i32, i32, %struct.TYPE_21__*, i32, i32*)* @whereLoopAddVirtualOne to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whereLoopAddVirtualOne(%struct.TYPE_23__* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_21__* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca %struct.sqlite3_index_constraint*, align 8
  %18 = alloca %struct.sqlite3_index_constraint_usage*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_24__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.SrcList_item*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_22__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_22__*, align 8
  %29 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_21__* %4, %struct.TYPE_21__** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %31, align 8
  store %struct.TYPE_25__* %32, %struct.TYPE_25__** %16, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 11
  %35 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %34, align 8
  store %struct.sqlite3_index_constraint_usage* %35, %struct.sqlite3_index_constraint_usage** %18, align 8
  %36 = load i32, i32* @SQLITE_OK, align 4
  store i32 %36, i32* %21, align 4
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %38, align 8
  store %struct.TYPE_24__* %39, %struct.TYPE_24__** %22, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %23, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load %struct.SrcList_item*, %struct.SrcList_item** %50, align 8
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %51, i64 %54
  store %struct.SrcList_item* %55, %struct.SrcList_item** %24, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %25, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32*, i32** %15, align 8
  store i32 0, i32* %66, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 9
  %72 = bitcast i32* %71 to %struct.sqlite3_index_constraint**
  %73 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %72, align 8
  store %struct.sqlite3_index_constraint* %73, %struct.sqlite3_index_constraint** %17, align 8
  store i32 0, i32* %19, align 4
  br label %74

74:                                               ; preds = %108, %7
  %75 = load i32, i32* %19, align 4
  %76 = load i32, i32* %25, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %113

78:                                               ; preds = %74
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %80, align 8
  %82 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %83 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i64 %84
  store %struct.TYPE_22__* %85, %struct.TYPE_22__** %26, align 8
  %86 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %87 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %86, i32 0, i32 1
  store i32 0, i32* %87, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %11, align 4
  %92 = and i32 %90, %91
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %92, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %78
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %12, align 4
  %102 = and i32 %100, %101
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %106 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %105, i32 0, i32 1
  store i32 1, i32* %106, align 8
  br label %107

107:                                              ; preds = %104, %97, %78
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %19, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %19, align 4
  %111 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %112 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %111, i32 1
  store %struct.sqlite3_index_constraint* %112, %struct.sqlite3_index_constraint** %17, align 8
  br label %74

113:                                              ; preds = %74
  %114 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %18, align 8
  %115 = load i32, i32* %25, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 16, %116
  %118 = trunc i64 %117 to i32
  %119 = call i32 @memset(%struct.sqlite3_index_constraint_usage* %114, i32 0, i32 %118)
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32 @assert(i32 %124)
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 7
  store i64 0, i64* %127, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 8
  store i64 0, i64* %129, align 8
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 6
  store i64 0, i64* %131, align 8
  %132 = load double, double* @SQLITE_BIG_DBL, align 8
  %133 = fdiv double %132, 2.000000e+00
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 2
  store double %133, double* %135, align 8
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 3
  store i32 25, i32* %137, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 4
  store i32 0, i32* %139, align 4
  %140 = load %struct.SrcList_item*, %struct.SrcList_item** %24, align 8
  %141 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 10
  store i64 %142, i64* %144, align 8
  %145 = load i32*, i32** %23, align 8
  %146 = load %struct.SrcList_item*, %struct.SrcList_item** %24, align 8
  %147 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %146, i32 0, i32 0
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %147, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %150 = call i32 @vtabBestIndex(i32* %145, %struct.TYPE_16__* %148, %struct.TYPE_21__* %149)
  store i32 %150, i32* %21, align 4
  %151 = load i32, i32* %21, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %113
  %154 = load i32, i32* %21, align 4
  store i32 %154, i32* %8, align 4
  br label %512

155:                                              ; preds = %113
  store i32 -1, i32* %20, align 4
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %25, align 4
  %160 = icmp sge i32 %158, %159
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  store i32 0, i32* %19, align 4
  br label %163

163:                                              ; preds = %174, %155
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* %25, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %177

167:                                              ; preds = %163
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 4
  %170 = load i64*, i64** %169, align 8
  %171 = load i32, i32* %19, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %170, i64 %172
  store i64 0, i64* %173, align 8
  br label %174

174:                                              ; preds = %167
  %175 = load i32, i32* %19, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %19, align 4
  br label %163

177:                                              ; preds = %163
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  store i32 0, i32* %181, align 8
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 9
  %184 = bitcast i32* %183 to %struct.sqlite3_index_constraint**
  %185 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %184, align 8
  store %struct.sqlite3_index_constraint* %185, %struct.sqlite3_index_constraint** %17, align 8
  store i32 0, i32* %19, align 4
  br label %186

186:                                              ; preds = %348, %177
  %187 = load i32, i32* %19, align 4
  %188 = load i32, i32* %25, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %353

190:                                              ; preds = %186
  %191 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %18, align 8
  %192 = load i32, i32* %19, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %191, i64 %193
  %195 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = sub nsw i32 %196, 1
  store i32 %197, i32* %27, align 4
  %198 = icmp sge i32 %197, 0
  br i1 %198, label %199, label %347

199:                                              ; preds = %190
  %200 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %201 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %29, align 4
  %204 = load i32, i32* %27, align 4
  %205 = load i32, i32* %25, align 4
  %206 = icmp sge i32 %204, %205
  br i1 %206, label %230, label %207

207:                                              ; preds = %199
  %208 = load i32, i32* %29, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %230, label %210

210:                                              ; preds = %207
  %211 = load i32, i32* %29, align 4
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp sge i32 %211, %214
  br i1 %215, label %230, label %216

216:                                              ; preds = %210
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i32 0, i32 4
  %219 = load i64*, i64** %218, align 8
  %220 = load i32, i32* %27, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i64, i64* %219, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %230, label %225

225:                                              ; preds = %216
  %226 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %227 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %243

230:                                              ; preds = %225, %216, %210, %207, %199
  %231 = load i32*, i32** %23, align 8
  %232 = load %struct.SrcList_item*, %struct.SrcList_item** %24, align 8
  %233 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %232, i32 0, i32 0
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @sqlite3ErrorMsg(i32* %231, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %236)
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @testcase(i32 %240)
  %242 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %242, i32* %8, align 4
  br label %512

243:                                              ; preds = %225
  %244 = load i32, i32* %27, align 4
  %245 = load i32, i32* %25, align 4
  %246 = sub nsw i32 %245, 1
  %247 = icmp eq i32 %244, %246
  %248 = zext i1 %247 to i32
  %249 = call i32 @testcase(i32 %248)
  %250 = load i32, i32* %29, align 4
  %251 = icmp eq i32 %250, 0
  %252 = zext i1 %251 to i32
  %253 = call i32 @testcase(i32 %252)
  %254 = load i32, i32* %29, align 4
  %255 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %256 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = sub nsw i32 %257, 1
  %259 = icmp eq i32 %254, %258
  %260 = zext i1 %259 to i32
  %261 = call i32 @testcase(i32 %260)
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %262, i32 0, i32 1
  %264 = load %struct.TYPE_22__*, %struct.TYPE_22__** %263, align 8
  %265 = load i32, i32* %29, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %264, i64 %266
  store %struct.TYPE_22__* %267, %struct.TYPE_22__** %28, align 8
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %272 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = or i32 %273, %270
  store i32 %274, i32* %272, align 8
  %275 = load i32, i32* %27, align 4
  %276 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %277 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  %279 = icmp slt i32 %275, %278
  %280 = zext i1 %279 to i32
  %281 = call i32 @assert(i32 %280)
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  %283 = ptrtoint %struct.TYPE_22__* %282 to i64
  %284 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %285 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %284, i32 0, i32 4
  %286 = load i64*, i64** %285, align 8
  %287 = load i32, i32* %27, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i64, i64* %286, i64 %288
  store i64 %283, i64* %289, align 8
  %290 = load i32, i32* %27, align 4
  %291 = load i32, i32* %20, align 4
  %292 = icmp sgt i32 %290, %291
  br i1 %292, label %293, label %295

293:                                              ; preds = %243
  %294 = load i32, i32* %27, align 4
  store i32 %294, i32* %20, align 4
  br label %295

295:                                              ; preds = %293, %243
  %296 = load i32, i32* %27, align 4
  %297 = icmp eq i32 %296, 15
  %298 = zext i1 %297 to i32
  %299 = call i32 @testcase(i32 %298)
  %300 = load i32, i32* %27, align 4
  %301 = icmp eq i32 %300, 16
  %302 = zext i1 %301 to i32
  %303 = call i32 @testcase(i32 %302)
  %304 = load i32, i32* %27, align 4
  %305 = icmp slt i32 %304, 16
  br i1 %305, label %306, label %323

306:                                              ; preds = %295
  %307 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %18, align 8
  %308 = load i32, i32* %19, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %307, i64 %309
  %311 = getelementptr inbounds %struct.sqlite3_index_constraint_usage, %struct.sqlite3_index_constraint_usage* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %323

314:                                              ; preds = %306
  %315 = load i32, i32* %27, align 4
  %316 = shl i32 1, %315
  %317 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i32 0, i32 5
  %319 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = or i32 %321, %316
  store i32 %322, i32* %320, align 8
  br label %323

323:                                              ; preds = %314, %306, %295
  %324 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  %325 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @WO_IN, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %346

330:                                              ; preds = %323
  %331 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %332 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %331, i32 0, i32 6
  store i64 0, i64* %332, align 8
  %333 = load i32, i32* @SQLITE_INDEX_SCAN_UNIQUE, align 4
  %334 = xor i32 %333, -1
  %335 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %336 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 4
  %338 = and i32 %337, %334
  store i32 %338, i32* %336, align 4
  %339 = load i32*, i32** %15, align 8
  store i32 1, i32* %339, align 4
  %340 = load i32, i32* %12, align 4
  %341 = load i32, i32* @WO_IN, align 4
  %342 = and i32 %340, %341
  %343 = icmp eq i32 %342, 0
  %344 = zext i1 %343 to i32
  %345 = call i32 @assert(i32 %344)
  br label %346

346:                                              ; preds = %330, %323
  br label %347

347:                                              ; preds = %346, %190
  br label %348

348:                                              ; preds = %347
  %349 = load i32, i32* %19, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %19, align 4
  %351 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %352 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %351, i32 1
  store %struct.sqlite3_index_constraint* %352, %struct.sqlite3_index_constraint** %17, align 8
  br label %186

353:                                              ; preds = %186
  %354 = load i32, i32* %14, align 4
  %355 = xor i32 %354, -1
  %356 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %357 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %356, i32 0, i32 5
  %358 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = and i32 %360, %355
  store i32 %361, i32* %359, align 8
  %362 = load i32, i32* %20, align 4
  %363 = add nsw i32 %362, 1
  %364 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %365 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %364, i32 0, i32 3
  store i32 %363, i32* %365, align 8
  store i32 0, i32* %19, align 4
  br label %366

366:                                              ; preds = %393, %353
  %367 = load i32, i32* %19, align 4
  %368 = load i32, i32* %20, align 4
  %369 = icmp sle i32 %367, %368
  br i1 %369, label %370, label %396

370:                                              ; preds = %366
  %371 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %372 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %371, i32 0, i32 4
  %373 = load i64*, i64** %372, align 8
  %374 = load i32, i32* %19, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i64, i64* %373, i64 %375
  %377 = load i64, i64* %376, align 8
  %378 = icmp eq i64 %377, 0
  br i1 %378, label %379, label %392

379:                                              ; preds = %370
  %380 = load i32*, i32** %23, align 8
  %381 = load %struct.SrcList_item*, %struct.SrcList_item** %24, align 8
  %382 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %381, i32 0, i32 0
  %383 = load %struct.TYPE_16__*, %struct.TYPE_16__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = call i32 @sqlite3ErrorMsg(i32* %380, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %385)
  %387 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %388 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @testcase(i32 %389)
  %391 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %391, i32* %8, align 4
  br label %512

392:                                              ; preds = %370
  br label %393

393:                                              ; preds = %392
  %394 = load i32, i32* %19, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %19, align 4
  br label %366

396:                                              ; preds = %366
  %397 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %398 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %397, i32 0, i32 3
  %399 = load i32, i32* %398, align 8
  %400 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %401 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 4
  %403 = icmp sle i32 %399, %402
  %404 = zext i1 %403 to i32
  %405 = call i32 @assert(i32 %404)
  %406 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %407 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %406, i32 0, i32 8
  %408 = load i64, i64* %407, align 8
  %409 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %410 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %409, i32 0, i32 5
  %411 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %411, i32 0, i32 4
  store i64 %408, i64* %412, align 8
  %413 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %414 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %417 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %416, i32 0, i32 5
  %418 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %418, i32 0, i32 1
  store i32 %415, i32* %419, align 4
  %420 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %421 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %420, i32 0, i32 1
  store i32 0, i32* %421, align 4
  %422 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %423 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %422, i32 0, i32 7
  %424 = load i64, i64* %423, align 8
  %425 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %426 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %425, i32 0, i32 5
  %427 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %427, i32 0, i32 2
  store i64 %424, i64* %428, align 8
  %429 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %430 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %429, i32 0, i32 6
  %431 = load i64, i64* %430, align 8
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %433, label %437

433:                                              ; preds = %396
  %434 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %435 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %434, i32 0, i32 5
  %436 = load i64, i64* %435, align 8
  br label %438

437:                                              ; preds = %396
  br label %438

438:                                              ; preds = %437, %433
  %439 = phi i64 [ %436, %433 ], [ 0, %437 ]
  %440 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %441 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %440, i32 0, i32 5
  %442 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %441, i32 0, i32 0
  %443 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %442, i32 0, i32 3
  store i64 %439, i64* %443, align 8
  %444 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %445 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %444, i32 0, i32 9
  store i64 0, i64* %445, align 8
  %446 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %447 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %446, i32 0, i32 2
  %448 = load double, double* %447, align 8
  %449 = call i32 @sqlite3LogEstFromDouble(double %448)
  %450 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %451 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %450, i32 0, i32 8
  store i32 %449, i32* %451, align 8
  %452 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %453 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %452, i32 0, i32 3
  %454 = load i32, i32* %453, align 8
  %455 = call i32 @sqlite3LogEst(i32 %454)
  %456 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %457 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %456, i32 0, i32 7
  store i32 %455, i32* %457, align 4
  %458 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %459 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %458, i32 0, i32 4
  %460 = load i32, i32* %459, align 4
  %461 = load i32, i32* @SQLITE_INDEX_SCAN_UNIQUE, align 4
  %462 = and i32 %460, %461
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %470

464:                                              ; preds = %438
  %465 = load i32, i32* @WHERE_ONEROW, align 4
  %466 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %467 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %466, i32 0, i32 6
  %468 = load i32, i32* %467, align 8
  %469 = or i32 %468, %465
  store i32 %469, i32* %467, align 8
  br label %477

470:                                              ; preds = %438
  %471 = load i32, i32* @WHERE_ONEROW, align 4
  %472 = xor i32 %471, -1
  %473 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %474 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %473, i32 0, i32 6
  %475 = load i32, i32* %474, align 8
  %476 = and i32 %475, %472
  store i32 %476, i32* %474, align 8
  br label %477

477:                                              ; preds = %470, %464
  %478 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %479 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %480 = call i32 @whereLoopInsert(%struct.TYPE_23__* %478, %struct.TYPE_24__* %479)
  store i32 %480, i32* %21, align 4
  %481 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %482 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %481, i32 0, i32 5
  %483 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %482, i32 0, i32 0
  %484 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %498

487:                                              ; preds = %477
  %488 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %489 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %488, i32 0, i32 5
  %490 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %490, i32 0, i32 2
  %492 = load i64, i64* %491, align 8
  %493 = call i32 @sqlite3_free(i64 %492)
  %494 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %495 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %494, i32 0, i32 5
  %496 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %495, i32 0, i32 0
  %497 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %496, i32 0, i32 1
  store i32 0, i32* %497, align 4
  br label %498

498:                                              ; preds = %487, %477
  %499 = load i32*, i32** %15, align 8
  %500 = load i32, i32* %499, align 4
  %501 = load i32, i32* %10, align 4
  %502 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %503 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %502, i32 0, i32 1
  %504 = load i32, i32* %503, align 8
  %505 = load i32, i32* %10, align 4
  %506 = xor i32 %505, -1
  %507 = and i32 %504, %506
  %508 = sext i32 %507 to i64
  %509 = inttoptr i64 %508 to i8*
  %510 = call i32 @WHERETRACE(i32 65535, i8* %509)
  %511 = load i32, i32* %21, align 4
  store i32 %511, i32* %8, align 4
  br label %512

512:                                              ; preds = %498, %379, %230, %153
  %513 = load i32, i32* %8, align 4
  ret i32 %513
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.sqlite3_index_constraint_usage*, i32, i32) #1

declare dso_local i32 @vtabBestIndex(i32*, %struct.TYPE_16__*, %struct.TYPE_21__*) #1

declare dso_local i32 @sqlite3ErrorMsg(i32*, i8*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3LogEstFromDouble(double) #1

declare dso_local i32 @sqlite3LogEst(i32) #1

declare dso_local i32 @whereLoopInsert(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @sqlite3_free(i64) #1

declare dso_local i32 @WHERETRACE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
