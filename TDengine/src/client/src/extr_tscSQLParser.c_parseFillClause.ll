; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_parseFillClause.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_parseFillClause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32*, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_18__ = type { i64, i32 }

@.str = private unnamed_addr constant [31 x i8] c"illegal value or data overflow\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"value is expected\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"invalid fill option\00", align 1
@TSDB_DATA_TYPE_BINARY = common dso_local global i64 0, align 8
@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@TSDB_INTERPO_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@TSDB_INTERPO_NULL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"prev\00", align 1
@TSDB_INTERPO_PREV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@TSDB_INTERPO_LINEAR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@TSDB_INTERPO_SET_VALUE = common dso_local global i32 0, align 4
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_NCHAR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @parseFillClause(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_16__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %6, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i64 0
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %7, align 8
  store i64 1, i64* %8, align 8
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TSDB_DATA_TYPE_BINARY, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %2
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @setErrMsg(%struct.TYPE_19__* %37, i8* %38)
  %40 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %40, i64* %3, align 8
  br label %374

41:                                               ; preds = %2
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @strncasecmp(i32 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 4
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* @TSDB_INTERPO_NONE, align 4
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  br label %372

58:                                               ; preds = %48, %41
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @strncasecmp(i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %103

65:                                               ; preds = %58
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 4
  br i1 %70, label %71, label %103

71:                                               ; preds = %65
  %72 = load i32, i32* @TSDB_INTERPO_NULL, align 4
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  store i64 1, i64* %12, align 8
  br label %75

75:                                               ; preds = %99, %71
  %76 = load i64, i64* %12, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ult i64 %76, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %75
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %84 = load i64, i64* %12, align 8
  %85 = call %struct.TYPE_18__* @tscFieldInfoGetField(%struct.TYPE_19__* %83, i64 %84)
  store %struct.TYPE_18__* %85, %struct.TYPE_18__** %13, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* %12, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = bitcast i32* %90 to i8*
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @setNull(i8* %91, i64 %94, i32 %97)
  br label %99

99:                                               ; preds = %82
  %100 = load i64, i64* %12, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %12, align 8
  br label %75

102:                                              ; preds = %75
  br label %371

103:                                              ; preds = %65, %58
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @strncasecmp(i32 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %103
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 4
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load i32, i32* @TSDB_INTERPO_PREV, align 4
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  br label %370

120:                                              ; preds = %110, %103
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @strncasecmp(i32 %124, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 6)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %120
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 6
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load i32, i32* @TSDB_INTERPO_LINEAR, align 4
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  br label %369

137:                                              ; preds = %127, %120
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @strncasecmp(i32 %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %363

144:                                              ; preds = %137
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 5
  br i1 %149, label %150, label %363

150:                                              ; preds = %144
  %151 = load i32, i32* @TSDB_INTERPO_SET_VALUE, align 4
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %163

158:                                              ; preds = %150
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %160 = load i8*, i8** %10, align 8
  %161 = call i32 @setErrMsg(%struct.TYPE_19__* %159, i8* %160)
  %162 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %162, i64* %3, align 8
  br label %374

163:                                              ; preds = %150
  store i64 1, i64* %14, align 8
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  store i64 %168, i64* %15, align 8
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %170 = call i64 @tscIsPointInterpQuery(%struct.TYPE_19__* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %163
  store i64 0, i64* %14, align 8
  %173 = load i64, i64* %15, align 8
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp ugt i64 %173, %177
  br i1 %178, label %179, label %184

179:                                              ; preds = %172
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %15, align 8
  br label %184

184:                                              ; preds = %179, %172
  br label %207

185:                                              ; preds = %163
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ugt i64 %189, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %185
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  br label %205

200:                                              ; preds = %185
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = sext i32 %203 to i64
  br label %205

205:                                              ; preds = %200, %195
  %206 = phi i64 [ %199, %195 ], [ %204, %200 ]
  store i64 %206, i64* %15, align 8
  br label %207

207:                                              ; preds = %205, %184
  store i64 1, i64* %16, align 8
  %208 = load i64, i64* %14, align 8
  store i64 %208, i64* %17, align 8
  br label %209

209:                                              ; preds = %268, %207
  %210 = load i64, i64* %17, align 8
  %211 = load i64, i64* %15, align 8
  %212 = icmp ult i64 %210, %211
  br i1 %212, label %213, label %273

213:                                              ; preds = %209
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %215 = load i64, i64* %17, align 8
  %216 = call %struct.TYPE_18__* @tscFieldInfoGetField(%struct.TYPE_19__* %214, i64 %215)
  store %struct.TYPE_18__* %216, %struct.TYPE_18__** %18, align 8
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %218, align 8
  %220 = load i64, i64* %16, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = load i64, i64* %17, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  %228 = bitcast i32* %227 to i8*
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = call i64 @tVariantDump(%struct.TYPE_14__* %222, i8* %228, i64 %231)
  store i64 %232, i64* %19, align 8
  %233 = load i64, i64* %19, align 8
  %234 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %241

236:                                              ; preds = %213
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %238 = load i8*, i8** %9, align 8
  %239 = call i32 @setErrMsg(%struct.TYPE_19__* %237, i8* %238)
  %240 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %240, i64* %3, align 8
  br label %374

241:                                              ; preds = %213
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @TSDB_DATA_TYPE_BINARY, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %253, label %247

247:                                              ; preds = %241
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @TSDB_DATA_TYPE_NCHAR, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %267

253:                                              ; preds = %247, %241
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = load i64, i64* %17, align 8
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  %259 = bitcast i32* %258 to i8*
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @setNull(i8* %259, i64 %262, i32 %265)
  br label %267

267:                                              ; preds = %253, %247
  br label %268

268:                                              ; preds = %267
  %269 = load i64, i64* %17, align 8
  %270 = add i64 %269, 1
  store i64 %270, i64* %17, align 8
  %271 = load i64, i64* %16, align 8
  %272 = add i64 %271, 1
  store i64 %272, i64* %16, align 8
  br label %209

273:                                              ; preds = %209
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = sext i32 %276 to i64
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = icmp ult i64 %277, %281
  br i1 %282, label %298, label %283

283:                                              ; preds = %273
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = sub nsw i32 %286, 1
  %288 = sext i32 %287 to i64
  %289 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = icmp ult i64 %288, %292
  br i1 %293, label %294, label %362

294:                                              ; preds = %283
  %295 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %296 = call i64 @tscIsPointInterpQuery(%struct.TYPE_19__* %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %362

298:                                              ; preds = %294, %273
  %299 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 1
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %300, align 8
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = sub nsw i32 %304, 1
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i64 %306
  store %struct.TYPE_16__* %307, %struct.TYPE_16__** %20, align 8
  %308 = load i64, i64* %15, align 8
  store i64 %308, i64* %21, align 8
  br label %309

309:                                              ; preds = %358, %298
  %310 = load i64, i64* %21, align 8
  %311 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = icmp ult i64 %310, %314
  br i1 %315, label %316, label %361

316:                                              ; preds = %309
  %317 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %318 = load i64, i64* %21, align 8
  %319 = call %struct.TYPE_18__* @tscFieldInfoGetField(%struct.TYPE_19__* %317, i64 %318)
  store %struct.TYPE_18__* %319, %struct.TYPE_18__** %22, align 8
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 0
  %322 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %322, i32 0, i32 0
  %324 = load i32*, i32** %323, align 8
  %325 = load i64, i64* %21, align 8
  %326 = getelementptr inbounds i32, i32* %324, i64 %325
  %327 = bitcast i32* %326 to i8*
  %328 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %329 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = call i64 @tVariantDump(%struct.TYPE_14__* %321, i8* %327, i64 %330)
  %332 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %333 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @TSDB_DATA_TYPE_BINARY, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %343, label %337

337:                                              ; preds = %316
  %338 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %339 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @TSDB_DATA_TYPE_NCHAR, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %343, label %357

343:                                              ; preds = %337, %316
  %344 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %344, i32 0, i32 0
  %346 = load i32*, i32** %345, align 8
  %347 = load i64, i64* %21, align 8
  %348 = getelementptr inbounds i32, i32* %346, i64 %347
  %349 = bitcast i32* %348 to i8*
  %350 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %351 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %354 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @setNull(i8* %349, i64 %352, i32 %355)
  br label %357

357:                                              ; preds = %343, %337
  br label %358

358:                                              ; preds = %357
  %359 = load i64, i64* %21, align 8
  %360 = add i64 %359, 1
  store i64 %360, i64* %21, align 8
  br label %309

361:                                              ; preds = %309
  br label %362

362:                                              ; preds = %361, %294, %283
  br label %368

363:                                              ; preds = %144, %137
  %364 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %365 = load i8*, i8** %11, align 8
  %366 = call i32 @setErrMsg(%struct.TYPE_19__* %364, i8* %365)
  %367 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %367, i64* %3, align 8
  br label %374

368:                                              ; preds = %362
  br label %369

369:                                              ; preds = %368, %133
  br label %370

370:                                              ; preds = %369, %116
  br label %371

371:                                              ; preds = %370, %102
  br label %372

372:                                              ; preds = %371, %54
  %373 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %373, i64* %3, align 8
  br label %374

374:                                              ; preds = %372, %363, %236, %158, %36
  %375 = load i64, i64* %3, align 8
  ret i64 %375
}

declare dso_local i32 @setErrMsg(%struct.TYPE_19__*, i8*) #1

declare dso_local i64 @strncasecmp(i32, i8*, i32) #1

declare dso_local %struct.TYPE_18__* @tscFieldInfoGetField(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @setNull(i8*, i64, i32) #1

declare dso_local i64 @tscIsPointInterpQuery(%struct.TYPE_19__*) #1

declare dso_local i64 @tVariantDump(%struct.TYPE_14__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
