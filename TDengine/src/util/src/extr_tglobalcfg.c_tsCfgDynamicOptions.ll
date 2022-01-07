; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tglobalcfg.c_tsCfgDynamicOptions.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tglobalcfg.c_tsCfgDynamicOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i8*, i64 }

@.str = private unnamed_addr constant [37 x i8] c"change dynamic option: %s, value: %d\00", align 1
@tsGlobalConfigNum = common dso_local global i32 0, align 4
@tsGlobalConfig = common dso_local global %struct.TYPE_3__* null, align 8
@TSDB_CFG_CTYPE_B_LOG = common dso_local global i32 0, align 4
@TSDB_CFG_VTYPE_INT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"monitor\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"debugFlag\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"resetlog\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"resetQueryCache\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"the query cache of internal client will reset\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"reset query cache\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"reset query cache can't be executed, for monitor not initialized\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsCfgDynamicOptions(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @paGetToken(i8* %12, i8** %4, i32* %6)
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %127

17:                                               ; preds = %1
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = call i32 @paGetToken(i8* %22, i8** %5, i32* %7)
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 135, i32* %9, align 4
  br label %30

27:                                               ; preds = %17
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @atoi(i8* %28)
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %27, %26
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 (i8*, ...) @pPrint(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %31, i32 %32)
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %102, %30
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @tsGlobalConfigNum, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %105

38:                                               ; preds = %34
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tsGlobalConfig, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** %11, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @TSDB_CFG_CTYPE_B_LOG, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %38
  br label %102

50:                                               ; preds = %38
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TSDB_CFG_VTYPE_INT, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %102

57:                                               ; preds = %50
  %58 = load i8*, i8** %4, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i64 @strncasecmp(i8* %58, i8* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %102

66:                                               ; preds = %57
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i32*
  store i32 %67, i32* %71, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i64 @strncasecmp(i8* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %66
  %79 = load i32, i32* %9, align 4
  %80 = icmp eq i32 0, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  br i1 true, label %82, label %84

82:                                               ; preds = %81
  %83 = call i32 (...) @stopMonitor()
  br label %84

84:                                               ; preds = %82, %81
  br label %89

85:                                               ; preds = %78
  br i1 true, label %86, label %88

86:                                               ; preds = %85
  %87 = call i32 (...) @startMonitor()
  br label %88

88:                                               ; preds = %86, %85
  br label %89

89:                                               ; preds = %88, %84
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %2, align 4
  br label %127

91:                                               ; preds = %66
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i64 @strncasecmp(i8* %94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = call i32 (...) @tsSetAllDebugFlag()
  br label %100

100:                                              ; preds = %98, %91
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %2, align 4
  br label %127

102:                                              ; preds = %65, %56, %49
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %34

105:                                              ; preds = %34
  %106 = load i8*, i8** %4, align 8
  %107 = call i64 @strncasecmp(i8* %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = call i32 (...) @taosResetLogFile()
  %111 = call i32 (...) @tsPrintGlobalConfig()
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %2, align 4
  br label %127

113:                                              ; preds = %105
  %114 = load i8*, i8** %4, align 8
  %115 = call i64 @strncasecmp(i8* %114, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 15)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  br i1 true, label %118, label %121

118:                                              ; preds = %117
  %119 = call i32 (i8*, ...) @pPrint(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %120 = call i32 @taosLogSqlFp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %123

121:                                              ; preds = %117
  %122 = call i32 @pError(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0))
  store i32 169, i32* %8, align 4
  br label %123

123:                                              ; preds = %121, %118
  br label %125

124:                                              ; preds = %113
  store i32 169, i32* %8, align 4
  br label %125

125:                                              ; preds = %124, %123
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %125, %109, %100, %89, %16
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @paGetToken(i8*, i8**, i32*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @pPrint(i8*, ...) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @stopMonitor(...) #1

declare dso_local i32 @startMonitor(...) #1

declare dso_local i32 @tsSetAllDebugFlag(...) #1

declare dso_local i32 @taosResetLogFile(...) #1

declare dso_local i32 @tsPrintGlobalConfig(...) #1

declare dso_local i32 @taosLogSqlFp(i8*) #1

declare dso_local i32 @pError(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
