; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpSql.c_httpProcessSingleSqlCallBack.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpSql.c_httpProcessSingleSqlCallBack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i32, %struct.TYPE_18__*, %struct.TYPE_20__*, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_21__*, i32*, i32*)*, i32 (%struct.TYPE_21__*, i32*)*, i32 (%struct.TYPE_21__*, i32*, i32)* }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@TSDB_CODE_ACTION_IN_PROGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"context:%p, fd:%d, ip:%s, user:%s, query error, taos:%p, code:%d:inprogress, sqlObj:%p\00", align 1
@TSDB_CODE_INVALID_SQL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [97 x i8] c"context:%p, fd:%d, ip:%s, user:%s, query error, taos:%p, code:%d:invalidsql, sqlObj:%p, error:%s\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"context:%p, fd:%d, ip:%s, user:%s, query error, taos:%p, code:%d, sqlObj:%p\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"context:%p, fd:%d, ip:%s, user:%s, affect rows:%d, stop query, sqlObj:%p\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"context:%p, fd:%d, ip:%s, user:%s, start retrieve\00", align 1
@httpProcessSingleSqlRetrieveCallBack = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @httpProcessSingleSqlCallBack(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %7, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %14 = icmp eq %struct.TYPE_21__* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 6
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %20 = icmp ne %struct.TYPE_21__* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %3
  br label %207

22:                                               ; preds = %15
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 5
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  store %struct.TYPE_20__* %25, %struct.TYPE_20__** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 0, %26
  %28 = load i32, i32* @TSDB_CODE_ACTION_IN_PROGRESS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %22
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 0, %46
  %48 = load i32*, i32** %5, align 8
  %49 = bitcast i32* %48 to %struct.TYPE_19__*
  %50 = call i32 (i8*, %struct.TYPE_21__*, i32, i32, i32, i32, i32, %struct.TYPE_19__*, ...) @httpError(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), %struct.TYPE_21__* %31, i32 %34, i32 %37, i32 %40, i32 %45, i32 %47, %struct.TYPE_19__* %49)
  br label %207

51:                                               ; preds = %22
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %116

54:                                               ; preds = %51
  %55 = load i32*, i32** %5, align 8
  %56 = bitcast i32* %55 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %56, %struct.TYPE_19__** %9, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 0, %57
  %59 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %91

61:                                               ; preds = %54
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = sub nsw i32 0, %77
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, %struct.TYPE_21__*, i32, i32, i32, i32, i32, %struct.TYPE_19__*, ...) @httpError(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_21__* %62, i32 %65, i32 %68, i32 %71, i32 %76, i32 %78, %struct.TYPE_19__* %79, i32 %83)
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @httpSendTaosdInvalidSqlErrorResp(%struct.TYPE_21__* %85, i32 %89)
  br label %115

91:                                               ; preds = %54
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %6, align 4
  %108 = sub nsw i32 0, %107
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %110 = call i32 (i8*, %struct.TYPE_21__*, i32, i32, i32, i32, i32, %struct.TYPE_19__*, ...) @httpError(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_21__* %92, i32 %95, i32 %98, i32 %101, i32 %106, i32 %108, %struct.TYPE_19__* %109)
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sub nsw i32 0, %112
  %114 = call i32 @httpSendTaosdErrorResp(%struct.TYPE_21__* %111, i32 %113)
  br label %115

115:                                              ; preds = %91, %61
  br label %207

116:                                              ; preds = %51
  %117 = load i32*, i32** %5, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %177

119:                                              ; preds = %116
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %10, align 4
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load i32*, i32** %5, align 8
  %133 = call i32 (i8*, %struct.TYPE_21__*, i32, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_21__* %121, i32 %124, i32 %127, i32 %130, i32 %131, i32* %132)
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = load i32 (%struct.TYPE_21__*, i32*, i32*)*, i32 (%struct.TYPE_21__*, i32*, i32*)** %135, align 8
  %137 = icmp ne i32 (%struct.TYPE_21__*, i32*, i32*)* %136, null
  br i1 %137, label %138, label %147

138:                                              ; preds = %119
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  %141 = load i32 (%struct.TYPE_21__*, i32*, i32*)*, i32 (%struct.TYPE_21__*, i32*, i32*)** %140, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  %145 = load i32*, i32** %5, align 8
  %146 = call i32 %141(%struct.TYPE_21__* %142, i32* %144, i32* %145)
  br label %147

147:                                              ; preds = %138, %119
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 2
  %150 = load i32 (%struct.TYPE_21__*, i32*, i32)*, i32 (%struct.TYPE_21__*, i32*, i32)** %149, align 8
  %151 = icmp ne i32 (%struct.TYPE_21__*, i32*, i32)* %150, null
  br i1 %151, label %152, label %161

152:                                              ; preds = %147
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 2
  %155 = load i32 (%struct.TYPE_21__*, i32*, i32)*, i32 (%struct.TYPE_21__*, i32*, i32)** %154, align 8
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  %159 = load i32, i32* %10, align 4
  %160 = call i32 %155(%struct.TYPE_21__* %156, i32* %158, i32 %159)
  br label %161

161:                                              ; preds = %152, %147
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 1
  %164 = load i32 (%struct.TYPE_21__*, i32*)*, i32 (%struct.TYPE_21__*, i32*)** %163, align 8
  %165 = icmp ne i32 (%struct.TYPE_21__*, i32*)* %164, null
  br i1 %165, label %166, label %174

166:                                              ; preds = %161
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 1
  %169 = load i32 (%struct.TYPE_21__*, i32*)*, i32 (%struct.TYPE_21__*, i32*)** %168, align 8
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 0
  %173 = call i32 %169(%struct.TYPE_21__* %170, i32* %172)
  br label %174

174:                                              ; preds = %166, %161
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %176 = call i32 @httpCloseContextByApp(%struct.TYPE_21__* %175)
  br label %207

177:                                              ; preds = %116
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (i8*, %struct.TYPE_21__*, i32, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_21__* %178, i32 %181, i32 %184, i32 %187)
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 0
  %191 = load i32 (%struct.TYPE_21__*, i32*, i32*)*, i32 (%struct.TYPE_21__*, i32*, i32*)** %190, align 8
  %192 = icmp ne i32 (%struct.TYPE_21__*, i32*, i32*)* %191, null
  br i1 %192, label %193, label %202

193:                                              ; preds = %177
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 0
  %196 = load i32 (%struct.TYPE_21__*, i32*, i32*)*, i32 (%struct.TYPE_21__*, i32*, i32*)** %195, align 8
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 0
  %200 = load i32*, i32** %5, align 8
  %201 = call i32 %196(%struct.TYPE_21__* %197, i32* %199, i32* %200)
  br label %202

202:                                              ; preds = %193, %177
  %203 = load i32*, i32** %5, align 8
  %204 = load i32, i32* @httpProcessSingleSqlRetrieveCallBack, align 4
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %206 = call i32 @taos_fetch_rows_a(i32* %203, i32 %204, %struct.TYPE_21__* %205)
  br label %207

207:                                              ; preds = %21, %30, %115, %202, %174
  ret void
}

declare dso_local i32 @httpError(i8*, %struct.TYPE_21__*, i32, i32, i32, i32, i32, %struct.TYPE_19__*, ...) #1

declare dso_local i32 @httpSendTaosdInvalidSqlErrorResp(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @httpSendTaosdErrorResp(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @httpTrace(i8*, %struct.TYPE_21__*, i32, i32, i32, ...) #1

declare dso_local i32 @httpCloseContextByApp(%struct.TYPE_21__*) #1

declare dso_local i32 @taos_fetch_rows_a(i32*, i32, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
