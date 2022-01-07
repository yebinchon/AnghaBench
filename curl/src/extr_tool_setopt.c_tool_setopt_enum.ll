; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_setopt.c_tool_setopt_enum.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_setopt.c_tool_setopt_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GlobalConfig = type { i64 }
%struct.TYPE_3__ = type { i64, i64 }

@CURLE_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"curl_easy_setopt(hnd, %s, %ldL);\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"curl_easy_setopt(hnd, %s, (long)%s);\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tool_setopt_enum(i32* %0, %struct.GlobalConfig* %1, i8* %2, i32 %3, %struct.TYPE_3__* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.GlobalConfig*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.GlobalConfig* %1, %struct.GlobalConfig** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %11, align 8
  store i64 %5, i64* %12, align 8
  %16 = load i32, i32* @CURLE_OK, align 4
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %14, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i64, i64* %12, align 8
  %21 = call i32 @curl_easy_setopt(i32* %18, i32 %19, i64 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i64, i64* %12, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %14, align 4
  br label %26

26:                                               ; preds = %24, %6
  %27 = load %struct.GlobalConfig*, %struct.GlobalConfig** %8, align 8
  %28 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %71

31:                                               ; preds = %26
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %71, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %71, label %37

37:                                               ; preds = %34
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %15, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %15, align 8
  br label %39

39:                                               ; preds = %52, %37
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %12, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %55

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 1
  store %struct.TYPE_3__* %54, %struct.TYPE_3__** %15, align 8
  br label %39

55:                                               ; preds = %50, %39
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** %9, align 8
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @CODE2(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %61, i64 %62)
  br label %70

64:                                               ; preds = %55
  %65 = load i8*, i8** %9, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @CODE2(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %65, i64 %68)
  br label %70

70:                                               ; preds = %64, %60
  br label %71

71:                                               ; preds = %70, %34, %31, %26
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %13, align 4
  ret i32 %73
}

declare dso_local i32 @curl_easy_setopt(i32*, i32, i64) #1

declare dso_local i32 @CODE2(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
