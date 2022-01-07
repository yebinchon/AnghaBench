; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_handleExprInQueryCond.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_handleExprInQueryCond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i64, i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i64, i32, %struct.TYPE_29__, %struct.TYPE_30__*, %struct.TYPE_30__* }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_35__ = type { i32, i32*, i32*, i32, i64, %struct.TYPE_30__*, i32* }
%struct.TYPE_33__ = type { %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_32__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"meter query cannot use tags filter\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"illegal column name\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"only one query time range allowed\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"only one join condition allowed\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"AND is allowed to filter on different ordinary columns\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"not support ordinary column join\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"only one query condition on tbname allowed\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"only in/like allowed in filter table name\00", align 1
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@COLUMN_INDEX_INITIALIZER = common dso_local global %struct.TYPE_36__ zeroinitializer, align 8
@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8
@PRIMARYKEY_TIMESTAMP_COL_INDEX = common dso_local global i64 0, align 8
@TK_ID = common dso_local global i64 0, align 8
@TSDB_QUERY_TYPE_JOIN_QUERY = common dso_local global i32 0, align 4
@TSQL_EXPR_TS = common dso_local global i64 0, align 8
@TSDB_TBNAME_COLUMN_INDEX = common dso_local global i64 0, align 8
@TK_LIKE = common dso_local global i64 0, align 8
@TSDB_PATTERN_STRING_MAX_LEN = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_BINARY = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_NCHAR = common dso_local global i64 0, align 8
@TSQL_EXPR_TBNAME = common dso_local global i64 0, align 8
@TSQL_EXPR_TAG = common dso_local global i64 0, align 8
@TSQL_EXPR_COLUMN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_31__*, %struct.TYPE_30__**, %struct.TYPE_35__*, i64*, i64)* @handleExprInQueryCond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @handleExprInQueryCond(%struct.TYPE_31__* %0, %struct.TYPE_30__** %1, %struct.TYPE_35__* %2, i64* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca %struct.TYPE_30__**, align 8
  %9 = alloca %struct.TYPE_35__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_30__*, align 8
  %21 = alloca %struct.TYPE_30__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_36__, align 8
  %24 = alloca %struct.TYPE_33__*, align 8
  %25 = alloca %struct.TYPE_34__*, align 8
  %26 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %7, align 8
  store %struct.TYPE_30__** %1, %struct.TYPE_30__*** %8, align 8
  store %struct.TYPE_35__* %2, %struct.TYPE_35__** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8** %17, align 8
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8** %18, align 8
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8** %19, align 8
  %27 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %8, align 8
  %28 = load %struct.TYPE_30__*, %struct.TYPE_30__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %29, align 8
  store %struct.TYPE_30__* %30, %struct.TYPE_30__** %20, align 8
  %31 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %8, align 8
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_30__*, %struct.TYPE_30__** %33, align 8
  store %struct.TYPE_30__* %34, %struct.TYPE_30__** %21, align 8
  %35 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %35, i64* %22, align 8
  %36 = bitcast %struct.TYPE_36__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 bitcast (%struct.TYPE_36__* @COLUMN_INDEX_INITIALIZER to i8*), i64 16, i1 false)
  %37 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %38 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %40 = call i64 @getColumnIndexByNameEx(i32* %38, %struct.TYPE_31__* %39, %struct.TYPE_36__* %23)
  %41 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %5
  %44 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = call i32 @setErrMsg(%struct.TYPE_31__* %44, i8* %45)
  %47 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %47, i64* %6, align 8
  br label %281

48:                                               ; preds = %5
  %49 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %8, align 8
  %50 = load %struct.TYPE_30__*, %struct.TYPE_30__** %49, align 8
  %51 = call i32 @isExprDirectParentOfLeaftNode(%struct.TYPE_30__* %50)
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %23, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.TYPE_33__* @tscGetMeterMetaInfo(%struct.TYPE_31__* %53, i32 %55)
  store %struct.TYPE_33__* %56, %struct.TYPE_33__** %24, align 8
  %57 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %58 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_34__*, %struct.TYPE_34__** %58, align 8
  store %struct.TYPE_34__* %59, %struct.TYPE_34__** %25, align 8
  %60 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %23, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PRIMARYKEY_TIMESTAMP_COL_INDEX, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %102

64:                                               ; preds = %48
  %65 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %66 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %8, align 8
  %67 = load %struct.TYPE_30__*, %struct.TYPE_30__** %66, align 8
  %68 = call i32 @validateJoinExprNode(%struct.TYPE_31__* %65, %struct.TYPE_30__* %67, %struct.TYPE_36__* %23)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %64
  %71 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %71, i64* %6, align 8
  br label %281

72:                                               ; preds = %64
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %21, align 8
  %74 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @TK_ID, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  %79 = load i32, i32* @TSDB_QUERY_TYPE_JOIN_QUERY, align 4
  %80 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %8, align 8
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %86, align 8
  %88 = call i32 @tSQLExprDestroy(%struct.TYPE_30__* %87)
  br label %98

89:                                               ; preds = %72
  %90 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %91 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %91, i32 0, i32 6
  %93 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %8, align 8
  %94 = load %struct.TYPE_30__*, %struct.TYPE_30__** %93, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = load i64, i64* %11, align 8
  %97 = call i64 @setExprToCond(%struct.TYPE_31__* %90, i32** %92, %struct.TYPE_30__* %94, i8* %95, i64 %96)
  store i64 %97, i64* %22, align 8
  br label %98

98:                                               ; preds = %89, %78
  %99 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %8, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %99, align 8
  %100 = load i64, i64* @TSQL_EXPR_TS, align 8
  %101 = load i64*, i64** %10, align 8
  store i64 %100, i64* %101, align 8
  br label %279

102:                                              ; preds = %48
  %103 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %23, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %106 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp sge i64 %104, %107
  br i1 %108, label %114, label %109

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %23, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @TSDB_TBNAME_COLUMN_INDEX, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %256

114:                                              ; preds = %109, %102
  %115 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %116 = call i64 @UTIL_METER_IS_NOMRAL_METER(%struct.TYPE_33__* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %120 = load i8*, i8** %12, align 8
  %121 = call i32 @setErrMsg(%struct.TYPE_31__* %119, i8* %120)
  %122 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %122, i64* %6, align 8
  br label %281

123:                                              ; preds = %114
  %124 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %8, align 8
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @TK_LIKE, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %172

130:                                              ; preds = %123
  %131 = load %struct.TYPE_30__*, %struct.TYPE_30__** %21, align 8
  %132 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @TSDB_PATTERN_STRING_MAX_LEN, align 8
  %136 = icmp sgt i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %130
  %138 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %138, i64* %6, align 8
  br label %281

139:                                              ; preds = %130
  %140 = load %struct.TYPE_33__*, %struct.TYPE_33__** %24, align 8
  %141 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_34__*, %struct.TYPE_34__** %141, align 8
  %143 = call %struct.TYPE_32__* @tsGetSchema(%struct.TYPE_34__* %142)
  store %struct.TYPE_32__* %143, %struct.TYPE_32__** %26, align 8
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %145 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %144, i32 0, i32 1
  %146 = call i32 @isTablenameToken(i32* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %171, label %148

148:                                              ; preds = %139
  %149 = load %struct.TYPE_32__*, %struct.TYPE_32__** %26, align 8
  %150 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %23, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @TSDB_DATA_TYPE_BINARY, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %171

157:                                              ; preds = %148
  %158 = load %struct.TYPE_32__*, %struct.TYPE_32__** %26, align 8
  %159 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %23, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @TSDB_DATA_TYPE_NCHAR, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %157
  %167 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %168 = load i8*, i8** %13, align 8
  %169 = call i32 @setErrMsg(%struct.TYPE_31__* %167, i8* %168)
  %170 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %170, i64* %6, align 8
  br label %281

171:                                              ; preds = %157, %148, %139
  br label %172

172:                                              ; preds = %171, %123
  %173 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %23, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @TSDB_TBNAME_COLUMN_INDEX, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %213

177:                                              ; preds = %172
  %178 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %8, align 8
  %179 = load %struct.TYPE_30__*, %struct.TYPE_30__** %178, align 8
  %180 = call i32 @validTableNameOptr(%struct.TYPE_30__* %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %177
  %183 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %184 = load i8*, i8** %19, align 8
  %185 = call i32 @setErrMsg(%struct.TYPE_31__* %183, i8* %184)
  %186 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %186, i64* %6, align 8
  br label %281

187:                                              ; preds = %177
  %188 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %188, i32 0, i32 5
  %190 = load %struct.TYPE_30__*, %struct.TYPE_30__** %189, align 8
  %191 = icmp eq %struct.TYPE_30__* %190, null
  br i1 %191, label %192, label %204

192:                                              ; preds = %187
  %193 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %8, align 8
  %194 = load %struct.TYPE_30__*, %struct.TYPE_30__** %193, align 8
  %195 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %195, i32 0, i32 5
  store %struct.TYPE_30__* %194, %struct.TYPE_30__** %196, align 8
  %197 = load i64, i64* %11, align 8
  %198 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %198, i32 0, i32 4
  store i64 %197, i64* %199, align 8
  %200 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %23, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %202, i32 0, i32 3
  store i32 %201, i32* %203, align 8
  br label %209

204:                                              ; preds = %187
  %205 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %206 = load i8*, i8** %18, align 8
  %207 = call i32 @setErrMsg(%struct.TYPE_31__* %205, i8* %206)
  %208 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %208, i64* %6, align 8
  br label %281

209:                                              ; preds = %192
  %210 = load i64, i64* @TSQL_EXPR_TBNAME, align 8
  %211 = load i64*, i64** %10, align 8
  store i64 %210, i64* %211, align 8
  %212 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %8, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %212, align 8
  br label %255

213:                                              ; preds = %172
  %214 = load %struct.TYPE_30__*, %struct.TYPE_30__** %21, align 8
  %215 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @TK_ID, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %251

219:                                              ; preds = %213
  %220 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %221 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %8, align 8
  %222 = load %struct.TYPE_30__*, %struct.TYPE_30__** %221, align 8
  %223 = call i32 @validateJoinExprNode(%struct.TYPE_31__* %220, %struct.TYPE_30__* %222, %struct.TYPE_36__* %23)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %227, label %225

225:                                              ; preds = %219
  %226 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %226, i64* %6, align 8
  br label %281

227:                                              ; preds = %219
  %228 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %228, i32 0, i32 2
  %230 = load i32*, i32** %229, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %232, label %237

232:                                              ; preds = %227
  %233 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %234 = load i8*, i8** %15, align 8
  %235 = call i32 @setErrMsg(%struct.TYPE_31__* %233, i8* %234)
  %236 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %236, i64* %6, align 8
  br label %281

237:                                              ; preds = %227
  %238 = load i32, i32* @TSDB_QUERY_TYPE_JOIN_QUERY, align 4
  %239 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = or i32 %241, %238
  store i32 %242, i32* %240, align 4
  %243 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %244 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %244, i32 0, i32 2
  %246 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %8, align 8
  %247 = load %struct.TYPE_30__*, %struct.TYPE_30__** %246, align 8
  %248 = load i64, i64* %11, align 8
  %249 = call i64 @setExprToCond(%struct.TYPE_31__* %243, i32** %245, %struct.TYPE_30__* %247, i8* null, i64 %248)
  store i64 %249, i64* %22, align 8
  %250 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %8, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %250, align 8
  br label %252

251:                                              ; preds = %213
  br label %252

252:                                              ; preds = %251, %237
  %253 = load i64, i64* @TSQL_EXPR_TAG, align 8
  %254 = load i64*, i64** %10, align 8
  store i64 %253, i64* %254, align 8
  br label %255

255:                                              ; preds = %252, %209
  br label %278

256:                                              ; preds = %109
  %257 = load i64, i64* @TSQL_EXPR_COLUMN, align 8
  %258 = load i64*, i64** %10, align 8
  store i64 %257, i64* %258, align 8
  %259 = load %struct.TYPE_30__*, %struct.TYPE_30__** %21, align 8
  %260 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @TK_ID, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %269

264:                                              ; preds = %256
  %265 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %266 = load i8*, i8** %17, align 8
  %267 = call i32 @setErrMsg(%struct.TYPE_31__* %265, i8* %266)
  %268 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %268, i64* %6, align 8
  br label %281

269:                                              ; preds = %256
  %270 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %271 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %271, i32 0, i32 1
  %273 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %8, align 8
  %274 = load %struct.TYPE_30__*, %struct.TYPE_30__** %273, align 8
  %275 = load i64, i64* %11, align 8
  %276 = call i64 @setExprToCond(%struct.TYPE_31__* %270, i32** %272, %struct.TYPE_30__* %274, i8* null, i64 %275)
  store i64 %276, i64* %22, align 8
  %277 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %8, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %277, align 8
  br label %278

278:                                              ; preds = %269, %255
  br label %279

279:                                              ; preds = %278, %98
  %280 = load i64, i64* %22, align 8
  store i64 %280, i64* %6, align 8
  br label %281

281:                                              ; preds = %279, %264, %232, %225, %204, %182, %166, %137, %118, %70, %43
  %282 = load i64, i64* %6, align 8
  ret i64 %282
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @getColumnIndexByNameEx(i32*, %struct.TYPE_31__*, %struct.TYPE_36__*) #2

declare dso_local i32 @setErrMsg(%struct.TYPE_31__*, i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @isExprDirectParentOfLeaftNode(%struct.TYPE_30__*) #2

declare dso_local %struct.TYPE_33__* @tscGetMeterMetaInfo(%struct.TYPE_31__*, i32) #2

declare dso_local i32 @validateJoinExprNode(%struct.TYPE_31__*, %struct.TYPE_30__*, %struct.TYPE_36__*) #2

declare dso_local i32 @tSQLExprDestroy(%struct.TYPE_30__*) #2

declare dso_local i64 @setExprToCond(%struct.TYPE_31__*, i32**, %struct.TYPE_30__*, i8*, i64) #2

declare dso_local i64 @UTIL_METER_IS_NOMRAL_METER(%struct.TYPE_33__*) #2

declare dso_local %struct.TYPE_32__* @tsGetSchema(%struct.TYPE_34__*) #2

declare dso_local i32 @isTablenameToken(i32*) #2

declare dso_local i32 @validTableNameOptr(%struct.TYPE_30__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
