; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_doAddGroupbyColumnsOnDemand.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_doAddGroupbyColumnsOnDemand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i64, %struct.TYPE_28__, %struct.TYPE_27__ }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_27__ = type { i64, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, i64, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_32__ = type { i64, i64, i8* }
%struct.TYPE_35__ = type { i64, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i64, i32 }
%struct.TYPE_34__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"interval not allowed in group by normal column\00", align 1
@TSDB_TBNAME_COLUMN_INDEX = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_BINARY = common dso_local global i64 0, align 8
@TSDB_METER_NAME_LEN = common dso_local global i64 0, align 8
@TSQL_TBNAME_L = common dso_local global i8* null, align 8
@TSDB_FUNC_TAG = common dso_local global i32 0, align 4
@TSDB_COL_TAG = common dso_local global i32 0, align 4
@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_31__*)* @doAddGroupbyColumnsOnDemand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @doAddGroupbyColumnsOnDemand(%struct.TYPE_31__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_31__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_35__, align 8
  %14 = alloca %struct.TYPE_30__*, align 8
  %15 = alloca %struct.TYPE_34__, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %3, align 8
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %19 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %20 = call %struct.TYPE_33__* @tscGetMeterMetaInfo(%struct.TYPE_31__* %19, i32 0)
  store %struct.TYPE_33__* %20, %struct.TYPE_33__** %5, align 8
  %21 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %24 = call %struct.TYPE_32__* @tsGetSchema(%struct.TYPE_26__* %23)
  store %struct.TYPE_32__* %24, %struct.TYPE_32__** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i8* null, i8** %9, align 8
  store i64 0, i64* %10, align 8
  br label %25

25:                                               ; preds = %170, %1
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %26, %30
  br i1 %31, label %32, label %173

32:                                               ; preds = %25
  %33 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i64 %37
  store %struct.TYPE_25__* %38, %struct.TYPE_25__** %11, align 8
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %12, align 8
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TSDB_TBNAME_COLUMN_INDEX, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %32
  %48 = load i64, i64* @TSDB_DATA_TYPE_BINARY, align 8
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* @TSDB_METER_NAME_LEN, align 8
  store i64 %49, i64* %7, align 8
  %50 = load i8*, i8** @TSQL_TBNAME_L, align 8
  store i8* %50, i8** %9, align 8
  br label %88

51:                                               ; preds = %32
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @TSDB_COL_IS_TAG(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %62, %65
  br label %71

67:                                               ; preds = %51
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  br label %71

71:                                               ; preds = %67, %57
  %72 = phi i64 [ %66, %57 ], [ %70, %67 ]
  store i64 %72, i64* %12, align 8
  %73 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %74 = load i64, i64* %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %8, align 8
  %78 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %79 = load i64, i64* %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %7, align 8
  %83 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %9, align 8
  br label %88

88:                                               ; preds = %71, %47
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @TSDB_COL_IS_TAG(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %126

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %13, i32 0, i32 0
  %96 = load i64, i64* %12, align 8
  store i64 %96, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %13, i32 0, i32 1
  %98 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %97, align 8
  %102 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %103 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @TSDB_FUNC_TAG, align 4
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* %7, align 8
  %111 = call %struct.TYPE_30__* @tscSqlExprInsert(%struct.TYPE_31__* %102, i64 %106, i32 %107, %struct.TYPE_35__* %13, i64 %108, i64 %109, i64 %110)
  store %struct.TYPE_30__* %111, %struct.TYPE_30__** %14, align 8
  %112 = load i32, i32* @TSDB_COL_TAG, align 4
  %113 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 8
  %116 = bitcast %struct.TYPE_34__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %116, i8 0, i64 4, i1 false)
  %117 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %118 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %7, align 8
  %123 = load i64, i64* %8, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = call i32 @insertResultField(%struct.TYPE_31__* %117, i64 %121, %struct.TYPE_34__* %15, i64 %122, i64 %123, i8* %124)
  br label %169

126:                                              ; preds = %88
  %127 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp sgt i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %133 = load i8*, i8** %4, align 8
  %134 = call i32 @setErrMsg(%struct.TYPE_31__* %132, i8* %133)
  %135 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %135, i64* %2, align 8
  br label %175

136:                                              ; preds = %126
  store i32 0, i32* %16, align 4
  store i64 0, i64* %17, align 8
  br label %137

137:                                              ; preds = %158, %136
  %138 = load i64, i64* %17, align 8
  %139 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ult i64 %138, %142
  br i1 %143, label %144, label %161

144:                                              ; preds = %137
  %145 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %146 = load i64, i64* %17, align 8
  %147 = call %struct.TYPE_30__* @tscSqlExprGet(%struct.TYPE_31__* %145, i64 %146)
  store %struct.TYPE_30__* %147, %struct.TYPE_30__** %18, align 8
  %148 = load %struct.TYPE_30__*, %struct.TYPE_30__** %18, align 8
  %149 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %151, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %144
  br label %161

157:                                              ; preds = %144
  br label %158

158:                                              ; preds = %157
  %159 = load i64, i64* %17, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %17, align 8
  br label %137

161:                                              ; preds = %156, %137
  %162 = load i32, i32* %16, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %161
  %165 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %166 = load i64, i64* %10, align 8
  %167 = call i32 @doAddGroupColumnForSubquery(%struct.TYPE_31__* %165, i64 %166)
  br label %168

168:                                              ; preds = %164, %161
  br label %169

169:                                              ; preds = %168, %94
  br label %170

170:                                              ; preds = %169
  %171 = load i64, i64* %10, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %10, align 8
  br label %25

173:                                              ; preds = %25
  %174 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %174, i64* %2, align 8
  br label %175

175:                                              ; preds = %173, %131
  %176 = load i64, i64* %2, align 8
  ret i64 %176
}

declare dso_local %struct.TYPE_33__* @tscGetMeterMetaInfo(%struct.TYPE_31__*, i32) #1

declare dso_local %struct.TYPE_32__* @tsGetSchema(%struct.TYPE_26__*) #1

declare dso_local i64 @TSDB_COL_IS_TAG(i32) #1

declare dso_local %struct.TYPE_30__* @tscSqlExprInsert(%struct.TYPE_31__*, i64, i32, %struct.TYPE_35__*, i64, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @insertResultField(%struct.TYPE_31__*, i64, %struct.TYPE_34__*, i64, i64, i8*) #1

declare dso_local i32 @setErrMsg(%struct.TYPE_31__*, i8*) #1

declare dso_local %struct.TYPE_30__* @tscSqlExprGet(%struct.TYPE_31__*, i64) #1

declare dso_local i32 @doAddGroupColumnForSubquery(%struct.TYPE_31__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
