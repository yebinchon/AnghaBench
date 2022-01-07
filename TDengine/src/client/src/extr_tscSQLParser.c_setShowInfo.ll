; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_setShowInfo.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_setShowInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32, i32, i32 }
%struct.SSqlInfo = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_17__ = type { i32 }

@TSDB_SQL_SHOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"database name too long\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid database name\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"pattern filter string too long\00", align 1
@TSDB_MGMT_TABLE_VGROUP = common dso_local global i32 0, align 4
@TSDB_MGMT_TABLE_TABLE = common dso_local global i32 0, align 4
@TSDB_MGMT_TABLE_METRIC = common dso_local global i32 0, align 4
@TSDB_MGMT_TABLE_DB = common dso_local global i32 0, align 4
@TSDB_MGMT_TABLE_MNODE = common dso_local global i32 0, align 4
@TSDB_MGMT_TABLE_PNODE = common dso_local global i32 0, align 4
@TSDB_MGMT_TABLE_ACCT = common dso_local global i32 0, align 4
@TSDB_MGMT_TABLE_USER = common dso_local global i32 0, align 4
@TSDB_MGMT_TABLE_MODULE = common dso_local global i32 0, align 4
@TSDB_MGMT_TABLE_CONNS = common dso_local global i32 0, align 4
@TSDB_MGMT_TABLE_QUERIES = common dso_local global i32 0, align 4
@TSDB_MGMT_TABLE_SCORES = common dso_local global i32 0, align 4
@TSDB_MGMT_TABLE_GRANTS = common dso_local global i32 0, align 4
@TSDB_MGMT_TABLE_STREAMS = common dso_local global i32 0, align 4
@TSDB_MGMT_TABLE_CONFIGS = common dso_local global i32 0, align 4
@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8
@TSDB_DB_NAME_LEN = common dso_local global i64 0, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@TSDB_METER_NAME_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @setShowInfo(%struct.TYPE_14__* %0, %struct.SSqlInfo* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.SSqlInfo*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.SSqlInfo* %1, %struct.SSqlInfo** %5, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %6, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %18 = call %struct.TYPE_17__* @tscGetMeterMetaInfo(%struct.TYPE_15__* %17, i32 0)
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %7, align 8
  %19 = load i32, i32* @TSDB_SQL_SHOW, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.SSqlInfo*, %struct.SSqlInfo** %5, align 8
  %23 = getelementptr inbounds %struct.SSqlInfo, %struct.SSqlInfo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %86 [
    i32 128, label %26
    i32 130, label %30
    i32 132, label %34
    i32 139, label %38
    i32 136, label %42
    i32 138, label %46
    i32 142, label %50
    i32 129, label %54
    i32 135, label %58
    i32 140, label %62
    i32 134, label %66
    i32 133, label %70
    i32 137, label %74
    i32 131, label %78
    i32 141, label %82
  ]

26:                                               ; preds = %2
  %27 = load i32, i32* @TSDB_MGMT_TABLE_VGROUP, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  br label %88

30:                                               ; preds = %2
  %31 = load i32, i32* @TSDB_MGMT_TABLE_TABLE, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  br label %88

34:                                               ; preds = %2
  %35 = load i32, i32* @TSDB_MGMT_TABLE_METRIC, align 4
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  br label %88

38:                                               ; preds = %2
  %39 = load i32, i32* @TSDB_MGMT_TABLE_DB, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  br label %88

42:                                               ; preds = %2
  %43 = load i32, i32* @TSDB_MGMT_TABLE_MNODE, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  br label %88

46:                                               ; preds = %2
  %47 = load i32, i32* @TSDB_MGMT_TABLE_PNODE, align 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  br label %88

50:                                               ; preds = %2
  %51 = load i32, i32* @TSDB_MGMT_TABLE_ACCT, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  br label %88

54:                                               ; preds = %2
  %55 = load i32, i32* @TSDB_MGMT_TABLE_USER, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  br label %88

58:                                               ; preds = %2
  %59 = load i32, i32* @TSDB_MGMT_TABLE_MODULE, align 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  br label %88

62:                                               ; preds = %2
  %63 = load i32, i32* @TSDB_MGMT_TABLE_CONNS, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  br label %88

66:                                               ; preds = %2
  %67 = load i32, i32* @TSDB_MGMT_TABLE_QUERIES, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  br label %88

70:                                               ; preds = %2
  %71 = load i32, i32* @TSDB_MGMT_TABLE_SCORES, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  br label %88

74:                                               ; preds = %2
  %75 = load i32, i32* @TSDB_MGMT_TABLE_GRANTS, align 4
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  br label %88

78:                                               ; preds = %2
  %79 = load i32, i32* @TSDB_MGMT_TABLE_STREAMS, align 4
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  br label %88

82:                                               ; preds = %2
  %83 = load i32, i32* @TSDB_MGMT_TABLE_CONFIGS, align 4
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  br label %88

86:                                               ; preds = %2
  %87 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %87, i64* %3, align 8
  br label %203

88:                                               ; preds = %82, %78, %74, %70, %66, %62, %58, %54, %50, %46, %42, %38, %34, %30, %26
  %89 = load i32, i32* %8, align 4
  %90 = icmp eq i32 %89, 130
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %8, align 4
  %93 = icmp eq i32 %92, 132
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %95, 128
  br i1 %96, label %97, label %201

97:                                               ; preds = %94, %91, %88
  %98 = load %struct.SSqlInfo*, %struct.SSqlInfo** %5, align 8
  %99 = getelementptr inbounds %struct.SSqlInfo, %struct.SSqlInfo* %98, i32 0, i32 1
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %200

104:                                              ; preds = %97
  %105 = load %struct.SSqlInfo*, %struct.SSqlInfo** %5, align 8
  %106 = getelementptr inbounds %struct.SSqlInfo, %struct.SSqlInfo* %105, i32 0, i32 1
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i64 0
  store %struct.TYPE_16__* %110, %struct.TYPE_16__** %12, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @TSDB_DB_NAME_LEN, align 8
  %115 = icmp sgt i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %104
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 @setErrMsg(%struct.TYPE_15__* %117, i8* %118)
  %120 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %120, i64* %3, align 8
  br label %203

121:                                              ; preds = %104
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %121
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %128 = call i64 @tscValidateName(%struct.TYPE_16__* %127)
  %129 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = call i32 @setErrMsg(%struct.TYPE_15__* %132, i8* %133)
  %135 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %135, i64* %3, align 8
  br label %203

136:                                              ; preds = %126, %121
  store i64 0, i64* %13, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %136
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %146 = call i32 @getAccountId(%struct.TYPE_14__* %145)
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %148 = call i64 @setObjFullName(i32 %144, i32 %146, %struct.TYPE_16__* %147, i32* null, i32* null)
  store i64 %148, i64* %13, align 8
  br label %149

149:                                              ; preds = %141, %136
  %150 = load i64, i64* %13, align 8
  %151 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  %154 = load i64, i64* %13, align 8
  store i64 %154, i64* %3, align 8
  br label %203

155:                                              ; preds = %149
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 128
  br i1 %157, label %158, label %199

158:                                              ; preds = %155
  %159 = load %struct.SSqlInfo*, %struct.SSqlInfo** %5, align 8
  %160 = getelementptr inbounds %struct.SSqlInfo, %struct.SSqlInfo* %159, i32 0, i32 1
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %163, 2
  br i1 %164, label %165, label %199

165:                                              ; preds = %158
  %166 = load %struct.SSqlInfo*, %struct.SSqlInfo** %5, align 8
  %167 = getelementptr inbounds %struct.SSqlInfo, %struct.SSqlInfo* %166, i32 0, i32 1
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i64 1
  store %struct.TYPE_16__* %171, %struct.TYPE_16__** %14, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @strncpy(i32 %174, i32 %177, i64 %180)
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = call i64 @strdequote(i32 %184)
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 0
  store i64 %185, i64* %187, align 8
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @TSDB_METER_NAME_LEN, align 8
  %192 = icmp sgt i64 %190, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %165
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %195 = load i8*, i8** %11, align 8
  %196 = call i32 @setErrMsg(%struct.TYPE_15__* %194, i8* %195)
  %197 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %197, i64* %3, align 8
  br label %203

198:                                              ; preds = %165
  br label %199

199:                                              ; preds = %198, %158, %155
  br label %200

200:                                              ; preds = %199, %97
  br label %201

201:                                              ; preds = %200, %94
  %202 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %202, i64* %3, align 8
  br label %203

203:                                              ; preds = %201, %193, %153, %131, %116, %86
  %204 = load i64, i64* %3, align 8
  ret i64 %204
}

declare dso_local %struct.TYPE_17__* @tscGetMeterMetaInfo(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @setErrMsg(%struct.TYPE_15__*, i8*) #1

declare dso_local i64 @tscValidateName(%struct.TYPE_16__*) #1

declare dso_local i64 @setObjFullName(i32, i32, %struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32 @getAccountId(%struct.TYPE_14__*) #1

declare dso_local i32 @strncpy(i32, i32, i64) #1

declare dso_local i64 @strdequote(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
