; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_client_executor.c_MultiClientCopyData.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_client_executor.c_MultiClientCopyData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@CLIENT_INVALID_COPY = common dso_local global i32 0, align 4
@INVALID_CONNECTION_ID = common dso_local global i64 0, align 8
@ClientConnectionArray = common dso_local global %struct.TYPE_7__** null, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"could not read data from worker node\00", align 1
@CLIENT_COPY_FAILED = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"could not append to copied file: %m\00", align 1
@CLIENT_COPY_MORE = common dso_local global i32 0, align 4
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@CLIENT_COPY_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MultiClientCopyData(i64 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %18 = load i32, i32* @CLIENT_INVALID_COPY, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @INVALID_CONNECTION_ID, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @Assert(i32 %22)
  %24 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @ClientConnectionArray, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %24, i64 %25
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %8, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = icmp ne %struct.TYPE_7__* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PQconsumeInput(i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %3
  %39 = load i32, i32* @WARNING, align 4
  %40 = call i32 @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 @ereport(i32 %39, i32 %40)
  %42 = load i32, i32* @CLIENT_COPY_FAILED, align 4
  store i32 %42, i32* %4, align 4
  br label %130

43:                                               ; preds = %3
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @PQgetCopyData(i32 %46, i8** %9, i32 1)
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %77, %43
  %49 = load i32, i32* %11, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %84

51:                                               ; preds = %48
  store i32 -1, i32* %14, align 4
  store i64 0, i64* @errno, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %54, %51
  %60 = load i64, i64* %6, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @write(i64 %60, i8* %61, i32 %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %59
  %68 = load i64, i64* @errno, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i64, i64* @ENOSPC, align 8
  store i64 %71, i64* @errno, align 8
  br label %72

72:                                               ; preds = %70, %67
  %73 = load i32, i32* @FATAL, align 4
  %74 = call i32 (...) @errcode_for_file_access()
  %75 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %76 = call i32 @ereport(i32 %73, i32 %75)
  br label %77

77:                                               ; preds = %72, %59
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @PQfreemem(i8* %78)
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @PQgetCopyData(i32 %82, i8** %9, i32 1)
  store i32 %83, i32* %11, align 4
  br label %48

84:                                               ; preds = %48
  %85 = load i32, i32* %11, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* @CLIENT_COPY_MORE, align 4
  store i32 %88, i32* %13, align 4
  br label %122

89:                                               ; preds = %84
  %90 = load i32, i32* %11, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %112

92:                                               ; preds = %89
  store i32 1, i32* %15, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %94 = load i32, i32* %15, align 4
  %95 = call i32* @GetRemoteCommandResult(%struct.TYPE_7__* %93, i32 %94)
  store i32* %95, i32** %16, align 8
  %96 = load i32*, i32** %16, align 8
  %97 = call i64 @PQresultStatus(i32* %96)
  store i64 %97, i64* %17, align 8
  %98 = load i64, i64* %17, align 8
  %99 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = load i32, i32* @CLIENT_COPY_DONE, align 4
  store i32 %102, i32* %13, align 4
  br label %109

103:                                              ; preds = %92
  %104 = load i32, i32* @CLIENT_COPY_FAILED, align 4
  store i32 %104, i32* %13, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %106 = load i32*, i32** %16, align 8
  %107 = load i32, i32* @WARNING, align 4
  %108 = call i32 @ReportResultError(%struct.TYPE_7__* %105, i32* %106, i32 %107)
  br label %109

109:                                              ; preds = %103, %101
  %110 = load i32*, i32** %16, align 8
  %111 = call i32 @PQclear(i32* %110)
  br label %121

112:                                              ; preds = %89
  %113 = load i32, i32* %11, align 4
  %114 = icmp eq i32 %113, -2
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i32, i32* @CLIENT_COPY_FAILED, align 4
  store i32 %116, i32* %13, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %118 = load i32, i32* @WARNING, align 4
  %119 = call i32 @ReportConnectionError(%struct.TYPE_7__* %117, i32 %118)
  br label %120

120:                                              ; preds = %115, %112
  br label %121

121:                                              ; preds = %120, %109
  br label %122

122:                                              ; preds = %121, %87
  %123 = load i32, i32* %11, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %127 = call i32 @ForgetResults(%struct.TYPE_7__* %126)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i32, i32* %13, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %128, %38
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PQconsumeInput(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @PQgetCopyData(i32, i8**, i32) #1

declare dso_local i32 @write(i64, i8*, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @PQfreemem(i8*) #1

declare dso_local i32* @GetRemoteCommandResult(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @ReportResultError(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @ReportConnectionError(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ForgetResults(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
