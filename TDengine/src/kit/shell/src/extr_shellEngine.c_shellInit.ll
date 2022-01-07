; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellEngine.c_shellInit.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellEngine.c_shellInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arguments = type { i64*, i32*, i32, i32*, i32*, i32, i64, i32* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CLIENT_VERSION = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@TSDB_OPTION_TIMEZONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Enter password: \00", align 1
@tsDefaultPass = common dso_local global i32* null, align 8
@tsDefaultUser = common dso_local global i32* null, align 8
@tsMetricMetaKeepTimer = common dso_local global i32 0, align 4
@tsMeterMetaKeepTimer = common dso_local global i32 0, align 4
@tsMgmtShellPort = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@PROMPT_HEADER = common dso_local global i8* null, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@SERVER_VERSION = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @shellInit(%struct.arguments* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.arguments*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store %struct.arguments* %0, %struct.arguments** %3, align 8
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load i8*, i8** @CLIENT_VERSION, align 8
  %8 = call i32 (...) @taos_get_client_info()
  %9 = call i32 (i8*, ...) @printf(i8* %7, i32 %8)
  %10 = load i32, i32* @stdout, align 4
  %11 = call i32 @fflush(i32 %10)
  %12 = load %struct.arguments*, %struct.arguments** %3, align 8
  %13 = getelementptr inbounds %struct.arguments, %struct.arguments* %12, i32 0, i32 7
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i32, i32* @TSDB_OPTION_TIMEZONE, align 4
  %18 = load %struct.arguments*, %struct.arguments** %3, align 8
  %19 = getelementptr inbounds %struct.arguments, %struct.arguments* %18, i32 0, i32 7
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @taos_options(i32 %17, i32* %20)
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.arguments*, %struct.arguments** %3, align 8
  %24 = getelementptr inbounds %struct.arguments, %struct.arguments* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.arguments*, %struct.arguments** %3, align 8
  %29 = getelementptr inbounds %struct.arguments, %struct.arguments* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = call i32* @getpass(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.arguments*, %struct.arguments** %3, align 8
  %35 = getelementptr inbounds %struct.arguments, %struct.arguments* %34, i32 0, i32 3
  store i32* %33, i32** %35, align 8
  br label %36

36:                                               ; preds = %32, %27
  br label %41

37:                                               ; preds = %22
  %38 = load i32*, i32** @tsDefaultPass, align 8
  %39 = load %struct.arguments*, %struct.arguments** %3, align 8
  %40 = getelementptr inbounds %struct.arguments, %struct.arguments* %39, i32 0, i32 3
  store i32* %38, i32** %40, align 8
  br label %41

41:                                               ; preds = %37, %36
  %42 = load %struct.arguments*, %struct.arguments** %3, align 8
  %43 = getelementptr inbounds %struct.arguments, %struct.arguments* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32*, i32** @tsDefaultUser, align 8
  %48 = load %struct.arguments*, %struct.arguments** %3, align 8
  %49 = getelementptr inbounds %struct.arguments, %struct.arguments* %48, i32 0, i32 4
  store i32* %47, i32** %49, align 8
  br label %50

50:                                               ; preds = %46, %41
  %51 = call i32 (...) @taos_init()
  store i32 3, i32* @tsMetricMetaKeepTimer, align 4
  store i32 3000, i32* @tsMeterMetaKeepTimer, align 4
  %52 = load %struct.arguments*, %struct.arguments** %3, align 8
  %53 = getelementptr inbounds %struct.arguments, %struct.arguments* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.arguments*, %struct.arguments** %3, align 8
  %56 = getelementptr inbounds %struct.arguments, %struct.arguments* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.arguments*, %struct.arguments** %3, align 8
  %59 = getelementptr inbounds %struct.arguments, %struct.arguments* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.arguments*, %struct.arguments** %3, align 8
  %62 = getelementptr inbounds %struct.arguments, %struct.arguments* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @tsMgmtShellPort, align 4
  %65 = call i32* @taos_connect(i32 %54, i32* %57, i32* %60, i32 %63, i32 %64)
  store i32* %65, i32** %4, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %50
  %69 = load i32*, i32** %4, align 8
  store i32* %69, i32** %2, align 8
  br label %130

70:                                               ; preds = %50
  %71 = call i32 (...) @read_history()
  %72 = load %struct.arguments*, %struct.arguments** %3, align 8
  %73 = getelementptr inbounds %struct.arguments, %struct.arguments* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %70
  %77 = load %struct.arguments*, %struct.arguments** %3, align 8
  %78 = getelementptr inbounds %struct.arguments, %struct.arguments* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %124

83:                                               ; preds = %76, %70
  %84 = load %struct.arguments*, %struct.arguments** %3, align 8
  %85 = getelementptr inbounds %struct.arguments, %struct.arguments* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %105

88:                                               ; preds = %83
  %89 = load %struct.arguments*, %struct.arguments** %3, align 8
  %90 = getelementptr inbounds %struct.arguments, %struct.arguments* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i8* @strtok(i32* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %92, i8** %5, align 8
  br label %93

93:                                               ; preds = %96, %88
  %94 = load i8*, i8** %5, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load i8*, i8** @PROMPT_HEADER, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %97, i8* %98)
  %100 = load i32*, i32** %4, align 8
  %101 = load i8*, i8** %5, align 8
  %102 = call i32 @shellRunCommand(i32* %100, i8* %101)
  %103 = call i8* @strtok(i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %103, i8** %5, align 8
  br label %93

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %104, %83
  %106 = load %struct.arguments*, %struct.arguments** %3, align 8
  %107 = getelementptr inbounds %struct.arguments, %struct.arguments* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %105
  %113 = load i32*, i32** %4, align 8
  %114 = load %struct.arguments*, %struct.arguments** %3, align 8
  %115 = getelementptr inbounds %struct.arguments, %struct.arguments* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = call i32 @source_file(i32* %113, i64* %116)
  br label %118

118:                                              ; preds = %112, %105
  %119 = load i32*, i32** %4, align 8
  %120 = call i32 @taos_close(i32* %119)
  %121 = call i32 (...) @write_history()
  %122 = load i32, i32* @EXIT_SUCCESS, align 4
  %123 = call i32 @exit(i32 %122) #3
  unreachable

124:                                              ; preds = %76
  %125 = load i8*, i8** @SERVER_VERSION, align 8
  %126 = load i32*, i32** %4, align 8
  %127 = call i32 @taos_get_server_info(i32* %126)
  %128 = call i32 (i8*, ...) @printf(i8* %125, i32 %127)
  %129 = load i32*, i32** %4, align 8
  store i32* %129, i32** %2, align 8
  br label %130

130:                                              ; preds = %124, %68
  %131 = load i32*, i32** %2, align 8
  ret i32* %131
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @taos_get_client_info(...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @taos_options(i32, i32*) #1

declare dso_local i32* @getpass(i8*) #1

declare dso_local i32 @taos_init(...) #1

declare dso_local i32* @taos_connect(i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @read_history(...) #1

declare dso_local i8* @strtok(i32*, i8*) #1

declare dso_local i32 @shellRunCommand(i32*, i8*) #1

declare dso_local i32 @source_file(i32*, i64*) #1

declare dso_local i32 @taos_close(i32*) #1

declare dso_local i32 @write_history(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @taos_get_server_info(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
