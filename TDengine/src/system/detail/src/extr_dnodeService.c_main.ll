; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeService.c_main.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeService.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@configDir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"'-c' requires a parameter, default:%s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"-V\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"version: %s compatible_version: %s\0A\00", align 1
@version = common dso_local global i8* null, align 8
@compatible_version = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"gitinfo: %s\0A\00", align 1
@gitinfo = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"buildinfo: %s\0A\00", align 1
@buildinfo = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"-k\00", align 1
@SA_SIGINFO = common dso_local global i32 0, align 4
@signal_handler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"TDengine:\00", align 1
@LOG_PID = common dso_local global i32 0, align 4
@LOG_CONS = common dso_local global i32 0, align 4
@LOG_NDELAY = common dso_local global i32 0, align 4
@LOG_LOCAL1 = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"Starting TDengine service...\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"Error initialize TDengine system\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Started TDengine service successfully.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sigaction, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %6, align 4
  br label %8

8:                                                ; preds = %69, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %72

12:                                               ; preds = %8
  %13 = load i8**, i8*** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %12
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %22, 1
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load i8*, i8** @configDir, align 8
  %27 = load i8**, i8*** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %27, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strcpy(i8* %26, i8* %32)
  br label %39

34:                                               ; preds = %20
  %35 = load i8*, i8** @configDir, align 8
  %36 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @EXIT_FAILURE, align 4
  %38 = call i32 @exit(i32 %37) #3
  unreachable

39:                                               ; preds = %25
  br label %68

40:                                               ; preds = %12
  %41 = load i8**, i8*** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load i8*, i8** @version, align 8
  %50 = load i8*, i8** @compatible_version, align 8
  %51 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %49, i8* %50)
  %52 = load i8*, i8** @gitinfo, align 8
  %53 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %52)
  %54 = load i8*, i8** @buildinfo, align 8
  %55 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %54)
  ret i32 0

56:                                               ; preds = %40
  %57 = load i8**, i8*** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = call i32 (...) @dnodeParseParameterK()
  br label %66

66:                                               ; preds = %64, %56
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67, %39
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %8

72:                                               ; preds = %8
  %73 = load i32, i32* @SA_SIGINFO, align 4
  %74 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* @signal_handler, align 4
  %76 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* @SIGTERM, align 4
  %78 = call i32 @sigaction(i32 %77, %struct.sigaction* %7, i32* null)
  %79 = load i32, i32* @SIGHUP, align 4
  %80 = call i32 @sigaction(i32 %79, %struct.sigaction* %7, i32* null)
  %81 = load i32, i32* @SIGINT, align 4
  %82 = call i32 @sigaction(i32 %81, %struct.sigaction* %7, i32* null)
  %83 = load i32, i32* @SIGUSR1, align 4
  %84 = call i32 @sigaction(i32 %83, %struct.sigaction* %7, i32* null)
  %85 = load i32, i32* @SIGUSR2, align 4
  %86 = call i32 @sigaction(i32 %85, %struct.sigaction* %7, i32* null)
  %87 = load i32, i32* @LOG_PID, align 4
  %88 = load i32, i32* @LOG_CONS, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @LOG_NDELAY, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @LOG_LOCAL1, align 4
  %93 = call i32 @openlog(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* @LOG_INFO, align 4
  %95 = call i32 @syslog(i32 %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %96 = call i64 (...) @dnodeInitSystem()
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %72
  %99 = load i32, i32* @LOG_ERR, align 4
  %100 = call i32 @syslog(i32 %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %101 = call i32 (...) @closelog()
  %102 = call i32 (...) @dnodeCleanUpSystem()
  %103 = load i32, i32* @EXIT_FAILURE, align 4
  %104 = call i32 @exit(i32 %103) #3
  unreachable

105:                                              ; preds = %72
  %106 = load i32, i32* @LOG_INFO, align 4
  %107 = call i32 @syslog(i32 %106, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %108
  %109 = call i32 @sleep(i32 1000)
  br label %108
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @dnodeParseParameterK(...) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i64 @dnodeInitSystem(...) #1

declare dso_local i32 @closelog(...) #1

declare dso_local i32 @dnodeCleanUpSystem(...) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
