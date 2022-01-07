; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpSql.c_httpProcessMultiSqlRetrieveCallBack.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpSql.c_httpProcessMultiSqlRetrieveCallBack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_15__*, %struct.TYPE_13__*, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_16__*, %struct.TYPE_14__*, i32*, i32)*, i32 (%struct.TYPE_16__*, %struct.TYPE_14__*)* }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }

@HTTP_CMD_RETURN_TYPE_WITH_RETURN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [91 x i8] c"context:%p, fd:%d, ip:%s, user:%s, process pos:%d, continue retrieve, numOfRows:%d, sql:%s\00", align 1
@.str.1 = private unnamed_addr constant [87 x i8] c"context:%p, fd:%d, ip:%s, user:%s, process pos:%d, stop retrieve, numOfRows:%d, sql:%s\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"context:%p, fd:%d, ip:%s, user:%s, process pos:%d, retrieve failed code:%d, sql:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @httpProcessMultiSqlRetrieveCallBack(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %7, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %16 = icmp eq %struct.TYPE_16__* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %22 = icmp ne %struct.TYPE_16__* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %3
  br label %155

24:                                               ; preds = %17
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %8, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %9, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i64 %37
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %10, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @httpGetCmdsString(%struct.TYPE_16__* %39, i32 %42)
  store i8* %43, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %24
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @HTTP_CMD_RETURN_TYPE_WITH_RETURN, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_16__*, %struct.TYPE_14__*, i32*, i32)*, i32 (%struct.TYPE_16__*, %struct.TYPE_14__*, i32*, i32)** %54, align 8
  %56 = icmp ne i32 (%struct.TYPE_16__*, %struct.TYPE_14__*, i32*, i32)* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_16__*, %struct.TYPE_14__*, i32*, i32)*, i32 (%struct.TYPE_16__*, %struct.TYPE_14__*, i32*, i32)** %59, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 %60(%struct.TYPE_16__* %61, %struct.TYPE_14__* %62, i32* %63, i32 %64)
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %57, %52, %46
  br label %67

67:                                               ; preds = %66, %24
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %67
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 @httpTrace(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %71, i32 %74, i32 %77, i32 %80, i32 %83, i32 %84, i8* %85)
  %87 = load i32*, i32** %5, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @taos_fetch_rows_a(i32* %87, void (i8*, i32*, i32)* @httpProcessMultiSqlRetrieveCallBack, i8* %88)
  br label %155

90:                                               ; preds = %67
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load i8*, i8** %11, align 8
  %106 = call i32 @httpTrace(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_16__* %91, i32 %94, i32 %97, i32 %100, i32 %103, i32 %104, i8* %105)
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %127

109:                                              ; preds = %90
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sub nsw i32 0, %123
  %125 = load i8*, i8** %11, align 8
  %126 = call i32 @httpError(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_16__* %110, i32 %113, i32 %116, i32 %119, i32 %122, i32 %124, i8* %125)
  br label %130

127:                                              ; preds = %90
  %128 = load i32*, i32** %5, align 8
  %129 = call i32 @taos_free_result(i32* %128)
  br label %130

130:                                              ; preds = %127, %109
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @HTTP_CMD_RETURN_TYPE_WITH_RETURN, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %148

136:                                              ; preds = %130
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 1
  %139 = load i32 (%struct.TYPE_16__*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_16__*, %struct.TYPE_14__*)** %138, align 8
  %140 = icmp ne i32 (%struct.TYPE_16__*, %struct.TYPE_14__*)* %139, null
  br i1 %140, label %141, label %148

141:                                              ; preds = %136
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = load i32 (%struct.TYPE_16__*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_16__*, %struct.TYPE_14__*)** %143, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %147 = call i32 %144(%struct.TYPE_16__* %145, %struct.TYPE_14__* %146)
  br label %148

148:                                              ; preds = %141, %136, %130
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %154 = call i32 @httpProcessMultiSql(%struct.TYPE_16__* %153)
  br label %155

155:                                              ; preds = %23, %148, %70
  ret void
}

declare dso_local i8* @httpGetCmdsString(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @httpTrace(i8*, %struct.TYPE_16__*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @taos_fetch_rows_a(i32*, void (i8*, i32*, i32)*, i8*) #1

declare dso_local i32 @httpError(i8*, %struct.TYPE_16__*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @taos_free_result(i32*) #1

declare dso_local i32 @httpProcessMultiSql(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
