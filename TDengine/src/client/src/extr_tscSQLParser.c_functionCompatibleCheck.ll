; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_functionCompatibleCheck.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_functionCompatibleCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_17__, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_18__*, %struct.TYPE_15__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"column on select clause not allowed\00", align 1
@TSDB_FUNC_TS = common dso_local global i64 0, align 8
@TSDB_FUNC_TS_DUMMY = common dso_local global i64 0, align 8
@funcCompatDefList = common dso_local global i64* null, align 8
@TSDB_FUNC_TAGPRJ = common dso_local global i64 0, align 8
@TSDB_FUNC_TAG = common dso_local global i64 0, align 8
@TSDB_FUNC_PRJ = common dso_local global i64 0, align 8
@PRIMARYKEY_TIMESTAMP_COL_INDEX = common dso_local global i64 0, align 8
@TSDB_QUERY_TYPE_PROJECTION_QUERY = common dso_local global i32 0, align 4
@TSDB_FUNC_ARITHM = common dso_local global i64 0, align 8
@aAggs = common dso_local global %struct.TYPE_13__* null, align 8
@TSDB_FUNCSTATE_SELECTIVITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @functionCompatibleCheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @functionCompatibleCheck(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i64 0, i64* %5, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call %struct.TYPE_19__* @tscSqlExprGet(%struct.TYPE_20__* %19, i64 %20)
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @TSDB_FUNC_TS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %1
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @TSDB_FUNC_TS_DUMMY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %1
  %32 = load i64, i64* %5, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %5, align 8
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i64*, i64** @funcCompatDefList, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call %struct.TYPE_19__* @tscSqlExprGet(%struct.TYPE_20__* %36, i64 %37)
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i64, i64* %35, i64 %40
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %5, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %8, align 8
  br label %45

45:                                               ; preds = %92, %34
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %46, %50
  br i1 %51, label %52, label %95

52:                                               ; preds = %45
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call %struct.TYPE_19__* @tscSqlExprGet(%struct.TYPE_20__* %53, i64 %54)
  store %struct.TYPE_19__* %55, %struct.TYPE_19__** %9, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @TSDB_FUNC_TAGPRJ, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %52
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* @TSDB_FUNC_TAG, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* @TSDB_FUNC_TS, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %62, %52
  br label %92

71:                                               ; preds = %66
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* @TSDB_FUNC_PRJ, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @PRIMARYKEY_TIMESTAMP_COL_INDEX, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %92

83:                                               ; preds = %75, %71
  %84 = load i64*, i64** @funcCompatDefList, align 8
  %85 = load i64, i64* %10, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %7, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  store i32 0, i32* %2, align 4
  br label %231

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91, %82, %70
  %93 = load i64, i64* %8, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %8, align 8
  br label %45

95:                                               ; preds = %45
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @TSDB_QUERY_TYPE_PROJECTION_QUERY, align 4
  %100 = and i32 %98, %99
  %101 = load i32, i32* @TSDB_QUERY_TYPE_PROJECTION_QUERY, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %230

103:                                              ; preds = %95
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  br label %104

104:                                              ; preds = %144, %103
  %105 = load i64, i64* %12, align 8
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp slt i64 %105, %109
  br i1 %110, label %111, label %147

111:                                              ; preds = %104
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %113 = load i64, i64* %12, align 8
  %114 = call %struct.TYPE_19__* @tscSqlExprGet(%struct.TYPE_20__* %112, i64 %113)
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %13, align 8
  %117 = load i64, i64* %13, align 8
  %118 = load i64, i64* @TSDB_FUNC_PRJ, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %132, label %120

120:                                              ; preds = %111
  %121 = load i64, i64* %13, align 8
  %122 = load i64, i64* @TSDB_FUNC_TAGPRJ, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %132, label %124

124:                                              ; preds = %120
  %125 = load i64, i64* %13, align 8
  %126 = load i64, i64* @TSDB_FUNC_TS, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = load i64, i64* %13, align 8
  %130 = load i64, i64* @TSDB_FUNC_ARITHM, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128, %124, %120, %111
  br label %144

133:                                              ; preds = %128
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** @aAggs, align 8
  %135 = load i64, i64* %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @TSDB_FUNCSTATE_SELECTIVITY, align 4
  %140 = and i32 %138, %139
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  store i32 1, i32* %11, align 4
  br label %147

143:                                              ; preds = %133
  br label %144

144:                                              ; preds = %143, %132
  %145 = load i64, i64* %12, align 8
  %146 = add nsw i64 %145, 1
  store i64 %146, i64* %12, align 8
  br label %104

147:                                              ; preds = %142, %104
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %229

150:                                              ; preds = %147
  %151 = load i32, i32* @TSDB_QUERY_TYPE_PROJECTION_QUERY, align 4
  %152 = xor i32 %151, -1
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = and i32 %155, %152
  store i32 %156, i32* %154, align 8
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %150
  store i32 0, i32* %2, align 4
  br label %231

163:                                              ; preds = %150
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %164

164:                                              ; preds = %225, %163
  %165 = load i64, i64* %15, align 8
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp slt i64 %165, %169
  br i1 %170, label %171, label %228

171:                                              ; preds = %164
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %173 = load i64, i64* %15, align 8
  %174 = call %struct.TYPE_19__* @tscSqlExprGet(%struct.TYPE_20__* %172, i64 %173)
  store %struct.TYPE_19__* %174, %struct.TYPE_19__** %16, align 8
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @TSDB_FUNC_PRJ, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %224

180:                                              ; preds = %171
  %181 = load i64, i64* %14, align 8
  %182 = add nsw i64 %181, 1
  store i64 %182, i64* %14, align 8
  store i32 0, i32* %17, align 4
  store i64 0, i64* %18, align 8
  br label %183

183:                                              ; preds = %213, %180
  %184 = load i64, i64* %18, align 8
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp slt i64 %184, %188
  br i1 %189, label %190, label %216

190:                                              ; preds = %183
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %197, align 8
  %199 = load i64, i64* %18, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp eq i64 %194, %202
  br i1 %203, label %204, label %212

204:                                              ; preds = %190
  store i32 1, i32* %17, align 4
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i64 0
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  store i32 1, i32* %209, align 4
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 1
  store i32 1, i32* %211, align 8
  br label %216

212:                                              ; preds = %190
  br label %213

213:                                              ; preds = %212
  %214 = load i64, i64* %18, align 8
  %215 = add nsw i64 %214, 1
  store i64 %215, i64* %18, align 8
  br label %183

216:                                              ; preds = %204, %183
  %217 = load i32, i32* %17, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %216
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %221 = load i8*, i8** %4, align 8
  %222 = call i32 @setErrMsg(%struct.TYPE_20__* %220, i8* %221)
  store i32 0, i32* %2, align 4
  br label %231

223:                                              ; preds = %216
  br label %224

224:                                              ; preds = %223, %171
  br label %225

225:                                              ; preds = %224
  %226 = load i64, i64* %15, align 8
  %227 = add nsw i64 %226, 1
  store i64 %227, i64* %15, align 8
  br label %164

228:                                              ; preds = %164
  br label %229

229:                                              ; preds = %228, %147
  br label %230

230:                                              ; preds = %229, %95
  store i32 1, i32* %2, align 4
  br label %231

231:                                              ; preds = %230, %219, %162, %90
  %232 = load i32, i32* %2, align 4
  ret i32 %232
}

declare dso_local %struct.TYPE_19__* @tscSqlExprGet(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @setErrMsg(%struct.TYPE_20__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
