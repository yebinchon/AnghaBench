; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellEngine.c_shellRunCommandOnServer.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellEngine.c_shellRunCommandOnServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8** }

@.str = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c";\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"ERROR: invalid filename: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\G\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"^\\s*use\\s+[a-zA-Z0-9]+\\s*;\\s*$\00", align 1
@REG_EXTENDED = common dso_local global i32 0, align 4
@REG_ICASE = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Database changed.\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Query OK, %d row(s) in set (%.6fs)\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"Query interrupted (%s), %d row(s) in set (%.6fs)\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Query OK, %d row(s) affected (%.6fs)\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shellRunCommandOnServer(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @strstr(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %42

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = call i8* @strstr(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i8*, i8** %9, align 8
  store i8 0, i8* %25, align 1
  br label %26

26:                                               ; preds = %24, %19
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  %29 = call i64 @wordexp(i8* %28, %struct.TYPE_4__* %7, i32 0)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* @stderr, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  br label %130

36:                                               ; preds = %26
  %37 = load i8*, i8** %8, align 8
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %10, align 8
  br label %42

42:                                               ; preds = %36, %2
  %43 = load i8*, i8** %4, align 8
  %44 = call i8* @strstr(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i8* %44, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i8*, i8** %4, align 8
  %48 = call i8* @strstr(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %48, i8** %9, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i8*, i8** %9, align 8
  store i8 0, i8* %52, align 1
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i8*, i8** %8, align 8
  store i8 0, i8* %54, align 1
  store i32 1, i32* %11, align 4
  br label %55

55:                                               ; preds = %53, %42
  %56 = call i32 (...) @taosGetTimestampUs()
  store i32 %56, i32* %5, align 4
  %57 = load i32*, i32** %3, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = call i64 @taos_query(i32* %57, i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @taos_error(i32* %62)
  br label %130

64:                                               ; preds = %55
  %65 = load i8*, i8** %4, align 8
  %66 = load i32, i32* @REG_EXTENDED, align 4
  %67 = load i32, i32* @REG_ICASE, align 4
  %68 = or i32 %66, %67
  %69 = call i64 @regex_match(i8* %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load i32, i32* @stdout, align 4
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i32, i32* @stdout, align 4
  %75 = call i32 @fflush(i32 %74)
  br label %130

76:                                               ; preds = %64
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @taos_field_count(i32* %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %112

81:                                               ; preds = %76
  store i32 0, i32* %13, align 4
  %82 = load i32*, i32** %3, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @shellDumpResult(i32* %82, i8* %83, i32* %13, i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %130

89:                                               ; preds = %81
  %90 = call i32 (...) @taosGetTimestampUs()
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %5, align 4
  %97 = sub nsw i32 %95, %96
  %98 = sitofp i32 %97 to double
  %99 = fdiv double %98, 1.000000e+06
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %94, double %99)
  br label %111

101:                                              ; preds = %89
  %102 = load i32*, i32** %3, align 8
  %103 = call i8* @taos_errstr(i32* %102)
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %5, align 4
  %107 = sub nsw i32 %105, %106
  %108 = sitofp i32 %107 to double
  %109 = fdiv double %108, 1.000000e+06
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i8* %103, i32 %104, double %109)
  br label %111

111:                                              ; preds = %101, %93
  br label %123

112:                                              ; preds = %76
  %113 = load i32*, i32** %3, align 8
  %114 = call i32 @taos_affected_rows(i32* %113)
  store i32 %114, i32* %15, align 4
  %115 = call i32 (...) @taosGetTimestampUs()
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %5, align 4
  %119 = sub nsw i32 %117, %118
  %120 = sitofp i32 %119 to double
  %121 = fdiv double %120, 1.000000e+06
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %116, double %121)
  br label %123

123:                                              ; preds = %112, %111
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %125 = load i8*, i8** %10, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = call i32 @wordfree(%struct.TYPE_4__* %7)
  br label %129

129:                                              ; preds = %127, %123
  br label %130

130:                                              ; preds = %129, %88, %71, %61, %31
  ret void
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @wordexp(i8*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @taosGetTimestampUs(...) #1

declare dso_local i64 @taos_query(i32*, i8*) #1

declare dso_local i32 @taos_error(i32*) #1

declare dso_local i64 @regex_match(i8*, i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @taos_field_count(i32*) #1

declare dso_local i32 @shellDumpResult(i32*, i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @taos_errstr(i32*) #1

declare dso_local i32 @taos_affected_rows(i32*) #1

declare dso_local i32 @wordfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
