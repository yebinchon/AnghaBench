; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_allocateIndexInfo.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_allocateIndexInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32, i32, i32, i32, %struct.TYPE_16__*, %struct.TYPE_17__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.SrcList_item = type { i64 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i64, i32 }
%struct.sqlite3_index_constraint = type { i32, i32, i32 }
%struct.sqlite3_index_orderby = type { i32, i32 }
%struct.sqlite3_index_constraint_usage = type { i32 }
%struct.HiddenIndexInfo = type { %struct.TYPE_22__*, %struct.TYPE_21__* }

@WO_EQUIV = common dso_local global i32 0, align 4
@WO_IN = common dso_local global i32 0, align 4
@WO_ISNULL = common dso_local global i32 0, align 4
@WO_IS = common dso_local global i32 0, align 4
@WO_ALL = common dso_local global i32 0, align 4
@TERM_VNULL = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@WO_EQ = common dso_local global i32 0, align 4
@WO_AUX = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_ISNULL = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_IS = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_EQ = common dso_local global i32 0, align 4
@WO_LT = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_LT = common dso_local global i32 0, align 4
@WO_LE = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_LE = common dso_local global i32 0, align 4
@WO_GT = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_GT = common dso_local global i32 0, align 4
@WO_GE = common dso_local global i32 0, align 4
@SQLITE_INDEX_CONSTRAINT_GE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_22__*, %struct.TYPE_21__*, i32, %struct.SrcList_item*, %struct.TYPE_23__*, i32*)* @allocateIndexInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @allocateIndexInfo(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1, i32 %2, %struct.SrcList_item* %3, %struct.TYPE_23__* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.SrcList_item*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sqlite3_index_constraint*, align 8
  %18 = alloca %struct.sqlite3_index_orderby*, align 8
  %19 = alloca %struct.sqlite3_index_constraint_usage*, align 8
  %20 = alloca %struct.HiddenIndexInfo*, align 8
  %21 = alloca %struct.TYPE_20__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_19__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_24__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.SrcList_item* %3, %struct.SrcList_item** %11, align 8
  store %struct.TYPE_23__* %4, %struct.TYPE_23__** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  store %struct.TYPE_20__* %31, %struct.TYPE_20__** %21, align 8
  br label %32

32:                                               ; preds = %114, %6
  %33 = load i32, i32* %14, align 4
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %119

38:                                               ; preds = %32
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %43 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %114

47:                                               ; preds = %38
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %114

55:                                               ; preds = %47
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @WO_EQUIV, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = call i32 @IsPowerOfTwo(i32 %61)
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @WO_IN, align 4
  %68 = and i32 %66, %67
  %69 = call i32 @testcase(i32 %68)
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @WO_ISNULL, align 4
  %74 = and i32 %72, %73
  %75 = call i32 @testcase(i32 %74)
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @WO_IS, align 4
  %80 = and i32 %78, %79
  %81 = call i32 @testcase(i32 %80)
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @WO_ALL, align 4
  %86 = and i32 %84, %85
  %87 = call i32 @testcase(i32 %86)
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @WO_EQUIV, align 4
  %92 = xor i32 %91, -1
  %93 = and i32 %90, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %55
  br label %114

96:                                               ; preds = %55
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @TERM_VNULL, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %114

104:                                              ; preds = %96
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp sge i32 %108, -1
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = load i32, i32* %16, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %16, align 4
  br label %114

114:                                              ; preds = %104, %103, %95, %54, %46
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 1
  store %struct.TYPE_20__* %118, %struct.TYPE_20__** %21, align 8
  br label %32

119:                                              ; preds = %32
  store i32 0, i32* %22, align 4
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %121 = icmp ne %struct.TYPE_23__* %120, null
  br i1 %121, label %122, label %164

122:                                              ; preds = %119
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %25, align 4
  store i32 0, i32* %14, align 4
  br label %126

126:                                              ; preds = %154, %122
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %25, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %157

130:                                              ; preds = %126
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %137, align 8
  store %struct.TYPE_24__* %138, %struct.TYPE_24__** %26, align 8
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @TK_COLUMN, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %152, label %144

144:                                              ; preds = %130
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %149 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %147, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %144, %130
  br label %157

153:                                              ; preds = %144
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %14, align 4
  br label %126

157:                                              ; preds = %152, %126
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %25, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = load i32, i32* %25, align 4
  store i32 %162, i32* %22, align 4
  br label %163

163:                                              ; preds = %161, %157
  br label %164

164:                                              ; preds = %163, %119
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = mul i64 16, %169
  %171 = add i64 20, %170
  %172 = load i32, i32* %22, align 4
  %173 = sext i32 %172 to i64
  %174 = mul i64 8, %173
  %175 = add i64 %171, %174
  %176 = add i64 %175, 16
  %177 = trunc i64 %176 to i32
  %178 = call %struct.TYPE_19__* @sqlite3DbMallocZero(i32 %167, i32 %177)
  store %struct.TYPE_19__* %178, %struct.TYPE_19__** %23, align 8
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %180 = icmp eq %struct.TYPE_19__* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %164
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %183 = call i32 @sqlite3ErrorMsg(%struct.TYPE_22__* %182, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %7, align 8
  br label %523

184:                                              ; preds = %164
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i64 1
  %187 = bitcast %struct.TYPE_19__* %186 to %struct.HiddenIndexInfo*
  store %struct.HiddenIndexInfo* %187, %struct.HiddenIndexInfo** %20, align 8
  %188 = load %struct.HiddenIndexInfo*, %struct.HiddenIndexInfo** %20, align 8
  %189 = getelementptr inbounds %struct.HiddenIndexInfo, %struct.HiddenIndexInfo* %188, i64 1
  %190 = bitcast %struct.HiddenIndexInfo* %189 to %struct.sqlite3_index_constraint*
  store %struct.sqlite3_index_constraint* %190, %struct.sqlite3_index_constraint** %17, align 8
  %191 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %192 = load i32, i32* %16, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %191, i64 %193
  %195 = bitcast %struct.sqlite3_index_constraint* %194 to %struct.sqlite3_index_orderby*
  store %struct.sqlite3_index_orderby* %195, %struct.sqlite3_index_orderby** %18, align 8
  %196 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %18, align 8
  %197 = load i32, i32* %22, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %196, i64 %198
  %200 = bitcast %struct.sqlite3_index_orderby* %199 to %struct.sqlite3_index_constraint_usage*
  store %struct.sqlite3_index_constraint_usage* %200, %struct.sqlite3_index_constraint_usage** %19, align 8
  %201 = load i32, i32* %16, align 4
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 4
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* %22, align 4
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 3
  store i32 %204, i32* %206, align 4
  %207 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 2
  %210 = bitcast i32* %209 to %struct.sqlite3_index_constraint**
  store %struct.sqlite3_index_constraint* %207, %struct.sqlite3_index_constraint** %210, align 4
  %211 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %18, align 8
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 1
  %214 = bitcast i32* %213 to %struct.sqlite3_index_orderby**
  store %struct.sqlite3_index_orderby* %211, %struct.sqlite3_index_orderby** %214, align 4
  %215 = load %struct.sqlite3_index_constraint_usage*, %struct.sqlite3_index_constraint_usage** %19, align 8
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 0
  %218 = bitcast i32* %217 to %struct.sqlite3_index_constraint_usage**
  store %struct.sqlite3_index_constraint_usage* %215, %struct.sqlite3_index_constraint_usage** %218, align 4
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %220 = load %struct.HiddenIndexInfo*, %struct.HiddenIndexInfo** %20, align 8
  %221 = getelementptr inbounds %struct.HiddenIndexInfo, %struct.HiddenIndexInfo* %220, i32 0, i32 1
  store %struct.TYPE_21__* %219, %struct.TYPE_21__** %221, align 8
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %223 = load %struct.HiddenIndexInfo*, %struct.HiddenIndexInfo** %20, align 8
  %224 = getelementptr inbounds %struct.HiddenIndexInfo, %struct.HiddenIndexInfo* %223, i32 0, i32 0
  store %struct.TYPE_22__* %222, %struct.TYPE_22__** %224, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %226, align 8
  store %struct.TYPE_20__* %227, %struct.TYPE_20__** %21, align 8
  br label %228

228:                                              ; preds = %476, %184
  %229 = load i32, i32* %14, align 4
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp slt i32 %229, %232
  br i1 %233, label %234, label %481

234:                                              ; preds = %228
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.SrcList_item*, %struct.SrcList_item** %11, align 8
  %239 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %237, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %234
  br label %476

243:                                              ; preds = %234
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* %10, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %243
  br label %476

251:                                              ; preds = %243
  %252 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @WO_EQUIV, align 4
  %256 = xor i32 %255, -1
  %257 = and i32 %254, %256
  %258 = call i32 @IsPowerOfTwo(i32 %257)
  %259 = call i32 @assert(i32 %258)
  %260 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %261 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @WO_IN, align 4
  %264 = and i32 %262, %263
  %265 = call i32 @testcase(i32 %264)
  %266 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @WO_IS, align 4
  %270 = and i32 %268, %269
  %271 = call i32 @testcase(i32 %270)
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @WO_ISNULL, align 4
  %276 = and i32 %274, %275
  %277 = call i32 @testcase(i32 %276)
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @WO_ALL, align 4
  %282 = and i32 %280, %281
  %283 = call i32 @testcase(i32 %282)
  %284 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %285 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @WO_EQUIV, align 4
  %288 = xor i32 %287, -1
  %289 = and i32 %286, %288
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %251
  br label %476

292:                                              ; preds = %251
  %293 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %294 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @TERM_VNULL, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %292
  br label %476

300:                                              ; preds = %292
  %301 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %301, i32 0, i32 6
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = icmp sge i32 %304, -1
  %306 = zext i1 %305 to i32
  %307 = call i32 @assert(i32 %306)
  %308 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i32 0, i32 6
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %313 = load i32, i32* %15, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %312, i64 %314
  %316 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %315, i32 0, i32 0
  store i32 %311, i32* %316, align 4
  %317 = load i32, i32* %14, align 4
  %318 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %319 = load i32, i32* %15, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %318, i64 %320
  %322 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %321, i32 0, i32 1
  store i32 %317, i32* %322, align 4
  %323 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %324 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* @WO_ALL, align 4
  %327 = and i32 %325, %326
  store i32 %327, i32* %27, align 4
  %328 = load i32, i32* %27, align 4
  %329 = load i32, i32* @WO_IN, align 4
  %330 = icmp eq i32 %328, %329
  br i1 %330, label %331, label %333

331:                                              ; preds = %300
  %332 = load i32, i32* @WO_EQ, align 4
  store i32 %332, i32* %27, align 4
  br label %333

333:                                              ; preds = %331, %300
  %334 = load i32, i32* %27, align 4
  %335 = load i32, i32* @WO_AUX, align 4
  %336 = icmp eq i32 %334, %335
  br i1 %336, label %337, label %346

337:                                              ; preds = %333
  %338 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %339 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %338, i32 0, i32 4
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %342 = load i32, i32* %15, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %341, i64 %343
  %345 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %344, i32 0, i32 2
  store i32 %340, i32* %345, align 4
  br label %473

346:                                              ; preds = %333
  %347 = load i32, i32* %27, align 4
  %348 = load i32, i32* @WO_ISNULL, align 4
  %349 = load i32, i32* @WO_IS, align 4
  %350 = or i32 %348, %349
  %351 = and i32 %347, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %372

353:                                              ; preds = %346
  %354 = load i32, i32* %27, align 4
  %355 = load i32, i32* @WO_ISNULL, align 4
  %356 = icmp eq i32 %354, %355
  br i1 %356, label %357, label %364

357:                                              ; preds = %353
  %358 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_ISNULL, align 4
  %359 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %360 = load i32, i32* %15, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %359, i64 %361
  %363 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %362, i32 0, i32 2
  store i32 %358, i32* %363, align 4
  br label %371

364:                                              ; preds = %353
  %365 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_IS, align 4
  %366 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %367 = load i32, i32* %15, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %366, i64 %368
  %370 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %369, i32 0, i32 2
  store i32 %365, i32* %370, align 4
  br label %371

371:                                              ; preds = %364, %357
  br label %472

372:                                              ; preds = %346
  %373 = load i32, i32* %27, align 4
  %374 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %375 = load i32, i32* %15, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %374, i64 %376
  %378 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %377, i32 0, i32 2
  store i32 %373, i32* %378, align 4
  %379 = load i32, i32* @WO_EQ, align 4
  %380 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_EQ, align 4
  %381 = icmp eq i32 %379, %380
  %382 = zext i1 %381 to i32
  %383 = call i32 @assert(i32 %382)
  %384 = load i32, i32* @WO_LT, align 4
  %385 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_LT, align 4
  %386 = icmp eq i32 %384, %385
  %387 = zext i1 %386 to i32
  %388 = call i32 @assert(i32 %387)
  %389 = load i32, i32* @WO_LE, align 4
  %390 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_LE, align 4
  %391 = icmp eq i32 %389, %390
  %392 = zext i1 %391 to i32
  %393 = call i32 @assert(i32 %392)
  %394 = load i32, i32* @WO_GT, align 4
  %395 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_GT, align 4
  %396 = icmp eq i32 %394, %395
  %397 = zext i1 %396 to i32
  %398 = call i32 @assert(i32 %397)
  %399 = load i32, i32* @WO_GE, align 4
  %400 = load i32, i32* @SQLITE_INDEX_CONSTRAINT_GE, align 4
  %401 = icmp eq i32 %399, %400
  %402 = zext i1 %401 to i32
  %403 = call i32 @assert(i32 %402)
  %404 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %405 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* @WO_IN, align 4
  %408 = load i32, i32* @WO_EQ, align 4
  %409 = or i32 %407, %408
  %410 = load i32, i32* @WO_LT, align 4
  %411 = or i32 %409, %410
  %412 = load i32, i32* @WO_LE, align 4
  %413 = or i32 %411, %412
  %414 = load i32, i32* @WO_GT, align 4
  %415 = or i32 %413, %414
  %416 = load i32, i32* @WO_GE, align 4
  %417 = or i32 %415, %416
  %418 = load i32, i32* @WO_AUX, align 4
  %419 = or i32 %417, %418
  %420 = and i32 %406, %419
  %421 = call i32 @assert(i32 %420)
  %422 = load i32, i32* %27, align 4
  %423 = load i32, i32* @WO_LT, align 4
  %424 = load i32, i32* @WO_LE, align 4
  %425 = or i32 %423, %424
  %426 = load i32, i32* @WO_GT, align 4
  %427 = or i32 %425, %426
  %428 = load i32, i32* @WO_GE, align 4
  %429 = or i32 %427, %428
  %430 = and i32 %422, %429
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %471

432:                                              ; preds = %372
  %433 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %434 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %433, i32 0, i32 5
  %435 = load %struct.TYPE_16__*, %struct.TYPE_16__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = call i64 @sqlite3ExprIsVector(i32 %437)
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %471

440:                                              ; preds = %432
  %441 = load i32, i32* %14, align 4
  %442 = icmp slt i32 %441, 16
  br i1 %442, label %443, label %448

443:                                              ; preds = %440
  %444 = load i32, i32* %14, align 4
  %445 = shl i32 1, %444
  %446 = load i32, i32* %24, align 4
  %447 = or i32 %446, %445
  store i32 %447, i32* %24, align 4
  br label %448

448:                                              ; preds = %443, %440
  %449 = load i32, i32* %27, align 4
  %450 = load i32, i32* @WO_LT, align 4
  %451 = icmp eq i32 %449, %450
  br i1 %451, label %452, label %459

452:                                              ; preds = %448
  %453 = load i32, i32* @WO_LE, align 4
  %454 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %455 = load i32, i32* %15, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %454, i64 %456
  %458 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %457, i32 0, i32 2
  store i32 %453, i32* %458, align 4
  br label %459

459:                                              ; preds = %452, %448
  %460 = load i32, i32* %27, align 4
  %461 = load i32, i32* @WO_GT, align 4
  %462 = icmp eq i32 %460, %461
  br i1 %462, label %463, label %470

463:                                              ; preds = %459
  %464 = load i32, i32* @WO_GE, align 4
  %465 = load %struct.sqlite3_index_constraint*, %struct.sqlite3_index_constraint** %17, align 8
  %466 = load i32, i32* %15, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %465, i64 %467
  %469 = getelementptr inbounds %struct.sqlite3_index_constraint, %struct.sqlite3_index_constraint* %468, i32 0, i32 2
  store i32 %464, i32* %469, align 4
  br label %470

470:                                              ; preds = %463, %459
  br label %471

471:                                              ; preds = %470, %432, %372
  br label %472

472:                                              ; preds = %471, %371
  br label %473

473:                                              ; preds = %472, %337
  %474 = load i32, i32* %15, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %15, align 4
  br label %476

476:                                              ; preds = %473, %299, %291, %250, %242
  %477 = load i32, i32* %14, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %14, align 4
  %479 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %480 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %479, i32 1
  store %struct.TYPE_20__* %480, %struct.TYPE_20__** %21, align 8
  br label %228

481:                                              ; preds = %228
  store i32 0, i32* %14, align 4
  br label %482

482:                                              ; preds = %516, %481
  %483 = load i32, i32* %14, align 4
  %484 = load i32, i32* %22, align 4
  %485 = icmp slt i32 %483, %484
  br i1 %485, label %486, label %519

486:                                              ; preds = %482
  %487 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %488 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %487, i32 0, i32 1
  %489 = load %struct.TYPE_18__*, %struct.TYPE_18__** %488, align 8
  %490 = load i32, i32* %14, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %489, i64 %491
  %493 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %492, i32 0, i32 1
  %494 = load %struct.TYPE_24__*, %struct.TYPE_24__** %493, align 8
  store %struct.TYPE_24__* %494, %struct.TYPE_24__** %28, align 8
  %495 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %496 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %495, i32 0, i32 2
  %497 = load i32, i32* %496, align 8
  %498 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %18, align 8
  %499 = load i32, i32* %14, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %498, i64 %500
  %502 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %501, i32 0, i32 1
  store i32 %497, i32* %502, align 4
  %503 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %504 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %503, i32 0, i32 1
  %505 = load %struct.TYPE_18__*, %struct.TYPE_18__** %504, align 8
  %506 = load i32, i32* %14, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %505, i64 %507
  %509 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 8
  %511 = load %struct.sqlite3_index_orderby*, %struct.sqlite3_index_orderby** %18, align 8
  %512 = load i32, i32* %14, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %511, i64 %513
  %515 = getelementptr inbounds %struct.sqlite3_index_orderby, %struct.sqlite3_index_orderby* %514, i32 0, i32 0
  store i32 %510, i32* %515, align 4
  br label %516

516:                                              ; preds = %486
  %517 = load i32, i32* %14, align 4
  %518 = add nsw i32 %517, 1
  store i32 %518, i32* %14, align 4
  br label %482

519:                                              ; preds = %482
  %520 = load i32, i32* %24, align 4
  %521 = load i32*, i32** %13, align 8
  store i32 %520, i32* %521, align 4
  %522 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  store %struct.TYPE_19__* %522, %struct.TYPE_19__** %7, align 8
  br label %523

523:                                              ; preds = %519, %181
  %524 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  ret %struct.TYPE_19__* %524
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IsPowerOfTwo(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local %struct.TYPE_19__* @sqlite3DbMallocZero(i32, i32) #1

declare dso_local i32 @sqlite3ErrorMsg(%struct.TYPE_22__*, i8*) #1

declare dso_local i64 @sqlite3ExprIsVector(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
