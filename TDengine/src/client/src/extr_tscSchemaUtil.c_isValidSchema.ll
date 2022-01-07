; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSchemaUtil.c_isValidSchema.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSchemaUtil.c_isValidSchema.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.SSchema = type { i64, i64, i32 }

@TSDB_DATA_TYPE_TIMESTAMP = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_BOOL = common dso_local global i64 0, align 8
@TSDB_MAX_BINARY_LEN = common dso_local global i64 0, align 8
@tDataTypeDesc = common dso_local global %struct.TYPE_2__* null, align 8
@TSDB_COL_NAME_LEN = common dso_local global i32 0, align 4
@TSDB_MAX_BYTES_PER_ROW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isValidSchema(%struct.SSchema* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.SSchema*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.SSchema* %0, %struct.SSchema** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @VALIDNUMOFCOLS(i64 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %121

13:                                               ; preds = %2
  %14 = load %struct.SSchema*, %struct.SSchema** %4, align 8
  %15 = getelementptr inbounds %struct.SSchema, %struct.SSchema* %14, i64 0
  %16 = getelementptr inbounds %struct.SSchema, %struct.SSchema* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TSDB_DATA_TYPE_TIMESTAMP, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %121

21:                                               ; preds = %13
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %22

22:                                               ; preds = %113, %21
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %116

26:                                               ; preds = %22
  %27 = load %struct.SSchema*, %struct.SSchema** %4, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds %struct.SSchema, %struct.SSchema* %27, i64 %28
  %30 = getelementptr inbounds %struct.SSchema, %struct.SSchema* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TSDB_DATA_TYPE_TIMESTAMP, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %26
  %35 = load %struct.SSchema*, %struct.SSchema** %4, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds %struct.SSchema, %struct.SSchema* %35, i64 %36
  %38 = getelementptr inbounds %struct.SSchema, %struct.SSchema* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TSDB_DATA_TYPE_BOOL, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34, %26
  store i32 0, i32* %3, align 4
  br label %121

43:                                               ; preds = %34
  %44 = load %struct.SSchema*, %struct.SSchema** %4, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.SSchema, %struct.SSchema* %44, i64 %45
  %47 = getelementptr inbounds %struct.SSchema, %struct.SSchema* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TSDB_DATA_TYPE_TIMESTAMP, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %43
  %52 = load %struct.SSchema*, %struct.SSchema** %4, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds %struct.SSchema, %struct.SSchema* %52, i64 %53
  %55 = getelementptr inbounds %struct.SSchema, %struct.SSchema* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TSDB_MAX_BINARY_LEN, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %121

60:                                               ; preds = %51
  br label %79

61:                                               ; preds = %43
  %62 = load %struct.SSchema*, %struct.SSchema** %4, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds %struct.SSchema, %struct.SSchema* %62, i64 %63
  %65 = getelementptr inbounds %struct.SSchema, %struct.SSchema* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tDataTypeDesc, align 8
  %68 = load %struct.SSchema*, %struct.SSchema** %4, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds %struct.SSchema, %struct.SSchema* %68, i64 %69
  %71 = getelementptr inbounds %struct.SSchema, %struct.SSchema* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %66, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %121

78:                                               ; preds = %61
  br label %79

79:                                               ; preds = %78, %60
  %80 = load i64, i64* %7, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %8, align 8
  br label %82

82:                                               ; preds = %102, %79
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* %5, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %105

86:                                               ; preds = %82
  %87 = load %struct.SSchema*, %struct.SSchema** %4, align 8
  %88 = load i64, i64* %7, align 8
  %89 = getelementptr inbounds %struct.SSchema, %struct.SSchema* %87, i64 %88
  %90 = getelementptr inbounds %struct.SSchema, %struct.SSchema* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.SSchema*, %struct.SSchema** %4, align 8
  %93 = load i64, i64* %8, align 8
  %94 = getelementptr inbounds %struct.SSchema, %struct.SSchema* %92, i64 %93
  %95 = getelementptr inbounds %struct.SSchema, %struct.SSchema* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @TSDB_COL_NAME_LEN, align 4
  %98 = call i64 @strncasecmp(i32 %91, i32 %96, i32 %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %86
  store i32 0, i32* %3, align 4
  br label %121

101:                                              ; preds = %86
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %8, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %8, align 8
  br label %82

105:                                              ; preds = %82
  %106 = load %struct.SSchema*, %struct.SSchema** %4, align 8
  %107 = load i64, i64* %7, align 8
  %108 = getelementptr inbounds %struct.SSchema, %struct.SSchema* %106, i64 %107
  %109 = getelementptr inbounds %struct.SSchema, %struct.SSchema* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %6, align 8
  %112 = add i64 %111, %110
  store i64 %112, i64* %6, align 8
  br label %113

113:                                              ; preds = %105
  %114 = load i64, i64* %7, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %7, align 8
  br label %22

116:                                              ; preds = %22
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* @TSDB_MAX_BYTES_PER_ROW, align 8
  %119 = icmp ule i64 %117, %118
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %116, %100, %77, %59, %42, %20, %12
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @VALIDNUMOFCOLS(i64) #1

declare dso_local i64 @strncasecmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
