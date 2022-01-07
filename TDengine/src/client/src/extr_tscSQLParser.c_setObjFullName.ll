; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_setObjFullName.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_setObjFullName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@TS_PATH_DELIMITER = common dso_local global i8* null, align 8
@TSDB_DB_NAME_LEN = common dso_local global i64 0, align 8
@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8
@TSDB_METER_NAME_LEN = common dso_local global i64 0, align 8
@TSDB_METER_ID_LEN = common dso_local global i64 0, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, %struct.TYPE_4__*, %struct.TYPE_4__*, i64*)* @setObjFullName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @setObjFullName(i8* %0, i8* %1, %struct.TYPE_4__* %2, %struct.TYPE_4__* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %5
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @strlen(i8* %17)
  store i64 %18, i64* %13, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @strcpy(i8* %19, i8* %20)
  %22 = load i8*, i8** @TS_PATH_DELIMITER, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %13, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8 %24, i8* %27, align 1
  %28 = load i64, i64* %13, align 8
  %29 = add i64 %28, 1
  %30 = load i64, i64* %12, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %12, align 8
  br label %32

32:                                               ; preds = %16, %5
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %59

35:                                               ; preds = %32
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TSDB_DB_NAME_LEN, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %42, i64* %6, align 8
  br label %136

43:                                               ; preds = %35
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %12, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @memcpy(i8* %46, i32 %49, i64 %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %12, align 8
  br label %59

59:                                               ; preds = %43, %32
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %61 = icmp ne %struct.TYPE_4__* %60, null
  br i1 %61, label %62, label %112

62:                                               ; preds = %59
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %64 = icmp ne %struct.TYPE_4__* %63, null
  br i1 %64, label %65, label %82

65:                                               ; preds = %62
  %66 = load i8*, i8** @TS_PATH_DELIMITER, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = load i8*, i8** %7, align 8
  %70 = load i64, i64* %12, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8 %68, i8* %71, align 1
  %72 = load i64, i64* %12, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %12, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TSDB_METER_NAME_LEN, align 8
  %78 = icmp ugt i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %65
  %80 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %80, i64* %6, align 8
  br label %136

81:                                               ; preds = %65
  br label %96

82:                                               ; preds = %62
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @TSDB_METER_NAME_LEN, align 8
  %87 = load i64, i64* @TSDB_DB_NAME_LEN, align 8
  %88 = add i64 %86, %87
  %89 = load i8*, i8** @TS_PATH_DELIMITER, align 8
  %90 = call i64 @tListLen(i8* %89)
  %91 = add i64 %88, %90
  %92 = icmp ugt i64 %85, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %82
  %94 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %94, i64* %6, align 8
  br label %136

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95, %81
  %97 = load i8*, i8** %7, align 8
  %98 = load i64, i64* %12, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @memcpy(i8* %99, i32 %102, i64 %105)
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %12, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %12, align 8
  br label %112

112:                                              ; preds = %96, %59
  %113 = load i64*, i64** %11, align 8
  %114 = icmp ne i64* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i64, i64* %12, align 8
  %117 = load i64*, i64** %11, align 8
  store i64 %116, i64* %117, align 8
  br label %118

118:                                              ; preds = %115, %112
  %119 = load i64, i64* %12, align 8
  %120 = load i64, i64* @TSDB_METER_ID_LEN, align 8
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i8*, i8** %7, align 8
  %124 = load i64, i64* %12, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8 0, i8* %125, align 1
  br label %126

126:                                              ; preds = %122, %118
  %127 = load i64, i64* %12, align 8
  %128 = load i64, i64* @TSDB_METER_ID_LEN, align 8
  %129 = icmp ule i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  br label %134

132:                                              ; preds = %126
  %133 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i64 [ %131, %130 ], [ %133, %132 ]
  store i64 %135, i64* %6, align 8
  br label %136

136:                                              ; preds = %134, %93, %79, %41
  %137 = load i64, i64* %6, align 8
  ret i64 %137
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i64 @tListLen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
