; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_urlglob.c_glob_url.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_urlglob.c_glob_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i64, i64 }

@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s in URL position %zu:\0A%s\0A%*s^\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"curl: (%d) %s\0A\00", align 1
@CURLE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @glob_url(%struct.TYPE_6__** %0, i8* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [512 x i8], align 16
  %15 = alloca i8*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %11, align 8
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %16, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = add nsw i64 %18, 1
  %20 = call i8* @malloc(i64 %19)
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %24, i32* %5, align 4
  br label %97

25:                                               ; preds = %4
  %26 = load i8*, i8** %12, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 0, i8* %27, align 1
  %28 = call %struct.TYPE_6__* @calloc(i32 1, i32 32)
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %10, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @Curl_safefree(i8* %32)
  %34 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %34, i32* %5, align 4
  br label %97

35:                                               ; preds = %25
  %36 = load i8*, i8** %7, align 8
  %37 = call i64 @strlen(i8* %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @glob_parse(%struct.TYPE_6__* %43, i8* %44, i32 1, i64* %11)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %35
  %49 = load i64, i64* %11, align 8
  %50 = load i64*, i64** %8, align 8
  store i64 %49, i64* %50, align 8
  br label %93

51:                                               ; preds = %35
  %52 = load i32*, i32** %9, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %88

54:                                               ; preds = %51
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %88

59:                                               ; preds = %54
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %59
  %65 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %75, 1
  %77 = call i32 @msnprintf(i8* %65, i32 512, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %68, i64 %71, i8* %72, i64 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %78 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  store i8* %78, i8** %15, align 8
  br label %83

79:                                               ; preds = %59
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %15, align 8
  br label %83

83:                                               ; preds = %79, %64
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i8*, i8** %15, align 8
  %87 = call i32 @fprintf(i32* %84, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %85, i8* %86)
  br label %88

88:                                               ; preds = %83, %54, %51
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %90 = call i32 @glob_cleanup(%struct.TYPE_6__* %89)
  %91 = load i64*, i64** %8, align 8
  store i64 1, i64* %91, align 8
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %5, align 4
  br label %97

93:                                               ; preds = %48
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %95 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__* %94, %struct.TYPE_6__** %95, align 8
  %96 = load i32, i32* @CURLE_OK, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %93, %88, %31, %23
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_6__* @calloc(i32, i32) #1

declare dso_local i32 @Curl_safefree(i8*) #1

declare dso_local i32 @glob_parse(%struct.TYPE_6__*, i8*, i32, i64*) #1

declare dso_local i32 @msnprintf(i8*, i32, i8*, i8*, i64, i8*, i64, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @glob_cleanup(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
