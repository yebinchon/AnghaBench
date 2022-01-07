; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/taosdump/extr_taosdump.c_taosDumpMetric.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/taosdump/extr_taosdump.c_taosDumpMetric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arguments = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@command = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"select tbname from %s\00", align 1
@taos = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to run command %s\0A\00", align 1
@result = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"failed to use result\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c".table.tmp\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to open temp file\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosDumpMetric(i8* %0, %struct.arguments* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.arguments*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.arguments* %1, %struct.arguments** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64* null, i64** %8, align 8
  store i32 -1, i32* %9, align 4
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strcpy(i32 %13, i8* %14)
  %16 = load i8*, i8** @command, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* @taos, align 4
  %20 = load i8*, i8** @command, align 8
  %21 = call i64 @taos_query(i32 %19, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @stderr, align 4
  %25 = load i8*, i8** @command, align 8
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  store i32 -1, i32* %4, align 4
  br label %100

27:                                               ; preds = %3
  %28 = load i32, i32* @taos, align 4
  %29 = call i32* @taos_use_result(i32 %28)
  store i32* %29, i32** @result, align 8
  %30 = load i32*, i32** @result, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %100

35:                                               ; preds = %27
  %36 = load i32, i32* @O_RDWR, align 4
  %37 = load i32, i32* @O_CREAT, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @S_IRWXU, align 4
  %40 = load i32, i32* @S_IRGRP, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @S_IXGRP, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @S_IROTH, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @open(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %38, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %35
  %50 = load i32, i32* @stderr, align 4
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %100

52:                                               ; preds = %35
  %53 = load i32*, i32** @result, align 8
  %54 = call %struct.TYPE_7__* @taos_fetch_fields(i32* %53)
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %11, align 8
  br label %55

55:                                               ; preds = %59, %52
  %56 = load i32*, i32** @result, align 8
  %57 = call i64* @taos_fetch_row(i32* %56)
  store i64* %57, i64** %8, align 8
  %58 = icmp ne i64* %57, null
  br i1 %58, label %59, label %78

59:                                               ; preds = %55
  %60 = call i32 @memset(%struct.TYPE_8__* %10, i32 0, i32 8)
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i64*, i64** %8, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @strncpy(i32 %62, i8* %66, i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @strcpy(i32 %73, i8* %74)
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @twrite(i32 %76, %struct.TYPE_8__* %10, i32 8)
  br label %55

78:                                               ; preds = %55
  %79 = load i32*, i32** @result, align 8
  %80 = call i32 @taos_free_result(i32* %79)
  store i32* null, i32** @result, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @SEEK_SET, align 4
  %83 = call i32 @lseek(i32 %81, i32 0, i32 %82)
  br label %84

84:                                               ; preds = %88, %78
  %85 = load i32, i32* %9, align 4
  %86 = call i64 @read(i32 %85, %struct.TYPE_8__* %10, i32 8)
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.arguments*, %struct.arguments** %6, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @taosDumpTable(i32 %90, i32 %92, %struct.arguments* %93, i32* %94)
  br label %84

96:                                               ; preds = %84
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @tclose(i32 %97)
  %99 = call i32 @remove(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %96, %49, %32, %23
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i64 @taos_query(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @taos_use_result(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @taos_fetch_fields(i32*) #1

declare dso_local i64* @taos_fetch_row(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @twrite(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @taos_free_result(i32*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i64 @read(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @taosDumpTable(i32, i32, %struct.arguments*, i32*) #1

declare dso_local i32 @tclose(i32) #1

declare dso_local i32 @remove(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
