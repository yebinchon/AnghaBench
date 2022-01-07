; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscParseInsert.c_tsParseOneColumnData.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscParseInsert.c_tsParseOneColumnData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@errno = common dso_local global i64 0, align 8
@TK_BOOL = common dso_local global i32 0, align 4
@TK_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@TSDB_TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@TSDB_FALSE = common dso_local global i32 0, align 4
@TSDB_DATA_NULL_STR_L = common dso_local global i32 0, align 4
@TSDB_DATA_BOOL_NULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"data is illegal\00", align 1
@TK_INTEGER = common dso_local global i32 0, align 4
@TK_FLOAT = common dso_local global i32 0, align 4
@TK_NULL = common dso_local global i32 0, align 4
@TSDB_DATA_TINYINT_NULL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i64 0, align 8
@INT8_MAX = common dso_local global i32 0, align 4
@INT8_MIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"data is overflow\00", align 1
@TK_ILLEGAL = common dso_local global i32 0, align 4
@TSDB_DATA_SMALLINT_NULL = common dso_local global i32 0, align 4
@INT16_MAX = common dso_local global i32 0, align 4
@INT16_MIN = common dso_local global i32 0, align 4
@TSDB_DATA_INT_NULL = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global i32 0, align 4
@INT32_MIN = common dso_local global i32 0, align 4
@TSDB_DATA_BIGINT_NULL = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i32 0, align 4
@INT64_MIN = common dso_local global i32 0, align 4
@TSDB_DATA_FLOAT_NULL = common dso_local global i32 0, align 4
@HUGE_VAL = common dso_local global double 0.000000e+00, align 8
@FLT_MAX = common dso_local global float 0.000000e+00, align 4
@TSDB_DATA_DOUBLE_NULL = common dso_local global i32 0, align 4
@DBL_MAX = common dso_local global double 0.000000e+00, align 8
@TSDB_DATA_BINARY_NULL = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"value too long\00", align 1
@TSDB_DATA_NCHAR_NULL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@TSDB_CODE_INVALID_SQL = common dso_local global i32 0, align 4
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsParseOneColumnData(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i8* %2, i8* %3, i8** %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca float, align 4
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8** %4, i8*** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8* null, i8** %18, align 8
  store i64 0, i64* @errno, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %683 [
    i32 135, label %27
    i32 128, label %149
    i32 130, label %215
    i32 132, label %281
    i32 137, label %347
    i32 133, label %413
    i32 134, label %503
    i32 136, label %590
    i32 131, label %620
    i32 129, label %651
  ]

27:                                               ; preds = %7
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @TK_BOOL, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TK_STRING, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %90

39:                                               ; preds = %33, %27
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %90

44:                                               ; preds = %39
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @strncmp(i32 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load i32, i32* @TSDB_TRUE, align 4
  %55 = load i8*, i8** %11, align 8
  %56 = bitcast i8* %55 to i32*
  store i32 %54, i32* %56, align 4
  br label %89

57:                                               ; preds = %44
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @strncmp(i32 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load i32, i32* @TSDB_FALSE, align 4
  %68 = load i8*, i8** %11, align 8
  %69 = bitcast i8* %68 to i32*
  store i32 %67, i32* %69, align 4
  br label %88

70:                                               ; preds = %57
  %71 = load i32, i32* @TSDB_DATA_NULL_STR_L, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @strncasecmp(i32 %71, i32 %74, i32 %77)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %70
  %81 = load i32, i32* @TSDB_DATA_BOOL_NULL, align 4
  %82 = load i8*, i8** %11, align 8
  %83 = bitcast i8* %82 to i32*
  store i32 %81, i32* %83, align 4
  br label %87

84:                                               ; preds = %70
  %85 = load i8*, i8** %12, align 8
  %86 = call i32 @INVALID_SQL_RET_MSG(i8* %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %80
  br label %88

88:                                               ; preds = %87, %66
  br label %89

89:                                               ; preds = %88, %53
  br label %148

90:                                               ; preds = %39, %33
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @TK_INTEGER, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %90
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @strtoll(i32 %99, i32* null, i32 10)
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* @TSDB_FALSE, align 4
  br label %107

105:                                              ; preds = %96
  %106 = load i32, i32* @TSDB_TRUE, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  %109 = load i8*, i8** %11, align 8
  %110 = bitcast i8* %109 to i32*
  store i32 %108, i32* %110, align 4
  br label %147

111:                                              ; preds = %90
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @TK_FLOAT, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %132

117:                                              ; preds = %111
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call double @strtod(i32 %120, i32* null)
  store double %121, double* %19, align 8
  %122 = load double, double* %19, align 8
  %123 = fcmp oeq double %122, 0.000000e+00
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i32, i32* @TSDB_FALSE, align 4
  br label %128

126:                                              ; preds = %117
  %127 = load i32, i32* @TSDB_TRUE, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  %130 = load i8*, i8** %11, align 8
  %131 = bitcast i8* %130 to i32*
  store i32 %129, i32* %131, align 4
  br label %146

132:                                              ; preds = %111
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @TK_NULL, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = load i32, i32* @TSDB_DATA_BOOL_NULL, align 4
  %140 = load i8*, i8** %11, align 8
  %141 = bitcast i8* %140 to i32*
  store i32 %139, i32* %141, align 4
  br label %145

142:                                              ; preds = %132
  %143 = load i8*, i8** %12, align 8
  %144 = call i32 @INVALID_SQL_RET_MSG(i8* %143, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %145

145:                                              ; preds = %142, %138
  br label %146

146:                                              ; preds = %145, %128
  br label %147

147:                                              ; preds = %146, %107
  br label %148

148:                                              ; preds = %147, %89
  br label %683

149:                                              ; preds = %7
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @TK_NULL, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = load i32, i32* @TSDB_DATA_TINYINT_NULL, align 4
  %157 = load i8*, i8** %11, align 8
  %158 = bitcast i8* %157 to i32*
  store i32 %156, i32* %158, align 4
  br label %214

159:                                              ; preds = %149
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @TK_STRING, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %184

165:                                              ; preds = %159
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %184

170:                                              ; preds = %165
  %171 = load i32, i32* @TSDB_DATA_NULL_STR_L, align 4
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @strncasecmp(i32 %171, i32 %174, i32 %177)
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %170
  %181 = load i32, i32* @TSDB_DATA_TINYINT_NULL, align 4
  %182 = load i8*, i8** %11, align 8
  %183 = bitcast i8* %182 to i32*
  store i32 %181, i32* %183, align 4
  br label %213

184:                                              ; preds = %170, %165, %159
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %186 = call i32 @tscToInteger(%struct.TYPE_9__* %185, i32* %16, i8** %18)
  store i32 %186, i32* %17, align 4
  %187 = load i64, i64* @errno, align 8
  %188 = load i64, i64* @ERANGE, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %198, label %190

190:                                              ; preds = %184
  %191 = load i32, i32* %16, align 4
  %192 = load i32, i32* @INT8_MAX, align 4
  %193 = icmp sgt i32 %191, %192
  br i1 %193, label %198, label %194

194:                                              ; preds = %190
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* @INT8_MIN, align 4
  %197 = icmp sle i32 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %194, %190, %184
  %199 = load i8*, i8** %12, align 8
  %200 = call i32 @INVALID_SQL_RET_MSG(i8* %199, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %209

201:                                              ; preds = %194
  %202 = load i32, i32* @TK_ILLEGAL, align 4
  %203 = load i32, i32* %17, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = load i8*, i8** %12, align 8
  %207 = call i32 @INVALID_SQL_RET_MSG(i8* %206, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %208

208:                                              ; preds = %205, %201
  br label %209

209:                                              ; preds = %208, %198
  %210 = load i32, i32* %16, align 4
  %211 = load i8*, i8** %11, align 8
  %212 = bitcast i8* %211 to i32*
  store i32 %210, i32* %212, align 4
  br label %213

213:                                              ; preds = %209, %180
  br label %214

214:                                              ; preds = %213, %155
  br label %683

215:                                              ; preds = %7
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @TK_NULL, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %215
  %222 = load i32, i32* @TSDB_DATA_SMALLINT_NULL, align 4
  %223 = load i8*, i8** %11, align 8
  %224 = bitcast i8* %223 to i32*
  store i32 %222, i32* %224, align 4
  br label %280

225:                                              ; preds = %215
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @TK_STRING, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %250

231:                                              ; preds = %225
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %250

236:                                              ; preds = %231
  %237 = load i32, i32* @TSDB_DATA_NULL_STR_L, align 4
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @strncasecmp(i32 %237, i32 %240, i32 %243)
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %236
  %247 = load i32, i32* @TSDB_DATA_SMALLINT_NULL, align 4
  %248 = load i8*, i8** %11, align 8
  %249 = bitcast i8* %248 to i32*
  store i32 %247, i32* %249, align 4
  br label %279

250:                                              ; preds = %236, %231, %225
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %252 = call i32 @tscToInteger(%struct.TYPE_9__* %251, i32* %16, i8** %18)
  store i32 %252, i32* %17, align 4
  %253 = load i64, i64* @errno, align 8
  %254 = load i64, i64* @ERANGE, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %264, label %256

256:                                              ; preds = %250
  %257 = load i32, i32* %16, align 4
  %258 = load i32, i32* @INT16_MAX, align 4
  %259 = icmp sgt i32 %257, %258
  br i1 %259, label %264, label %260

260:                                              ; preds = %256
  %261 = load i32, i32* %16, align 4
  %262 = load i32, i32* @INT16_MIN, align 4
  %263 = icmp sle i32 %261, %262
  br i1 %263, label %264, label %267

264:                                              ; preds = %260, %256, %250
  %265 = load i8*, i8** %12, align 8
  %266 = call i32 @INVALID_SQL_RET_MSG(i8* %265, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %275

267:                                              ; preds = %260
  %268 = load i32, i32* @TK_ILLEGAL, align 4
  %269 = load i32, i32* %17, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %274

271:                                              ; preds = %267
  %272 = load i8*, i8** %12, align 8
  %273 = call i32 @INVALID_SQL_RET_MSG(i8* %272, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %274

274:                                              ; preds = %271, %267
  br label %275

275:                                              ; preds = %274, %264
  %276 = load i32, i32* %16, align 4
  %277 = load i8*, i8** %11, align 8
  %278 = bitcast i8* %277 to i32*
  store i32 %276, i32* %278, align 4
  br label %279

279:                                              ; preds = %275, %246
  br label %280

280:                                              ; preds = %279, %221
  br label %683

281:                                              ; preds = %7
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @TK_NULL, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %291

287:                                              ; preds = %281
  %288 = load i32, i32* @TSDB_DATA_INT_NULL, align 4
  %289 = load i8*, i8** %11, align 8
  %290 = bitcast i8* %289 to i32*
  store i32 %288, i32* %290, align 4
  br label %346

291:                                              ; preds = %281
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @TK_STRING, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %316

297:                                              ; preds = %291
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %316

302:                                              ; preds = %297
  %303 = load i32, i32* @TSDB_DATA_NULL_STR_L, align 4
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @strncasecmp(i32 %303, i32 %306, i32 %309)
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %302
  %313 = load i32, i32* @TSDB_DATA_INT_NULL, align 4
  %314 = load i8*, i8** %11, align 8
  %315 = bitcast i8* %314 to i32*
  store i32 %313, i32* %315, align 4
  br label %345

316:                                              ; preds = %302, %297, %291
  %317 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %318 = call i32 @tscToInteger(%struct.TYPE_9__* %317, i32* %16, i8** %18)
  store i32 %318, i32* %17, align 4
  %319 = load i64, i64* @errno, align 8
  %320 = load i64, i64* @ERANGE, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %330, label %322

322:                                              ; preds = %316
  %323 = load i32, i32* %16, align 4
  %324 = load i32, i32* @INT32_MAX, align 4
  %325 = icmp sgt i32 %323, %324
  br i1 %325, label %330, label %326

326:                                              ; preds = %322
  %327 = load i32, i32* %16, align 4
  %328 = load i32, i32* @INT32_MIN, align 4
  %329 = icmp sle i32 %327, %328
  br i1 %329, label %330, label %333

330:                                              ; preds = %326, %322, %316
  %331 = load i8*, i8** %12, align 8
  %332 = call i32 @INVALID_SQL_RET_MSG(i8* %331, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %341

333:                                              ; preds = %326
  %334 = load i32, i32* @TK_ILLEGAL, align 4
  %335 = load i32, i32* %17, align 4
  %336 = icmp eq i32 %334, %335
  br i1 %336, label %337, label %340

337:                                              ; preds = %333
  %338 = load i8*, i8** %12, align 8
  %339 = call i32 @INVALID_SQL_RET_MSG(i8* %338, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %340

340:                                              ; preds = %337, %333
  br label %341

341:                                              ; preds = %340, %330
  %342 = load i32, i32* %16, align 4
  %343 = load i8*, i8** %11, align 8
  %344 = bitcast i8* %343 to i32*
  store i32 %342, i32* %344, align 4
  br label %345

345:                                              ; preds = %341, %312
  br label %346

346:                                              ; preds = %345, %287
  br label %683

347:                                              ; preds = %7
  %348 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %349 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* @TK_NULL, align 4
  %352 = icmp eq i32 %350, %351
  br i1 %352, label %353, label %357

353:                                              ; preds = %347
  %354 = load i32, i32* @TSDB_DATA_BIGINT_NULL, align 4
  %355 = load i8*, i8** %11, align 8
  %356 = bitcast i8* %355 to i32*
  store i32 %354, i32* %356, align 4
  br label %412

357:                                              ; preds = %347
  %358 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @TK_STRING, align 4
  %362 = icmp eq i32 %360, %361
  br i1 %362, label %363, label %382

363:                                              ; preds = %357
  %364 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %365 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %382

368:                                              ; preds = %363
  %369 = load i32, i32* @TSDB_DATA_NULL_STR_L, align 4
  %370 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %374 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = call i32 @strncasecmp(i32 %369, i32 %372, i32 %375)
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %382

378:                                              ; preds = %368
  %379 = load i32, i32* @TSDB_DATA_BIGINT_NULL, align 4
  %380 = load i8*, i8** %11, align 8
  %381 = bitcast i8* %380 to i32*
  store i32 %379, i32* %381, align 4
  br label %411

382:                                              ; preds = %368, %363, %357
  %383 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %384 = call i32 @tscToInteger(%struct.TYPE_9__* %383, i32* %16, i8** %18)
  store i32 %384, i32* %17, align 4
  %385 = load i64, i64* @errno, align 8
  %386 = load i64, i64* @ERANGE, align 8
  %387 = icmp eq i64 %385, %386
  br i1 %387, label %396, label %388

388:                                              ; preds = %382
  %389 = load i32, i32* %16, align 4
  %390 = load i32, i32* @INT64_MAX, align 4
  %391 = icmp sgt i32 %389, %390
  br i1 %391, label %396, label %392

392:                                              ; preds = %388
  %393 = load i32, i32* %16, align 4
  %394 = load i32, i32* @INT64_MIN, align 4
  %395 = icmp sle i32 %393, %394
  br i1 %395, label %396, label %399

396:                                              ; preds = %392, %388, %382
  %397 = load i8*, i8** %12, align 8
  %398 = call i32 @INVALID_SQL_RET_MSG(i8* %397, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %407

399:                                              ; preds = %392
  %400 = load i32, i32* @TK_ILLEGAL, align 4
  %401 = load i32, i32* %17, align 4
  %402 = icmp eq i32 %400, %401
  br i1 %402, label %403, label %406

403:                                              ; preds = %399
  %404 = load i8*, i8** %12, align 8
  %405 = call i32 @INVALID_SQL_RET_MSG(i8* %404, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %406

406:                                              ; preds = %403, %399
  br label %407

407:                                              ; preds = %406, %396
  %408 = load i32, i32* %16, align 4
  %409 = load i8*, i8** %11, align 8
  %410 = bitcast i8* %409 to i32*
  store i32 %408, i32* %410, align 4
  br label %411

411:                                              ; preds = %407, %378
  br label %412

412:                                              ; preds = %411, %353
  br label %683

413:                                              ; preds = %7
  %414 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %415 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* @TK_NULL, align 4
  %418 = icmp eq i32 %416, %417
  br i1 %418, label %419, label %423

419:                                              ; preds = %413
  %420 = load i32, i32* @TSDB_DATA_FLOAT_NULL, align 4
  %421 = load i8*, i8** %11, align 8
  %422 = bitcast i8* %421 to i32*
  store i32 %420, i32* %422, align 4
  br label %502

423:                                              ; preds = %413
  %424 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %425 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = load i32, i32* @TK_STRING, align 4
  %428 = icmp eq i32 %426, %427
  br i1 %428, label %429, label %448

429:                                              ; preds = %423
  %430 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %431 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %448

434:                                              ; preds = %429
  %435 = load i32, i32* @TSDB_DATA_NULL_STR_L, align 4
  %436 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %437 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %436, i32 0, i32 2
  %438 = load i32, i32* %437, align 4
  %439 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %440 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = call i32 @strncasecmp(i32 %435, i32 %438, i32 %441)
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %444, label %448

444:                                              ; preds = %434
  %445 = load i32, i32* @TSDB_DATA_FLOAT_NULL, align 4
  %446 = load i8*, i8** %11, align 8
  %447 = bitcast i8* %446 to i32*
  store i32 %445, i32* %447, align 4
  br label %501

448:                                              ; preds = %434, %429, %423
  %449 = load i32, i32* @TK_ILLEGAL, align 4
  %450 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %451 = call i32 @tscToDouble(%struct.TYPE_9__* %450, double* %20, i8** %18)
  %452 = icmp eq i32 %449, %451
  br i1 %452, label %453, label %456

453:                                              ; preds = %448
  %454 = load i8*, i8** %12, align 8
  %455 = call i32 @INVALID_SQL_RET_MSG(i8* %454, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %456

456:                                              ; preds = %453, %448
  %457 = load double, double* %20, align 8
  %458 = fptrunc double %457 to float
  store float %458, float* %21, align 4
  %459 = load double, double* %20, align 8
  %460 = load double, double* @HUGE_VAL, align 8
  %461 = fcmp oeq double %459, %460
  br i1 %461, label %467, label %462

462:                                              ; preds = %456
  %463 = load double, double* %20, align 8
  %464 = load double, double* @HUGE_VAL, align 8
  %465 = fneg double %464
  %466 = fcmp oeq double %463, %465
  br i1 %466, label %467, label %471

467:                                              ; preds = %462, %456
  %468 = load i64, i64* @errno, align 8
  %469 = load i64, i64* @ERANGE, align 8
  %470 = icmp eq i64 %468, %469
  br i1 %470, label %480, label %471

471:                                              ; preds = %467, %462
  %472 = load float, float* %21, align 4
  %473 = load float, float* @FLT_MAX, align 4
  %474 = fcmp ogt float %472, %473
  br i1 %474, label %480, label %475

475:                                              ; preds = %471
  %476 = load float, float* %21, align 4
  %477 = load float, float* @FLT_MAX, align 4
  %478 = fneg float %477
  %479 = fcmp olt float %476, %478
  br i1 %479, label %480, label %483

480:                                              ; preds = %475, %471, %467
  %481 = load i8*, i8** %12, align 8
  %482 = call i32 @INVALID_SQL_RET_MSG(i8* %481, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %483

483:                                              ; preds = %480, %475
  %484 = load float, float* %21, align 4
  %485 = fpext float %484 to double
  %486 = call i32 @isinf(double %485)
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %493, label %488

488:                                              ; preds = %483
  %489 = load float, float* %21, align 4
  %490 = fpext float %489 to double
  %491 = call i32 @isnan(double %490)
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %497

493:                                              ; preds = %488, %483
  %494 = load i32, i32* @TSDB_DATA_FLOAT_NULL, align 4
  %495 = load i8*, i8** %11, align 8
  %496 = bitcast i8* %495 to i32*
  store i32 %494, i32* %496, align 4
  br label %497

497:                                              ; preds = %493, %488
  %498 = load float, float* %21, align 4
  %499 = load i8*, i8** %11, align 8
  %500 = bitcast i8* %499 to float*
  store float %498, float* %500, align 4
  br label %501

501:                                              ; preds = %497, %444
  br label %502

502:                                              ; preds = %501, %419
  br label %683

503:                                              ; preds = %7
  %504 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %505 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %504, i32 0, i32 0
  %506 = load i32, i32* %505, align 4
  %507 = load i32, i32* @TK_NULL, align 4
  %508 = icmp eq i32 %506, %507
  br i1 %508, label %509, label %513

509:                                              ; preds = %503
  %510 = load i32, i32* @TSDB_DATA_DOUBLE_NULL, align 4
  %511 = load i8*, i8** %11, align 8
  %512 = bitcast i8* %511 to i32*
  store i32 %510, i32* %512, align 4
  br label %589

513:                                              ; preds = %503
  %514 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %515 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 4
  %517 = load i32, i32* @TK_STRING, align 4
  %518 = icmp eq i32 %516, %517
  br i1 %518, label %519, label %538

519:                                              ; preds = %513
  %520 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %521 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %520, i32 0, i32 1
  %522 = load i32, i32* %521, align 4
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %538

524:                                              ; preds = %519
  %525 = load i32, i32* @TSDB_DATA_NULL_STR_L, align 4
  %526 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %527 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %526, i32 0, i32 2
  %528 = load i32, i32* %527, align 4
  %529 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %530 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %529, i32 0, i32 1
  %531 = load i32, i32* %530, align 4
  %532 = call i32 @strncasecmp(i32 %525, i32 %528, i32 %531)
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %538

534:                                              ; preds = %524
  %535 = load i32, i32* @TSDB_DATA_DOUBLE_NULL, align 4
  %536 = load i8*, i8** %11, align 8
  %537 = bitcast i8* %536 to i32*
  store i32 %535, i32* %537, align 4
  br label %588

538:                                              ; preds = %524, %519, %513
  %539 = load i32, i32* @TK_ILLEGAL, align 4
  %540 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %541 = call i32 @tscToDouble(%struct.TYPE_9__* %540, double* %22, i8** %18)
  %542 = icmp eq i32 %539, %541
  br i1 %542, label %543, label %546

543:                                              ; preds = %538
  %544 = load i8*, i8** %12, align 8
  %545 = call i32 @INVALID_SQL_RET_MSG(i8* %544, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %546

546:                                              ; preds = %543, %538
  %547 = load double, double* %22, align 8
  %548 = load double, double* @HUGE_VAL, align 8
  %549 = fcmp oeq double %547, %548
  br i1 %549, label %555, label %550

550:                                              ; preds = %546
  %551 = load double, double* %22, align 8
  %552 = load double, double* @HUGE_VAL, align 8
  %553 = fneg double %552
  %554 = fcmp oeq double %551, %553
  br i1 %554, label %555, label %559

555:                                              ; preds = %550, %546
  %556 = load i64, i64* @errno, align 8
  %557 = load i64, i64* @ERANGE, align 8
  %558 = icmp eq i64 %556, %557
  br i1 %558, label %568, label %559

559:                                              ; preds = %555, %550
  %560 = load double, double* %22, align 8
  %561 = load double, double* @DBL_MAX, align 8
  %562 = fcmp ogt double %560, %561
  br i1 %562, label %568, label %563

563:                                              ; preds = %559
  %564 = load double, double* %22, align 8
  %565 = load double, double* @DBL_MAX, align 8
  %566 = fneg double %565
  %567 = fcmp olt double %564, %566
  br i1 %567, label %568, label %571

568:                                              ; preds = %563, %559, %555
  %569 = load i8*, i8** %12, align 8
  %570 = call i32 @INVALID_SQL_RET_MSG(i8* %569, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %571

571:                                              ; preds = %568, %563
  %572 = load double, double* %22, align 8
  %573 = call i32 @isinf(double %572)
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %579, label %575

575:                                              ; preds = %571
  %576 = load double, double* %22, align 8
  %577 = call i32 @isnan(double %576)
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %583

579:                                              ; preds = %575, %571
  %580 = load i32, i32* @TSDB_DATA_DOUBLE_NULL, align 4
  %581 = load i8*, i8** %11, align 8
  %582 = bitcast i8* %581 to i32*
  store i32 %580, i32* %582, align 4
  br label %587

583:                                              ; preds = %575
  %584 = load double, double* %22, align 8
  %585 = load i8*, i8** %11, align 8
  %586 = bitcast i8* %585 to double*
  store double %584, double* %586, align 8
  br label %587

587:                                              ; preds = %583, %579
  br label %588

588:                                              ; preds = %587, %534
  br label %589

589:                                              ; preds = %588, %509
  br label %683

590:                                              ; preds = %7
  %591 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %592 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %591, i32 0, i32 0
  %593 = load i32, i32* %592, align 4
  %594 = load i32, i32* @TK_NULL, align 4
  %595 = icmp eq i32 %593, %594
  br i1 %595, label %596, label %599

596:                                              ; preds = %590
  %597 = load i8, i8* @TSDB_DATA_BINARY_NULL, align 1
  %598 = load i8*, i8** %11, align 8
  store i8 %597, i8* %598, align 1
  br label %619

599:                                              ; preds = %590
  %600 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %601 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %600, i32 0, i32 1
  %602 = load i32, i32* %601, align 4
  %603 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %604 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %603, i32 0, i32 1
  %605 = load i32, i32* %604, align 4
  %606 = icmp sgt i32 %602, %605
  br i1 %606, label %607, label %610

607:                                              ; preds = %599
  %608 = load i8*, i8** %12, align 8
  %609 = call i32 @INVALID_SQL_RET_MSG(i8* %608, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %610

610:                                              ; preds = %607, %599
  %611 = load i8*, i8** %11, align 8
  %612 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %613 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %612, i32 0, i32 2
  %614 = load i32, i32* %613, align 4
  %615 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %616 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %615, i32 0, i32 1
  %617 = load i32, i32* %616, align 4
  %618 = call i32 @strncpy(i8* %611, i32 %614, i32 %617)
  br label %619

619:                                              ; preds = %610, %596
  br label %683

620:                                              ; preds = %7
  %621 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %622 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %621, i32 0, i32 0
  %623 = load i32, i32* %622, align 4
  %624 = load i32, i32* @TK_NULL, align 4
  %625 = icmp eq i32 %623, %624
  br i1 %625, label %626, label %630

626:                                              ; preds = %620
  %627 = load i32, i32* @TSDB_DATA_NCHAR_NULL, align 4
  %628 = load i8*, i8** %11, align 8
  %629 = bitcast i8* %628 to i32*
  store i32 %627, i32* %629, align 4
  br label %650

630:                                              ; preds = %620
  %631 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %632 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %631, i32 0, i32 2
  %633 = load i32, i32* %632, align 4
  %634 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %635 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %634, i32 0, i32 1
  %636 = load i32, i32* %635, align 4
  %637 = load i8*, i8** %11, align 8
  %638 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %639 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %638, i32 0, i32 1
  %640 = load i32, i32* %639, align 4
  %641 = call i32 @taosMbsToUcs4(i32 %633, i32 %636, i8* %637, i32 %640)
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %649, label %643

643:                                              ; preds = %630
  %644 = load i8*, i8** %12, align 8
  %645 = load i64, i64* @errno, align 8
  %646 = call i8* @strerror(i64 %645)
  %647 = call i32 @sprintf(i8* %644, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %646)
  %648 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %648, i32* %8, align 4
  br label %684

649:                                              ; preds = %630
  br label %650

650:                                              ; preds = %649, %626
  br label %683

651:                                              ; preds = %7
  %652 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %653 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %652, i32 0, i32 0
  %654 = load i32, i32* %653, align 4
  %655 = load i32, i32* @TK_NULL, align 4
  %656 = icmp eq i32 %654, %655
  br i1 %656, label %657, label %668

657:                                              ; preds = %651
  %658 = load i32, i32* %14, align 4
  %659 = icmp ne i32 %658, 0
  br i1 %659, label %660, label %663

660:                                              ; preds = %657
  %661 = load i8*, i8** %11, align 8
  %662 = bitcast i8* %661 to i32*
  store i32 0, i32* %662, align 4
  br label %667

663:                                              ; preds = %657
  %664 = load i32, i32* @TSDB_DATA_BIGINT_NULL, align 4
  %665 = load i8*, i8** %11, align 8
  %666 = bitcast i8* %665 to i32*
  store i32 %664, i32* %666, align 4
  br label %667

667:                                              ; preds = %663, %660
  br label %682

668:                                              ; preds = %651
  %669 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %670 = load i8**, i8*** %13, align 8
  %671 = load i8*, i8** %12, align 8
  %672 = load i32, i32* %15, align 4
  %673 = call i32 @tsParseTime(%struct.TYPE_9__* %669, i32* %23, i8** %670, i8* %671, i32 %672)
  %674 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %675 = icmp ne i32 %673, %674
  br i1 %675, label %676, label %678

676:                                              ; preds = %668
  %677 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %677, i32* %8, align 4
  br label %684

678:                                              ; preds = %668
  %679 = load i32, i32* %23, align 4
  %680 = load i8*, i8** %11, align 8
  %681 = bitcast i8* %680 to i32*
  store i32 %679, i32* %681, align 4
  br label %682

682:                                              ; preds = %678, %667
  br label %683

683:                                              ; preds = %7, %682, %650, %619, %589, %502, %412, %346, %280, %214, %148
  store i32 0, i32* %8, align 4
  br label %684

684:                                              ; preds = %683, %676, %643
  %685 = load i32, i32* %8, align 4
  ret i32 %685
}

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strncasecmp(i32, i32, i32) #1

declare dso_local i32 @INVALID_SQL_RET_MSG(i8*, i8*) #1

declare dso_local i32 @strtoll(i32, i32*, i32) #1

declare dso_local double @strtod(i32, i32*) #1

declare dso_local i32 @tscToInteger(%struct.TYPE_9__*, i32*, i8**) #1

declare dso_local i32 @tscToDouble(%struct.TYPE_9__*, double*, i8**) #1

declare dso_local i32 @isinf(double) #1

declare dso_local i32 @isnan(double) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @taosMbsToUcs4(i32, i32, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @tsParseTime(%struct.TYPE_9__*, i32*, i8**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
