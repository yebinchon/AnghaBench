; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_parseCreateDBOptions.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_parseCreateDBOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [26 x i8] c"invalid number of options\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid time precision\00", align 1
@tsRpcHeadSize = common dso_local global i64 0, align 8
@TSDB_CODE_INVALID_SQL = common dso_local global i32 0, align 4
@TSDB_TIME_PRECISION_MILLI_STR = common dso_local global i32 0, align 4
@TSDB_TIME_PRECISION_MILLI = common dso_local global i32 0, align 4
@TSDB_TIME_PRECISION_MICRO_STR = common dso_local global i32 0, align 4
@TSDB_TIME_PRECISION_MICRO = common dso_local global i32 0, align 4
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parseCreateDBOptions(%struct.TYPE_19__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @tsRpcHeadSize, align 8
  %14 = add nsw i64 %12, %13
  %15 = add i64 %14, 4
  %16 = inttoptr i64 %15 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %8, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %19 = call i32 @setCreateDBOption(%struct.TYPE_18__* %17, %struct.TYPE_19__* %18)
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = icmp ne %struct.TYPE_15__* %22, null
  br i1 %23, label %24, label %111

24:                                               ; preds = %2
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %105 [
    i32 1, label %30
    i32 2, label %43
    i32 3, label %68
  ]

30:                                               ; preds = %24
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @htonl(i32 %39)
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  br label %110

43:                                               ; preds = %24
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @htonl(i32 %52)
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i64 1
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @htonl(i32 %64)
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  br label %110

68:                                               ; preds = %24
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @htonl(i32 %77)
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i64 1
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @htonl(i32 %89)
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i64 2
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @htonl(i32 %101)
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  br label %110

105:                                              ; preds = %24
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = call i32 @setErrMsg(%struct.TYPE_16__* %106, i8* %107)
  %109 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %109, i32* %3, align 4
  br label %175

110:                                              ; preds = %68, %43, %30
  br label %111

111:                                              ; preds = %110, %2
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  store %struct.TYPE_17__* %113, %struct.TYPE_17__** %9, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %173

118:                                              ; preds = %111
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @strdequote(i32 %121)
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @TSDB_TIME_PRECISION_MILLI_STR, align 4
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @strncmp(i32 %127, i32 %128, i64 %131)
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %118
  %135 = load i32, i32* @TSDB_TIME_PRECISION_MILLI_STR, align 4
  %136 = call i64 @strlen(i32 %135)
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %136, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %134
  %142 = load i32, i32* @TSDB_TIME_PRECISION_MILLI, align 4
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  br label %172

145:                                              ; preds = %134, %118
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @TSDB_TIME_PRECISION_MICRO_STR, align 4
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @strncmp(i32 %148, i32 %149, i64 %152)
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %145
  %156 = load i32, i32* @TSDB_TIME_PRECISION_MICRO_STR, align 4
  %157 = call i64 @strlen(i32 %156)
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %157, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %155
  %163 = load i32, i32* @TSDB_TIME_PRECISION_MICRO, align 4
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  br label %171

166:                                              ; preds = %155, %145
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %168 = load i8*, i8** %7, align 8
  %169 = call i32 @setErrMsg(%struct.TYPE_16__* %167, i8* %168)
  %170 = load i32, i32* @TSDB_CODE_INVALID_SQL, align 4
  store i32 %170, i32* %3, align 4
  br label %175

171:                                              ; preds = %162
  br label %172

172:                                              ; preds = %171, %141
  br label %173

173:                                              ; preds = %172, %111
  %174 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %173, %166, %105
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @setCreateDBOption(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @setErrMsg(%struct.TYPE_16__*, i8*) #1

declare dso_local i64 @strdequote(i32) #1

declare dso_local i64 @strncmp(i32, i32, i64) #1

declare dso_local i64 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
