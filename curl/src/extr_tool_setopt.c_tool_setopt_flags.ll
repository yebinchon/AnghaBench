; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_setopt.c_tool_setopt_flags.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_setopt.c_tool_setopt_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GlobalConfig = type { i64 }
%struct.TYPE_3__ = type { i64, i64 }

@CURLE_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"curl_easy_setopt(hnd, %s, \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%s(long)%s%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" |\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c");\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%s%ldL);\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tool_setopt_flags(i32* %0, %struct.GlobalConfig* %1, i8* %2, i32 %3, %struct.TYPE_3__* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.GlobalConfig*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [80 x i8], align 16
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.GlobalConfig* %1, %struct.GlobalConfig** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %11, align 8
  store i64 %5, i64* %12, align 8
  %18 = load i32, i32* @CURLE_OK, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %14, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i64, i64* %12, align 8
  %23 = call i32 @curl_easy_setopt(i32* %20, i32 %21, i64 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i64, i64* %12, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %14, align 4
  br label %28

28:                                               ; preds = %26, %6
  %29 = load %struct.GlobalConfig*, %struct.GlobalConfig** %8, align 8
  %30 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %96

33:                                               ; preds = %28
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %96, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %96, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %12, align 8
  store i64 %40, i64* %16, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %17, align 8
  %41 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 (i8*, i32, i8*, i8*, ...) @msnprintf(i8* %41, i32 80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  store %struct.TYPE_3__* %44, %struct.TYPE_3__** %17, align 8
  br label %45

45:                                               ; preds = %85, %39
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %88

50:                                               ; preds = %45
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %16, align 8
  %55 = xor i64 %54, -1
  %56 = and i64 %53, %55
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %50
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = xor i64 %61, -1
  %63 = load i64, i64* %16, align 8
  %64 = and i64 %63, %62
  store i64 %64, i64* %16, align 8
  %65 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %16, align 8
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %73 = call i32 @CODE3(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %65, i64 %68, i8* %72)
  %74 = load i64, i64* %16, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %58
  br label %88

77:                                               ; preds = %58
  %78 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  %79 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  %80 = call i32 @strlen(i8* %79)
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 (i8*, i32, i8*, i8*, ...) @msnprintf(i8* %78, i32 80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %82, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  br label %84

84:                                               ; preds = %77, %50
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 1
  store %struct.TYPE_3__* %87, %struct.TYPE_3__** %17, align 8
  br label %45

88:                                               ; preds = %76, %45
  %89 = load i64, i64* %16, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  %93 = load i64, i64* %16, align 8
  %94 = call i32 @CODE2(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %92, i64 %93)
  br label %95

95:                                               ; preds = %91, %88
  br label %96

96:                                               ; preds = %95, %36, %33, %28
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %13, align 4
  ret i32 %98
}

declare dso_local i32 @curl_easy_setopt(i32*, i32, i64) #1

declare dso_local i32 @msnprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @CODE3(i8*, i8*, i64, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @CODE2(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
