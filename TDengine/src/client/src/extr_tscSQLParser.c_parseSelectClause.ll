; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_parseSelectClause.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_parseSelectClause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_40__ = type { i32, i32, i32, %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i64 }
%struct.TYPE_37__ = type { i64, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i8*, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i64, %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i64, i32* }
%struct.TYPE_41__ = type { %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_43__ = type { i32, i32, i32* }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_39__ = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"invalid column name/illegal column type in arithmetic expression\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"functions can not be mixed up\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"not support query expression\00", align 1
@TK_ALL = common dso_local global i64 0, align 8
@TK_ID = common dso_local global i64 0, align 8
@TK_STRING = common dso_local global i64 0, align 8
@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8
@TSDB_QUERY_TYPE_PROJECTION_QUERY = common dso_local global i32 0, align 4
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@TK_COUNT = common dso_local global i64 0, align 8
@TK_LAST_ROW = common dso_local global i64 0, align 8
@TK_PLUS = common dso_local global i64 0, align 8
@TK_REM = common dso_local global i64 0, align 8
@TSDB_FUNC_ARITHM = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_DOUBLE = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_BINARY = common dso_local global i32 0, align 4
@TSDB_COL_NAME_LEN = common dso_local global i32 0, align 4
@TSDB_MAX_COLUMNS = common dso_local global i64 0, align 8
@TSDB_QUERY_TYPE_STABLE_QUERY = common dso_local global i32 0, align 4
@TSDB_SQL_RETRIEVE_TAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @parseSelectClause(%struct.TYPE_40__* %0, %struct.TYPE_37__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_40__*, align 8
  %6 = alloca %struct.TYPE_37__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_38__*, align 8
  %14 = alloca %struct.TYPE_41__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_43__, align 8
  %17 = alloca i64, align 8
  %18 = alloca [1024 x i8], align 16
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_42__, align 4
  %21 = alloca %struct.TYPE_39__*, align 8
  %22 = alloca %struct.TYPE_41__*, align 8
  store %struct.TYPE_40__* %0, %struct.TYPE_40__** %5, align 8
  store %struct.TYPE_37__* %1, %struct.TYPE_37__** %6, align 8
  store i32 %2, i32* %7, align 4
  %23 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %24 = icmp ne %struct.TYPE_37__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %27 = icmp ne %struct.TYPE_40__* %26, null
  br label %28

28:                                               ; preds = %25, %3
  %29 = phi i1 [ false, %3 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  store i64 0, i64* %11, align 8
  br label %32

32:                                               ; preds = %259, %28
  %33 = load i64, i64* %11, align 8
  %34 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %262

38:                                               ; preds = %32
  %39 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %12, align 8
  %43 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_38__*, %struct.TYPE_38__** %44, align 8
  %46 = load i64, i64* %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %45, i64 %46
  store %struct.TYPE_38__* %47, %struct.TYPE_38__** %13, align 8
  %48 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_33__*, %struct.TYPE_33__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TK_ALL, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %71, label %55

55:                                               ; preds = %38
  %56 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_33__*, %struct.TYPE_33__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TK_ID, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %71, label %63

63:                                               ; preds = %55
  %64 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_33__*, %struct.TYPE_33__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @TK_STRING, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %113

71:                                               ; preds = %63, %55, %38
  %72 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_33__*, %struct.TYPE_33__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TK_ID, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %71
  %80 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_33__*, %struct.TYPE_33__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %97

87:                                               ; preds = %79
  %88 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_33__*, %struct.TYPE_33__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %96, i64* %4, align 8
  br label %307

97:                                               ; preds = %87, %79, %71
  %98 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %99 = call i32 @extractColumnNameFromString(%struct.TYPE_38__* %98)
  %100 = load i32, i32* @TSDB_QUERY_TYPE_PROJECTION_QUERY, align 4
  %101 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %106 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %107 = call i64 @addProjectionExprAndResultField(%struct.TYPE_40__* %105, %struct.TYPE_38__* %106)
  %108 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %97
  %111 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %111, i64* %4, align 8
  br label %307

112:                                              ; preds = %97
  br label %249

113:                                              ; preds = %63
  %114 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_33__*, %struct.TYPE_33__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @TK_COUNT, align 8
  %120 = icmp sge i64 %118, %119
  br i1 %120, label %121, label %139

121:                                              ; preds = %113
  %122 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_33__*, %struct.TYPE_33__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @TK_LAST_ROW, align 8
  %128 = icmp sle i64 %126, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %121
  %130 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %131 = load i64, i64* %12, align 8
  %132 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %133 = call i64 @addExprAndResultField(%struct.TYPE_40__* %130, i64 %131, %struct.TYPE_38__* %132)
  %134 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  %137 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %137, i64* %4, align 8
  br label %307

138:                                              ; preds = %129
  br label %248

139:                                              ; preds = %121, %113
  %140 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_33__*, %struct.TYPE_33__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @TK_PLUS, align 8
  %146 = icmp sge i64 %144, %145
  br i1 %146, label %147, label %242

147:                                              ; preds = %139
  %148 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_33__*, %struct.TYPE_33__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @TK_REM, align 8
  %154 = icmp sle i64 %152, %153
  br i1 %154, label %155, label %242

155:                                              ; preds = %147
  %156 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %157 = call %struct.TYPE_41__* @tscGetMeterMetaInfo(%struct.TYPE_40__* %156, i32 0)
  store %struct.TYPE_41__* %157, %struct.TYPE_41__** %14, align 8
  %158 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_34__*, %struct.TYPE_34__** %159, align 8
  %161 = call i32* @tsGetSchema(%struct.TYPE_34__* %160)
  store i32* %161, i32** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %16, i32 0, i32 0
  store i32 0, i32* %162, align 8
  %163 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %16, i32 0, i32 1
  %164 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_34__*, %struct.TYPE_34__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %163, align 4
  %169 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %16, i32 0, i32 2
  %170 = load i32*, i32** %15, align 8
  store i32* %170, i32** %169, align 8
  %171 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_33__*, %struct.TYPE_33__** %172, align 8
  %174 = load i32*, i32** %15, align 8
  %175 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_34__*, %struct.TYPE_34__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @validateArithmeticSQLExpr(%struct.TYPE_33__* %173, i32* %174, i32 %179, %struct.TYPE_43__* %16)
  store i64 %180, i64* %17, align 8
  %181 = load i64, i64* %17, align 8
  %182 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %155
  %185 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %186 = load i8*, i8** %8, align 8
  %187 = call i32 @setErrMsg(%struct.TYPE_40__* %185, i8* %186)
  %188 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %188, i64* %4, align 8
  br label %307

189:                                              ; preds = %155
  %190 = bitcast [1024 x i8]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %190, i8 0, i64 1024, i1 false)
  %191 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  store i8* %191, i8** %19, align 8
  %192 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_33__*, %struct.TYPE_33__** %193, align 8
  %195 = call i64 @buildArithmeticExprString(%struct.TYPE_33__* %194, i8** %19)
  %196 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %189
  %199 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %199, i64* %4, align 8
  br label %307

200:                                              ; preds = %189
  %201 = bitcast %struct.TYPE_42__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %201, i8 0, i64 4, i1 false)
  %202 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %203 = load i64, i64* %12, align 8
  %204 = load i32, i32* @TSDB_FUNC_ARITHM, align 4
  %205 = load i32, i32* @TSDB_DATA_TYPE_DOUBLE, align 4
  %206 = call %struct.TYPE_39__* @tscSqlExprInsert(%struct.TYPE_40__* %202, i64 %203, i32 %204, %struct.TYPE_42__* %20, i32 %205, i32 8, i32 8)
  store %struct.TYPE_39__* %206, %struct.TYPE_39__** %21, align 8
  %207 = load %struct.TYPE_39__*, %struct.TYPE_39__** %21, align 8
  %208 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %209 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  %210 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %211 = call i32 @strlen(i8* %210)
  %212 = call i32 @addExprParams(%struct.TYPE_39__* %207, i8* %208, i32 %209, i32 %211, i32 0)
  %213 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %214 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %226

217:                                              ; preds = %200
  %218 = load %struct.TYPE_39__*, %struct.TYPE_39__** %21, align 8
  %219 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %222 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = load i32, i32* @TSDB_COL_NAME_LEN, align 4
  %225 = call i32 @strncpy(i32 %220, i8* %223, i32 %224)
  br label %233

226:                                              ; preds = %200
  %227 = load %struct.TYPE_39__*, %struct.TYPE_39__** %21, align 8
  %228 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = getelementptr inbounds [1024 x i8], [1024 x i8]* %18, i64 0, i64 0
  %231 = load i32, i32* @TSDB_COL_NAME_LEN, align 4
  %232 = call i32 @strncpy(i32 %229, i8* %230, i32 %231)
  br label %233

233:                                              ; preds = %226, %217
  %234 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %235 = load i64, i64* %11, align 8
  %236 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %16, i32 0, i32 0
  %237 = load i32, i32* @TSDB_DATA_TYPE_DOUBLE, align 4
  %238 = load %struct.TYPE_39__*, %struct.TYPE_39__** %21, align 8
  %239 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @insertResultField(%struct.TYPE_40__* %234, i64 %235, i32* %236, i32 8, i32 %237, i32 %240)
  br label %247

242:                                              ; preds = %147, %139
  %243 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %244 = load i8*, i8** %10, align 8
  %245 = call i32 @setErrMsg(%struct.TYPE_40__* %243, i8* %244)
  %246 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %246, i64* %4, align 8
  br label %307

247:                                              ; preds = %233
  br label %248

248:                                              ; preds = %247, %138
  br label %249

249:                                              ; preds = %248, %112
  %250 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %250, i32 0, i32 3
  %252 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @TSDB_MAX_COLUMNS, align 8
  %255 = icmp ugt i64 %253, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %249
  %257 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %257, i64* %4, align 8
  br label %307

258:                                              ; preds = %249
  br label %259

259:                                              ; preds = %258
  %260 = load i64, i64* %11, align 8
  %261 = add i64 %260, 1
  store i64 %261, i64* %11, align 8
  br label %32

262:                                              ; preds = %32
  %263 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %264 = call i32 @functionCompatibleCheck(%struct.TYPE_40__* %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %271, label %266

266:                                              ; preds = %262
  %267 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %268 = load i8*, i8** %9, align 8
  %269 = call i32 @setErrMsg(%struct.TYPE_40__* %267, i8* %268)
  %270 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %270, i64* %4, align 8
  br label %307

271:                                              ; preds = %262
  %272 = load i32, i32* %7, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %305

274:                                              ; preds = %271
  %275 = load i32, i32* @TSDB_QUERY_TYPE_STABLE_QUERY, align 4
  %276 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = or i32 %278, %275
  store i32 %279, i32* %277, align 8
  %280 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %281 = call %struct.TYPE_41__* @tscGetMeterMetaInfo(%struct.TYPE_40__* %280, i32 0)
  store %struct.TYPE_41__* %281, %struct.TYPE_41__** %22, align 8
  %282 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %283 = call i64 @tscQueryMetricTags(%struct.TYPE_40__* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %296

285:                                              ; preds = %274
  %286 = load i32, i32* @TSDB_SQL_RETRIEVE_TAGS, align 4
  %287 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %287, i32 0, i32 1
  store i32 %286, i32* %288, align 4
  %289 = load %struct.TYPE_41__*, %struct.TYPE_41__** %22, align 8
  %290 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_34__*, %struct.TYPE_34__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %294, i32 0, i32 0
  store i32 %293, i32* %295, align 8
  br label %296

296:                                              ; preds = %285, %274
  %297 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %298 = call i32 @tscTansformSQLFunctionForMetricQuery(%struct.TYPE_40__* %297)
  %299 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %300 = call i64 @hasUnsupportFunctionsForMetricQuery(%struct.TYPE_40__* %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %296
  %303 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %303, i64* %4, align 8
  br label %307

304:                                              ; preds = %296
  br label %305

305:                                              ; preds = %304, %271
  %306 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %306, i64* %4, align 8
  br label %307

307:                                              ; preds = %305, %302, %266, %256, %242, %198, %184, %136, %110, %95
  %308 = load i64, i64* %4, align 8
  ret i64 %308
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @extractColumnNameFromString(%struct.TYPE_38__*) #1

declare dso_local i64 @addProjectionExprAndResultField(%struct.TYPE_40__*, %struct.TYPE_38__*) #1

declare dso_local i64 @addExprAndResultField(%struct.TYPE_40__*, i64, %struct.TYPE_38__*) #1

declare dso_local %struct.TYPE_41__* @tscGetMeterMetaInfo(%struct.TYPE_40__*, i32) #1

declare dso_local i32* @tsGetSchema(%struct.TYPE_34__*) #1

declare dso_local i64 @validateArithmeticSQLExpr(%struct.TYPE_33__*, i32*, i32, %struct.TYPE_43__*) #1

declare dso_local i32 @setErrMsg(%struct.TYPE_40__*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @buildArithmeticExprString(%struct.TYPE_33__*, i8**) #1

declare dso_local %struct.TYPE_39__* @tscSqlExprInsert(%struct.TYPE_40__*, i64, i32, %struct.TYPE_42__*, i32, i32, i32) #1

declare dso_local i32 @addExprParams(%struct.TYPE_39__*, i8*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @insertResultField(%struct.TYPE_40__*, i64, i32*, i32, i32, i32) #1

declare dso_local i32 @functionCompatibleCheck(%struct.TYPE_40__*) #1

declare dso_local i64 @tscQueryMetricTags(%struct.TYPE_40__*) #1

declare dso_local i32 @tscTansformSQLFunctionForMetricQuery(%struct.TYPE_40__*) #1

declare dso_local i64 @hasUnsupportFunctionsForMetricQuery(%struct.TYPE_40__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
