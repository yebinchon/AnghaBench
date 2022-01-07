; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_pointInterpSupporterSetData.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_pointInterpSupporterSetData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_29__*, %struct.TYPE_25__ }
%struct.TYPE_29__ = type { i64, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, i32, i32, %struct.TYPE_20__*, i64, i32 }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_25__ = type { i64, i64, %struct.TYPE_23__*, i32* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_28__ = type { i64*, i64* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i64, i64 }

@TSDB_DATA_TYPE_INT = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_BIGINT = common dso_local global i32 0, align 4
@TSDB_INTERPO_SET_VALUE = common dso_local global i64 0, align 8
@TSDB_FUNC_INTERP = common dso_local global i64 0, align 8
@PRIMARYKEY_TIMESTAMP_COL_INDEX = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_NULL = common dso_local global i32 0, align 4
@TSDB_FUNC_TAG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pointInterpSupporterSetData(%struct.TYPE_27__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_26__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_19__*, align 8
  %21 = alloca %struct.TYPE_18__*, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %4, align 8
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 1
  %25 = call i32 @isPointInterpoQuery(%struct.TYPE_25__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %335

28:                                               ; preds = %2
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 1
  store %struct.TYPE_25__* %30, %struct.TYPE_25__** %5, align 8
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_29__*, %struct.TYPE_29__** %32, align 8
  store %struct.TYPE_29__* %33, %struct.TYPE_29__** %6, align 8
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %34, i32 0, i32 1
  store %struct.TYPE_24__* %35, %struct.TYPE_24__** %7, align 8
  store i64 1, i64* %8, align 8
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i64*
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %91

48:                                               ; preds = %28
  store i64 0, i64* %10, align 8
  br label %49

49:                                               ; preds = %87, %48
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %90

55:                                               ; preds = %49
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i64 3
  %64 = bitcast i64* %8 to i8*
  %65 = load i32, i32* @TSDB_DATA_TYPE_INT, align 4
  %66 = call i32 @tVariantCreateFromBinary(%struct.TYPE_20__* %63, i8* %64, i32 8, i32 %65)
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  store i64 %67, i64* %76, align 8
  %77 = load i32, i32* @TSDB_DATA_TYPE_BIGINT, align 4
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %79, align 8
  %81 = load i64, i64* %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  store i32 %77, i32* %86, align 8
  br label %87

87:                                               ; preds = %55
  %88 = load i64, i64* %10, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %10, align 8
  br label %49

90:                                               ; preds = %49
  br label %335

91:                                               ; preds = %28
  store i64 2, i64* %8, align 8
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @TSDB_INTERPO_SET_VALUE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %207

97:                                               ; preds = %91
  store i64 0, i64* %11, align 8
  br label %98

98:                                               ; preds = %203, %97
  %99 = load i64, i64* %11, align 8
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ult i64 %99, %102
  br i1 %103, label %104, label %206

104:                                              ; preds = %98
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %106, align 8
  %108 = load i64, i64* %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i64 %108
  store %struct.TYPE_26__* %109, %struct.TYPE_26__** %12, align 8
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @TSDB_FUNC_INTERP, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %104
  br label %203

116:                                              ; preds = %104
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 1
  store i32 4, i32* %118, align 8
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %120, align 8
  %122 = load i64, i64* %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %126, %struct.TYPE_19__** %13, align 8
  %127 = call i8* @calloc(i32 1, i32 24)
  %128 = bitcast i8* %127 to %struct.TYPE_18__*
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  store %struct.TYPE_18__* %128, %struct.TYPE_18__** %130, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  store %struct.TYPE_18__* %133, %struct.TYPE_18__** %14, align 8
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %135, align 8
  %137 = load i64, i64* %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @PRIMARYKEY_TIMESTAMP_COL_INDEX, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %116
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  store i32 1, i32* %147, align 8
  br label %148

148:                                              ; preds = %145, %116
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i64 3
  %153 = bitcast i64* %8 to i8*
  %154 = load i32, i32* @TSDB_DATA_TYPE_INT, align 4
  %155 = call i32 @tVariantCreateFromBinary(%struct.TYPE_20__* %152, i8* %153, i32 8, i32 %154)
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* %11, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = bitcast i32* %160 to i8*
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 8
  %165 = call i64 @isNull(i8* %161, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %148
  %168 = load i32, i32* @TSDB_DATA_TYPE_NULL, align 4
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 3
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i64 1
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 0
  store i32 %168, i32* %173, align 8
  br label %192

174:                                              ; preds = %148
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 3
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i64 1
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* %11, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = bitcast i32* %183 to i8*
  %185 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @tVariantCreateFromBinary(%struct.TYPE_20__* %178, i8* %184, i32 %187, i32 %190)
  br label %192

192:                                              ; preds = %174, %167
  %193 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 1
  store i64 %195, i64* %197, align 8
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 2
  store i64 %200, i64* %202, align 8
  br label %203

203:                                              ; preds = %192, %115
  %204 = load i64, i64* %11, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %11, align 8
  br label %98

206:                                              ; preds = %98
  br label %334

207:                                              ; preds = %91
  %208 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %208, i32 0, i32 1
  %210 = load i64*, i64** %209, align 8
  %211 = getelementptr inbounds i64, i64* %210, i64 0
  %212 = load i64, i64* %211, align 8
  %213 = inttoptr i64 %212 to i64*
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %15, align 8
  %215 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %215, i32 0, i32 0
  %217 = load i64*, i64** %216, align 8
  %218 = getelementptr inbounds i64, i64* %217, i64 0
  %219 = load i64, i64* %218, align 8
  %220 = inttoptr i64 %219 to i64*
  %221 = load i64, i64* %220, align 8
  store i64 %221, i64* %16, align 8
  store i64 0, i64* %17, align 8
  br label %222

222:                                              ; preds = %330, %207
  %223 = load i64, i64* %17, align 8
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp ult i64 %223, %226
  br i1 %227, label %228, label %333

228:                                              ; preds = %222
  %229 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %230, align 8
  %232 = load i64, i64* %17, align 8
  %233 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i64 %232
  store %struct.TYPE_26__* %233, %struct.TYPE_26__** %18, align 8
  %234 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %235, align 8
  %237 = load i64, i64* %17, align 8
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @TSDB_FUNC_TAG, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %228
  br label %330

245:                                              ; preds = %228
  %246 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %246, i32 0, i32 2
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %247, align 8
  %249 = load i64, i64* %17, align 8
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %19, align 8
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_26__*, %struct.TYPE_26__** %256, align 8
  %258 = load i64, i64* %17, align 8
  %259 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %257, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %259, i32 0, i32 4
  %261 = load i64, i64* %260, align 8
  %262 = inttoptr i64 %261 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %262, %struct.TYPE_19__** %20, align 8
  %263 = call i8* @calloc(i32 1, i32 24)
  %264 = bitcast i8* %263 to %struct.TYPE_18__*
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 0
  store %struct.TYPE_18__* %264, %struct.TYPE_18__** %266, align 8
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %268, align 8
  store %struct.TYPE_18__* %269, %struct.TYPE_18__** %21, align 8
  %270 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %271 = load i64, i64* %17, align 8
  %272 = call i64 @GET_COLUMN_TYPE(%struct.TYPE_25__* %270, i64 %271)
  store i64 %272, i64* %22, align 8
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %273, i32 0, i32 2
  %275 = load %struct.TYPE_23__*, %struct.TYPE_23__** %274, align 8
  %276 = load i64, i64* %17, align 8
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %275, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @PRIMARYKEY_TIMESTAMP_COL_INDEX, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %287

284:                                              ; preds = %245
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 0
  store i32 1, i32* %286, align 8
  br label %308

287:                                              ; preds = %245
  %288 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %289 = load i64, i64* %15, align 8
  %290 = load i64, i64* %22, align 8
  %291 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %291, i32 0, i32 1
  %293 = load i64*, i64** %292, align 8
  %294 = load i64, i64* %19, align 8
  %295 = getelementptr inbounds i64, i64* %293, i64 %294
  %296 = load i64, i64* %295, align 8
  %297 = call i32 @doSetInterpVal(%struct.TYPE_26__* %288, i64 %289, i64 %290, i32 1, i64 %296)
  %298 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %299 = load i64, i64* %16, align 8
  %300 = load i64, i64* %22, align 8
  %301 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %301, i32 0, i32 0
  %303 = load i64*, i64** %302, align 8
  %304 = load i64, i64* %19, align 8
  %305 = getelementptr inbounds i64, i64* %303, i64 %304
  %306 = load i64, i64* %305, align 8
  %307 = call i32 @doSetInterpVal(%struct.TYPE_26__* %298, i64 %299, i64 %300, i32 2, i64 %306)
  br label %308

308:                                              ; preds = %287, %284
  %309 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %309, i32 0, i32 0
  %311 = load %struct.TYPE_26__*, %struct.TYPE_26__** %310, align 8
  %312 = load i64, i64* %17, align 8
  %313 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %311, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %313, i32 0, i32 3
  %315 = load %struct.TYPE_20__*, %struct.TYPE_20__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %315, i64 3
  %317 = bitcast i64* %8 to i8*
  %318 = load i32, i32* @TSDB_DATA_TYPE_INT, align 4
  %319 = call i32 @tVariantCreateFromBinary(%struct.TYPE_20__* %316, i8* %317, i32 8, i32 %318)
  %320 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %324 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %323, i32 0, i32 1
  store i64 %322, i64* %324, align 8
  %325 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %325, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %329 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %328, i32 0, i32 2
  store i64 %327, i64* %329, align 8
  br label %330

330:                                              ; preds = %308, %244
  %331 = load i64, i64* %17, align 8
  %332 = add i64 %331, 1
  store i64 %332, i64* %17, align 8
  br label %222

333:                                              ; preds = %222
  br label %334

334:                                              ; preds = %333, %206
  br label %335

335:                                              ; preds = %27, %334, %90
  ret void
}

declare dso_local i32 @isPointInterpoQuery(%struct.TYPE_25__*) #1

declare dso_local i32 @tVariantCreateFromBinary(%struct.TYPE_20__*, i8*, i32, i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i64 @isNull(i8*, i32) #1

declare dso_local i64 @GET_COLUMN_TYPE(%struct.TYPE_25__*, i64) #1

declare dso_local i32 @doSetInterpVal(%struct.TYPE_26__*, i64, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
