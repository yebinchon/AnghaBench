; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_tgJson.c_tgCheckFinished.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_tgJson.c_tgCheckFinished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HttpContext = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [98 x i8] c"context:%p, fd:%d, ip:%s, check telegraf command, code:%d, state:%d, type:%d, rettype:%d, tags:%d\00", align 1
@HTTP_CMD_TYPE_INSERT = common dso_local global i64 0, align 8
@HTTP_CMD_STATE_NOT_RUN_YET = common dso_local global i64 0, align 8
@TSDB_CODE_DB_NOT_SELECTED = common dso_local global i32 0, align 4
@TSDB_CODE_INVALID_DB = common dso_local global i32 0, align 4
@HTTP_CMD_STATE_RUN_FINISHED = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"context:%p, fd:%d, ip:%s, import failed, try create database\00", align 1
@TSDB_CODE_INVALID_TABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"context:%p, fd:%d, ip:%s, import failed, try create stable\00", align 1
@HTTP_CMD_TYPE_CREATE_DB = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [58 x i8] c"context:%p, fd:%d, ip:%s, code:%d, create database failed\00", align 1
@HTTP_CMD_TYPE_CREATE_STBALE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [56 x i8] c"context:%p, fd:%d, ip:%s, code:%d, create stable failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tgCheckFinished(%struct.HttpContext* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.HttpContext*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  store %struct.HttpContext* %0, %struct.HttpContext** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.HttpContext*, %struct.HttpContext** %5, align 8
  %10 = getelementptr inbounds %struct.HttpContext, %struct.HttpContext* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %8, align 8
  %12 = load %struct.HttpContext*, %struct.HttpContext** %5, align 8
  %13 = load %struct.HttpContext*, %struct.HttpContext** %5, align 8
  %14 = getelementptr inbounds %struct.HttpContext, %struct.HttpContext* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.HttpContext*, %struct.HttpContext** %5, align 8
  %17 = getelementptr inbounds %struct.HttpContext, %struct.HttpContext* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i8*, %struct.HttpContext*, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), %struct.HttpContext* %12, i32 %15, i32 %18, i32 %19, i64 %22, i64 %25, i32 %28, i32 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @HTTP_CMD_TYPE_INSERT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %123

38:                                               ; preds = %3
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @HTTP_CMD_STATE_NOT_RUN_YET, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %121

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @TSDB_CODE_DB_NOT_SELECTED, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @TSDB_CODE_INVALID_DB, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %48, %44
  %53 = load i8*, i8** @HTTP_CMD_STATE_RUN_FINISHED, align 8
  %54 = ptrtoint i8* %53 to i64
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @HTTP_CMD_STATE_NOT_RUN_YET, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %52
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i32 ptrtoint (i8* inttoptr (i64 -1 to i8*) to i32), i32* %67, align 8
  %68 = load %struct.HttpContext*, %struct.HttpContext** %5, align 8
  %69 = load %struct.HttpContext*, %struct.HttpContext** %5, align 8
  %70 = getelementptr inbounds %struct.HttpContext, %struct.HttpContext* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.HttpContext*, %struct.HttpContext** %5, align 8
  %73 = getelementptr inbounds %struct.HttpContext, %struct.HttpContext* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i8*, %struct.HttpContext*, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), %struct.HttpContext* %68, i32 %71, i32 %74)
  store i32 0, i32* %4, align 4
  br label %167

76:                                               ; preds = %52
  br label %120

77:                                               ; preds = %48
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @TSDB_CODE_INVALID_TABLE, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %118

81:                                               ; preds = %77
  %82 = load i8*, i8** @HTTP_CMD_STATE_RUN_FINISHED, align 8
  %83 = ptrtoint i8* %82 to i64
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @HTTP_CMD_STATE_NOT_RUN_YET, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %81
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, 2
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  %106 = ptrtoint i8* %105 to i32
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.HttpContext*, %struct.HttpContext** %5, align 8
  %110 = load %struct.HttpContext*, %struct.HttpContext** %5, align 8
  %111 = getelementptr inbounds %struct.HttpContext, %struct.HttpContext* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.HttpContext*, %struct.HttpContext** %5, align 8
  %114 = getelementptr inbounds %struct.HttpContext, %struct.HttpContext* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (i8*, %struct.HttpContext*, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), %struct.HttpContext* %109, i32 %112, i32 %115)
  store i32 0, i32* %4, align 4
  br label %167

117:                                              ; preds = %81
  br label %119

118:                                              ; preds = %77
  br label %119

119:                                              ; preds = %118, %117
  br label %120

120:                                              ; preds = %119, %76
  br label %122

121:                                              ; preds = %38
  br label %122

122:                                              ; preds = %121, %120
  br label %166

123:                                              ; preds = %3
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @HTTP_CMD_TYPE_CREATE_DB, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %143

129:                                              ; preds = %123
  %130 = load i8*, i8** @HTTP_CMD_STATE_RUN_FINISHED, align 8
  %131 = ptrtoint i8* %130 to i64
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  %134 = load %struct.HttpContext*, %struct.HttpContext** %5, align 8
  %135 = load %struct.HttpContext*, %struct.HttpContext** %5, align 8
  %136 = getelementptr inbounds %struct.HttpContext, %struct.HttpContext* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.HttpContext*, %struct.HttpContext** %5, align 8
  %139 = getelementptr inbounds %struct.HttpContext, %struct.HttpContext* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = call i32 (i8*, %struct.HttpContext*, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), %struct.HttpContext* %134, i32 %137, i32 %140, i32 %141)
  br label %165

143:                                              ; preds = %123
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @HTTP_CMD_TYPE_CREATE_STBALE, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %163

149:                                              ; preds = %143
  %150 = load i8*, i8** @HTTP_CMD_STATE_RUN_FINISHED, align 8
  %151 = ptrtoint i8* %150 to i64
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  %154 = load %struct.HttpContext*, %struct.HttpContext** %5, align 8
  %155 = load %struct.HttpContext*, %struct.HttpContext** %5, align 8
  %156 = getelementptr inbounds %struct.HttpContext, %struct.HttpContext* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.HttpContext*, %struct.HttpContext** %5, align 8
  %159 = getelementptr inbounds %struct.HttpContext, %struct.HttpContext* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = call i32 (i8*, %struct.HttpContext*, i32, i32, ...) @httpTrace(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), %struct.HttpContext* %154, i32 %157, i32 %160, i32 %161)
  br label %164

163:                                              ; preds = %143
  br label %164

164:                                              ; preds = %163, %149
  br label %165

165:                                              ; preds = %164, %129
  br label %166

166:                                              ; preds = %165, %122
  store i32 1, i32* %4, align 4
  br label %167

167:                                              ; preds = %166, %99, %65
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i32 @httpTrace(i8*, %struct.HttpContext*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
