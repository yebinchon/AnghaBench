; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_validateTableColumnInfo.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_validateTableColumnInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"illegal number of columns\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"first column must be timestamp\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"row length exceeds max length\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"duplicated column names\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"invalid data types\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"invalid binary/nchar column length\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"invalid column name\00", align 1
@TSDB_MAX_COLUMNS = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_TIMESTAMP = common dso_local global i64 0, align 8
@TSDB_MAX_BYTES_PER_ROW = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_BOOL = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_NCHAR = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_BINARY = common dso_local global i64 0, align 8
@TSDB_MAX_BINARY_LEN = common dso_local global i64 0, align 8
@TSDB_MAX_NCHAR_LEN = common dso_local global i64 0, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @validateTableColumnInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validateTableColumnInfo(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8** %12, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sle i32 %23, 1
  br i1 %24, label %31, label %25

25:                                               ; preds = %2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @TSDB_MAX_COLUMNS, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25, %2
  %32 = load i32*, i32** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @setErrMsg(i32* %32, i8* %33)
  store i32 0, i32* %3, align 4
  br label %177

35:                                               ; preds = %25
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TSDB_DATA_TYPE_TIMESTAMP, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i32*, i32** %5, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @setErrMsg(i32* %45, i8* %46)
  store i32 0, i32* %3, align 4
  br label %177

48:                                               ; preds = %35
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %49

49:                                               ; preds = %66, %48
  %50 = load i64, i64* %14, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = icmp ult i64 %50, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %49
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i64, i64* %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %13, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %13, align 8
  br label %66

66:                                               ; preds = %56
  %67 = load i64, i64* %14, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %14, align 8
  br label %49

69:                                               ; preds = %49
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* @TSDB_MAX_BYTES_PER_ROW, align 8
  %72 = icmp ugt i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32*, i32** %5, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @setErrMsg(i32* %74, i8* %75)
  store i32 0, i32* %3, align 4
  br label %177

77:                                               ; preds = %69
  store i64 0, i64* %15, align 8
  br label %78

78:                                               ; preds = %173, %77
  %79 = load i64, i64* %15, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = icmp ult i64 %79, %83
  br i1 %84, label %85, label %176

85:                                               ; preds = %78
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i64, i64* %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %89
  store %struct.TYPE_6__* %90, %struct.TYPE_6__** %16, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @TSDB_DATA_TYPE_BOOL, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %85
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @TSDB_DATA_TYPE_NCHAR, align 8
  %101 = icmp sgt i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96, %85
  %103 = load i32*, i32** %5, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = call i32 @setErrMsg(i32* %103, i8* %104)
  store i32 0, i32* %3, align 4
  br label %177

106:                                              ; preds = %96
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @TSDB_DATA_TYPE_BINARY, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %106
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ule i64 %115, 0
  br i1 %116, label %140, label %117

117:                                              ; preds = %112
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @TSDB_MAX_BINARY_LEN, align 8
  %122 = icmp ugt i64 %120, %121
  br i1 %122, label %140, label %123

123:                                              ; preds = %117, %106
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @TSDB_DATA_TYPE_NCHAR, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %144

129:                                              ; preds = %123
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ule i64 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %129
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @TSDB_MAX_NCHAR_LEN, align 8
  %139 = icmp ugt i64 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %134, %129, %117, %112
  %141 = load i32*, i32** %5, align 8
  %142 = load i8*, i8** %11, align 8
  %143 = call i32 @setErrMsg(i32* %141, i8* %142)
  store i32 0, i32* %3, align 4
  br label %177

144:                                              ; preds = %134, %123
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i64 @validateColumnName(i32 %147)
  %149 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = load i32*, i32** %5, align 8
  %153 = load i8*, i8** %12, align 8
  %154 = call i32 @setErrMsg(i32* %152, i8* %153)
  store i32 0, i32* %3, align 4
  br label %177

155:                                              ; preds = %144
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %157 = load i64, i64* %15, align 8
  %158 = add i64 %157, 1
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = load i64, i64* %15, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @has(%struct.TYPE_5__* %156, i64 %158, i32 %165)
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %172

168:                                              ; preds = %155
  %169 = load i32*, i32** %5, align 8
  %170 = load i8*, i8** %9, align 8
  %171 = call i32 @setErrMsg(i32* %169, i8* %170)
  store i32 0, i32* %3, align 4
  br label %177

172:                                              ; preds = %155
  br label %173

173:                                              ; preds = %172
  %174 = load i64, i64* %15, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %15, align 8
  br label %78

176:                                              ; preds = %78
  store i32 1, i32* %3, align 4
  br label %177

177:                                              ; preds = %176, %168, %151, %140, %102, %73, %44, %31
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @setErrMsg(i32*, i8*) #1

declare dso_local i64 @validateColumnName(i32) #1

declare dso_local i32 @has(%struct.TYPE_5__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
