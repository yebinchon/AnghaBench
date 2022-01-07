; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_tftpd.c_parse_servercmd.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_tftpd.c_parse_servercmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.testcase = type { i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"fopen() failed with error: %d %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"  [1] Error opening file: %s\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"  Couldn't open test file %ld\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"reply\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"servercmd\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"getpart() failed with error: %d\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"writedelay: %d\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"instructed to delay %d secs between packets\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Unknown <servercmd> instruction found: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.testcase*)* @parse_servercmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_servercmd(%struct.testcase* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.testcase*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.testcase* %0, %struct.testcase** %3, align 8
  %12 = load %struct.testcase*, %struct.testcase** %3, align 8
  %13 = getelementptr inbounds %struct.testcase, %struct.testcase* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i8* @test2file(i8* %14)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32* @fopen(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @errno, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @strerror(i32 %23)
  %25 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %24)
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  %28 = load %struct.testcase*, %struct.testcase** %3, align 8
  %29 = getelementptr inbounds %struct.testcase, %struct.testcase* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %30)
  store i32 1, i32* %2, align 4
  br label %105

32:                                               ; preds = %1
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @getpart(i8** %7, i64* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @fclose(i32* %35)
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %40)
  store i32 1, i32* %2, align 4
  br label %105

42:                                               ; preds = %32
  %43 = load i8*, i8** %7, align 8
  store i8* %43, i8** %8, align 8
  br label %44

44:                                               ; preds = %100, %42
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i64, i64* %9, align 8
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i1 [ false, %44 ], [ %49, %47 ]
  br i1 %51, label %52, label %101

52:                                               ; preds = %50
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @sscanf(i8* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32* %10)
  %55 = icmp eq i32 1, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32, i32* %10, align 4
  %58 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.testcase*, %struct.testcase** %3, align 8
  %61 = getelementptr inbounds %struct.testcase, %struct.testcase* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  br label %65

62:                                               ; preds = %52
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %62, %56
  %66 = load i8*, i8** %8, align 8
  %67 = call i8* @strchr(i8* %66, i8 signext 13)
  store i8* %67, i8** %11, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i8*, i8** %8, align 8
  %72 = call i8* @strchr(i8* %71, i8 signext 10)
  store i8* %72, i8** %11, align 8
  br label %73

73:                                               ; preds = %70, %65
  %74 = load i8*, i8** %11, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %99

76:                                               ; preds = %73
  br label %77

77:                                               ; preds = %89, %76
  %78 = load i8*, i8** %11, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 13
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load i8*, i8** %11, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 10
  br label %87

87:                                               ; preds = %82, %77
  %88 = phi i1 [ true, %77 ], [ %86, %82 ]
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = load i8*, i8** %11, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %11, align 8
  br label %77

92:                                               ; preds = %87
  %93 = load i8*, i8** %11, align 8
  %94 = load i8, i8* %93, align 1
  %95 = icmp ne i8 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  br label %101

97:                                               ; preds = %92
  %98 = load i8*, i8** %11, align 8
  store i8* %98, i8** %8, align 8
  br label %100

99:                                               ; preds = %73
  br label %101

100:                                              ; preds = %97
  br label %44

101:                                              ; preds = %99, %96, %50
  %102 = load i8*, i8** %7, align 8
  %103 = call i32 @free(i8* %102)
  br label %104

104:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %39, %20
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i8* @test2file(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @logmsg(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @getpart(i8**, i64*, i8*, i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
