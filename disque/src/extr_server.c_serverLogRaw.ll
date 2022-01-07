; ModuleID = '/home/carl/AnghaBench/disque/src/extr_server.c_serverLogRaw.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_server.c_serverLogRaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i64, i64 }
%struct.timeval = type { i64, i32 }

@LOG_DEBUG = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".-*#\00", align 1
@LL_RAW = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@stdout = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%d %b %H:%M:%S.\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%03d\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%d:%c %s %c %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serverLogRaw(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.timeval, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %16 = load i32, i32* @LOG_DEBUG, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* @LOG_INFO, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  %20 = load i32, i32* @LOG_NOTICE, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  %22 = load i32, i32* @LOG_WARNING, align 4
  store i32 %22, i32* %21, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @LL_RAW, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, 255
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  br label %115

38:                                               ; preds = %2
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32*, i32** @stdout, align 8
  br label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %45 = call i32* @fopen(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi i32* [ %42, %41 ], [ %45, %43 ]
  store i32* %47, i32** %7, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  br label %115

51:                                               ; preds = %46
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32*, i32** %7, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  br label %97

58:                                               ; preds = %51
  %59 = call i64 (...) @getpid()
  store i64 %59, i64* %14, align 8
  %60 = call i32 @gettimeofday(%struct.timeval* %12, i32* null)
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  %63 = call i32 @localtime(i32* %62)
  %64 = call i32 @strftime(i8* %61, i32 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = sub i64 64, %70
  %72 = trunc i64 %71 to i32
  %73 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = sdiv i32 %75, 1000
  %77 = call i32 @snprintf(i8* %68, i32 %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %58
  store i32 67, i32* %13, align 4
  br label %83

82:                                               ; preds = %58
  store i32 80, i32* %13, align 4
  br label %83

83:                                               ; preds = %82, %81
  %84 = load i32*, i32** %7, align 8
  %85 = call i64 (...) @getpid()
  %86 = trunc i64 %85 to i32
  %87 = load i32, i32* %13, align 4
  %88 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %86, i32 %87, i8* %88, i32 %94, i8* %95)
  br label %97

97:                                               ; preds = %83, %54
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @fflush(i32* %98)
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @fclose(i32* %103)
  br label %105

105:                                              ; preds = %102, %97
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i8*, i8** %4, align 8
  %114 = call i32 @syslog(i32 %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %113)
  br label %115

115:                                              ; preds = %37, %50, %108, %105
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, i32) #1

declare dso_local i32 @localtime(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @syslog(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
