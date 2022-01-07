; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscParseInsert.c_tscParseSqlForCreateTableOnDemand.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscParseInsert.c_tscParseSqlForCreateTableOnDemand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_27__ = type { i64, i8*, i64 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_23__ = type { i8*, i32 }
%struct.TYPE_26__ = type { i64, i64 }

@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@TK_LP = common dso_local global i64 0, align 8
@TK_RP = common dso_local global i64 0, align 8
@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8
@TK_USING = common dso_local global i64 0, align 8
@TSDB_METER_ID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"create table only from super table is allowed\00", align 1
@TK_TAGS = common dso_local global i64 0, align 8
@TK_STRING = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_BINARY = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_NCHAR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"tag value too long\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8**, %struct.TYPE_24__*)* @tscParseSqlForCreateTableOnDemand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tscParseSqlForCreateTableOnDemand(i8** %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_27__, align 8
  %8 = alloca %struct.TYPE_27__, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_27__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_27__, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_27__, align 8
  %20 = alloca %struct.TYPE_27__, align 8
  %21 = alloca %struct.TYPE_27__, align 8
  %22 = alloca %struct.TYPE_23__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_26__*, align 8
  %25 = alloca %struct.TYPE_27__, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_27__, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  store i64 0, i64* %6, align 8
  %32 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %32, i64* %9, align 8
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  store %struct.TYPE_25__* %34, %struct.TYPE_25__** %10, align 8
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %36 = call %struct.TYPE_28__* @tscGetMeterMetaInfo(%struct.TYPE_25__* %35, i32 0)
  store %struct.TYPE_28__* %36, %struct.TYPE_28__** %11, align 8
  %37 = load i8**, i8*** %4, align 8
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %12, align 8
  store i64 0, i64* %6, align 8
  %39 = load i8*, i8** %12, align 8
  call void @tStrGetToken(%struct.TYPE_27__* sret %13, i8* %39, i64* %6, i32 0, i32 0, i32* null)
  %40 = bitcast %struct.TYPE_27__* %8 to i8*
  %41 = bitcast %struct.TYPE_27__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 24, i1 false)
  %42 = load i64, i64* %6, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 %42
  store i8* %44, i8** %12, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i64 0, i64* %6, align 8
  %45 = load i8*, i8** %12, align 8
  call void @tStrGetToken(%struct.TYPE_27__* sret %16, i8* %45, i64* %6, i32 0, i32 0, i32* null)
  %46 = bitcast %struct.TYPE_27__* %7 to i8*
  %47 = bitcast %struct.TYPE_27__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 24, i1 false)
  %48 = load i64, i64* %6, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 %48
  store i8* %50, i8** %12, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TK_LP, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %2
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  store i8* %58, i8** %14, align 8
  store i64 0, i64* %6, align 8
  br label %59

59:                                               ; preds = %55, %71
  %60 = load i8*, i8** %12, align 8
  call void @tStrGetToken(%struct.TYPE_27__* sret %19, i8* %60, i64* %6, i32 0, i32 0, i32* null)
  %61 = bitcast %struct.TYPE_27__* %7 to i8*
  %62 = bitcast %struct.TYPE_27__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 24, i1 false)
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TK_RP, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  store i8* %70, i8** %15, align 8
  br label %74

71:                                               ; preds = %59
  %72 = load i64, i64* %17, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %17, align 8
  br label %59

74:                                               ; preds = %67
  %75 = load i8*, i8** %12, align 8
  call void @tStrGetToken(%struct.TYPE_27__* sret %20, i8* %75, i64* %6, i32 0, i32 0, i32* null)
  %76 = bitcast %struct.TYPE_27__* %7 to i8*
  %77 = bitcast %struct.TYPE_27__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 24, i1 false)
  %78 = load i64, i64* %6, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 %78
  store i8* %80, i8** %12, align 8
  br label %81

81:                                               ; preds = %74, %2
  %82 = load i64, i64* %17, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i8*, i8** %14, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %88, i64* %3, align 8
  br label %344

89:                                               ; preds = %84, %81
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @TK_USING, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %300

94:                                               ; preds = %89
  store i64 0, i64* %6, align 8
  %95 = load i8*, i8** %12, align 8
  call void @tStrGetToken(%struct.TYPE_27__* sret %21, i8* %95, i64* %6, i32 0, i32 0, i32* null)
  %96 = bitcast %struct.TYPE_27__* %7 to i8*
  %97 = bitcast %struct.TYPE_27__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 8 %97, i64 24, i1 false)
  %98 = load i64, i64* %6, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 %98
  store i8* %100, i8** %12, align 8
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %104, %struct.TYPE_23__** %22, align 8
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %106 = call i32 @memset(%struct.TYPE_23__* %105, i32 0, i32 16)
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %108 = call i64 @setMeterID(%struct.TYPE_24__* %107, %struct.TYPE_27__* %7, i32 0)
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @TSDB_METER_ID_LEN, align 4
  %116 = call i32 @strncpy(i32 %111, i32 %114, i32 %115)
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @tscGetMeterMeta(%struct.TYPE_24__* %117, i32 %120, i32 0)
  store i64 %121, i64* %9, align 8
  %122 = load i64, i64* %9, align 8
  %123 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %94
  %126 = load i64, i64* %9, align 8
  store i64 %126, i64* %3, align 8
  br label %344

127:                                              ; preds = %94
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %129 = call i32 @UTIL_METER_IS_METRIC(%struct.TYPE_28__* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %127
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @strcpy(i64 %134, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %136 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %136, i64* %3, align 8
  br label %344

137:                                              ; preds = %127
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  store i8* %140, i8** %23, align 8
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %142, align 8
  %144 = call %struct.TYPE_26__* @tsGetTagSchema(%struct.TYPE_22__* %143)
  store %struct.TYPE_26__* %144, %struct.TYPE_26__** %24, align 8
  store i64 0, i64* %6, align 8
  %145 = load i8*, i8** %12, align 8
  call void @tStrGetToken(%struct.TYPE_27__* sret %25, i8* %145, i64* %6, i32 0, i32 0, i32* null)
  %146 = bitcast %struct.TYPE_27__* %7 to i8*
  %147 = bitcast %struct.TYPE_27__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %146, i8* align 8 %147, i64 24, i1 false)
  %148 = load i64, i64* %6, align 8
  %149 = load i8*, i8** %12, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 %148
  store i8* %150, i8** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @TK_TAGS, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %137
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i8*, i8** %12, align 8
  %160 = call i32 @setErrMsg(i64 %158, i8* %159)
  %161 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %161, i64* %3, align 8
  br label %344

162:                                              ; preds = %137
  store i64 0, i64* %26, align 8
  %163 = load i64, i64* @TK_LP, align 8
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %27, align 4
  store i32 1, i32* %28, align 4
  br label %165

165:                                              ; preds = %162, %251
  store i64 0, i64* %6, align 8
  %166 = load i8*, i8** %12, align 8
  %167 = load i32, i32* %28, align 4
  call void @tStrGetToken(%struct.TYPE_27__* sret %29, i8* %166, i64* %6, i32 1, i32 %167, i32* %27)
  %168 = bitcast %struct.TYPE_27__* %7 to i8*
  %169 = bitcast %struct.TYPE_27__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %168, i8* align 8 %169, i64 24, i1 false)
  %170 = load i64, i64* %6, align 8
  %171 = load i8*, i8** %12, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 %170
  store i8* %172, i8** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %165
  br label %260

177:                                              ; preds = %165
  %178 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @TK_RP, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %177
  br label %260

183:                                              ; preds = %177
  br label %184

184:                                              ; preds = %183
  %185 = load i64, i64* @TK_STRING, align 8
  %186 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %185, %187
  br i1 %188, label %189, label %196

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 1
  %191 = load i8*, i8** %190, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %190, align 8
  %193 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = sub nsw i64 %194, 2
  store i64 %195, i64* %193, align 8
  br label %196

196:                                              ; preds = %189, %184
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %198 = load i64, i64* %26, align 8
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i64 %198
  %200 = load i8*, i8** %23, align 8
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = call i64 @tsParseOneColumnData(%struct.TYPE_26__* %199, %struct.TYPE_27__* %7, i8* %200, i64 %203, i8** %12, i32 0, i32 %208)
  store i64 %209, i64* %9, align 8
  %210 = load i64, i64* %9, align 8
  %211 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %196
  %214 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i8*, i8** %12, align 8
  %218 = call i32 @setErrMsg(i64 %216, i8* %217)
  %219 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %219, i64* %3, align 8
  br label %344

220:                                              ; preds = %196
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %222 = load i64, i64* %26, align 8
  %223 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @TSDB_DATA_TYPE_BINARY, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %236, label %228

228:                                              ; preds = %220
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %230 = load i64, i64* %26, align 8
  %231 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %229, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @TSDB_DATA_TYPE_NCHAR, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %251

236:                                              ; preds = %228, %220
  %237 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %240 = load i64, i64* %26, align 8
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %239, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = icmp sgt i64 %238, %243
  br i1 %244, label %245, label %251

245:                                              ; preds = %236
  %246 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = call i32 @strcpy(i64 %248, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %250 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %250, i64* %3, align 8
  br label %344

251:                                              ; preds = %236, %228
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %253 = load i64, i64* %26, align 8
  %254 = add nsw i64 %253, 1
  store i64 %254, i64* %26, align 8
  %255 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %252, i64 %253
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load i8*, i8** %23, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 %257
  store i8* %259, i8** %23, align 8
  br label %165

260:                                              ; preds = %182, %176
  %261 = load i64, i64* %26, align 8
  %262 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %263 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %262, i32 0, i32 1
  %264 = load %struct.TYPE_22__*, %struct.TYPE_22__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %261, %266
  br i1 %267, label %268, label %275

268:                                              ; preds = %260
  %269 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load i8*, i8** %12, align 8
  %273 = call i32 @setErrMsg(i64 %271, i8* %272)
  %274 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %274, i64* %3, align 8
  br label %344

275:                                              ; preds = %260
  %276 = call i64 @tscValidateName(%struct.TYPE_27__* %8)
  %277 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %278 = icmp ne i64 %276, %277
  br i1 %278, label %279, label %286

279:                                              ; preds = %275
  %280 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %281 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i8*, i8** %12, align 8
  %284 = call i32 @setErrMsg(i64 %282, i8* %283)
  %285 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %285, i64* %3, align 8
  br label %344

286:                                              ; preds = %275
  %287 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %288 = call i64 @setMeterID(%struct.TYPE_24__* %287, %struct.TYPE_27__* %8, i32 0)
  store i64 %288, i64* %30, align 8
  %289 = load i64, i64* %30, align 8
  %290 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %291 = icmp ne i64 %289, %290
  br i1 %291, label %292, label %294

292:                                              ; preds = %286
  %293 = load i64, i64* %30, align 8
  store i64 %293, i64* %3, align 8
  br label %344

294:                                              ; preds = %286
  store i32 1, i32* %18, align 4
  %295 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %296 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %297 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = call i64 @tscGetMeterMetaEx(%struct.TYPE_24__* %295, i32 %298, i32 1)
  store i64 %299, i64* %9, align 8
  br label %314

300:                                              ; preds = %89
  %301 = load i8*, i8** %14, align 8
  %302 = icmp ne i8* %301, null
  br i1 %302, label %303, label %305

303:                                              ; preds = %300
  %304 = load i8*, i8** %14, align 8
  store i8* %304, i8** %12, align 8
  br label %308

305:                                              ; preds = %300
  %306 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 1
  %307 = load i8*, i8** %306, align 8
  store i8* %307, i8** %12, align 8
  br label %308

308:                                              ; preds = %305, %303
  %309 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %310 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %311 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = call i64 @tscGetMeterMeta(%struct.TYPE_24__* %309, i32 %312, i32 0)
  store i64 %313, i64* %9, align 8
  br label %314

314:                                              ; preds = %308, %294
  %315 = load i8*, i8** %15, align 8
  %316 = load i8*, i8** %14, align 8
  %317 = ptrtoint i8* %315 to i64
  %318 = ptrtoint i8* %316 to i64
  %319 = sub i64 %317, %318
  %320 = add nsw i64 %319, 1
  store i64 %320, i64* %31, align 8
  %321 = load i8*, i8** %14, align 8
  %322 = icmp ne i8* %321, null
  br i1 %322, label %323, label %339

323:                                              ; preds = %314
  %324 = load i32, i32* %18, align 4
  %325 = icmp eq i32 %324, 1
  br i1 %325, label %326, label %339

326:                                              ; preds = %323
  %327 = load i8*, i8** %12, align 8
  %328 = load i64, i64* %31, align 8
  %329 = sub i64 0, %328
  %330 = getelementptr inbounds i8, i8* %327, i64 %329
  %331 = load i8*, i8** %14, align 8
  %332 = load i64, i64* %31, align 8
  %333 = call i32 @memmove(i8* %330, i8* %331, i64 %332)
  %334 = load i8*, i8** %12, align 8
  %335 = load i64, i64* %31, align 8
  %336 = sub i64 0, %335
  %337 = getelementptr inbounds i8, i8* %334, i64 %336
  %338 = load i8**, i8*** %4, align 8
  store i8* %337, i8** %338, align 8
  br label %342

339:                                              ; preds = %323, %314
  %340 = load i8*, i8** %12, align 8
  %341 = load i8**, i8*** %4, align 8
  store i8* %340, i8** %341, align 8
  br label %342

342:                                              ; preds = %339, %326
  %343 = load i64, i64* %9, align 8
  store i64 %343, i64* %3, align 8
  br label %344

344:                                              ; preds = %342, %292, %279, %268, %245, %213, %155, %131, %125, %87
  %345 = load i64, i64* %3, align 8
  ret i64 %345
}

declare dso_local %struct.TYPE_28__* @tscGetMeterMetaInfo(%struct.TYPE_25__*, i32) #1

declare dso_local void @tStrGetToken(%struct.TYPE_27__* sret, i8*, i64*, i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i64 @setMeterID(%struct.TYPE_24__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i64 @tscGetMeterMeta(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @UTIL_METER_IS_METRIC(%struct.TYPE_28__*) #1

declare dso_local i32 @strcpy(i64, i8*) #1

declare dso_local %struct.TYPE_26__* @tsGetTagSchema(%struct.TYPE_22__*) #1

declare dso_local i32 @setErrMsg(i64, i8*) #1

declare dso_local i64 @tsParseOneColumnData(%struct.TYPE_26__*, %struct.TYPE_27__*, i8*, i64, i8**, i32, i32) #1

declare dso_local i64 @tscValidateName(%struct.TYPE_27__*) #1

declare dso_local i64 @tscGetMeterMetaEx(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
