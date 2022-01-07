; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_crawler.c_follow_links.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_crawler.c_follow_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i32* }

@HTML_PARSE_NOBLANKS = common dso_local global i32 0, align 4
@HTML_PARSE_NOERROR = common dso_local global i32 0, align 4
@HTML_PARSE_NOWARNING = common dso_local global i32 0, align 4
@HTML_PARSE_NONET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"//a/@href\00", align 1
@RAND_MAX = common dso_local global double 0.000000e+00, align 8
@follow_relative_links = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"https://\00", align 1
@max_link_per_page = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @follow_links(i32* %0, %struct.TYPE_12__* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i8* %2, i8** %7, align 8
  %22 = load i32, i32* @HTML_PARSE_NOBLANKS, align 4
  %23 = load i32, i32* @HTML_PARSE_NOERROR, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @HTML_PARSE_NOWARNING, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @HTML_PARSE_NONET, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @htmlReadMemory(i32 %31, i32 %34, i8* %35, i32* null, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %140

41:                                               ; preds = %3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @xmlXPathNewContext(i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call %struct.TYPE_10__* @xmlXPathEvalExpression(i8* %44, i32 %45)
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %12, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @xmlXPathFreeContext(i32 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %50 = icmp ne %struct.TYPE_10__* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  store i64 0, i64* %4, align 8
  br label %140

52:                                               ; preds = %41
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %13, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %57 = call i64 @xmlXPathNodeSetIsEmpty(%struct.TYPE_11__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %61 = call i32 @xmlXPathFreeObject(%struct.TYPE_10__* %60)
  store i64 0, i64* %4, align 8
  br label %140

62:                                               ; preds = %52
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %63

63:                                               ; preds = %133, %62
  %64 = load i32, i32* %15, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %136

69:                                               ; preds = %63
  %70 = call double (...) @rand()
  store double %70, double* %16, align 8
  %71 = load double, double* %16, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sitofp i32 %74 to double
  %76 = fmul double %71, %75
  %77 = load double, double* @RAND_MAX, align 8
  %78 = fdiv double %76, %77
  %79 = fptosi double %78 to i32
  store i32 %79, i32* %17, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %81, align 8
  %83 = load i32, i32* %17, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %82, i64 %84
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  store i32* %88, i32** %18, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32*, i32** %18, align 8
  %91 = call i8* @xmlNodeListGetString(i32 %89, i32* %90, i32 1)
  store i8* %91, i8** %19, align 8
  %92 = load i64, i64* @follow_relative_links, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %69
  %95 = load i8*, i8** %19, align 8
  store i8* %95, i8** %20, align 8
  %96 = load i8*, i8** %19, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = call i8* @xmlBuildURI(i8* %96, i8* %97)
  store i8* %98, i8** %19, align 8
  %99 = load i8*, i8** %20, align 8
  %100 = call i32 @xmlFree(i8* %99)
  br label %101

101:                                              ; preds = %94, %69
  %102 = load i8*, i8** %19, align 8
  store i8* %102, i8** %21, align 8
  %103 = load i8*, i8** %21, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i8*, i8** %21, align 8
  %107 = call i32 @strlen(i8* %106)
  %108 = icmp slt i32 %107, 20
  br i1 %108, label %109, label %110

109:                                              ; preds = %105, %101
  br label %133

110:                                              ; preds = %105
  %111 = load i8*, i8** %21, align 8
  %112 = call i32 @strncmp(i8* %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i8*, i8** %21, align 8
  %116 = call i32 @strncmp(i8* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %130, label %118

118:                                              ; preds = %114, %110
  %119 = load i32*, i32** %5, align 8
  %120 = load i8*, i8** %21, align 8
  %121 = call i32 @make_handle(i8* %120)
  %122 = call i32 @curl_multi_add_handle(i32* %119, i32 %121)
  %123 = load i64, i64* %14, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %14, align 8
  %125 = load i32, i32* @max_link_per_page, align 4
  %126 = sext i32 %125 to i64
  %127 = icmp eq i64 %123, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %118
  br label %136

129:                                              ; preds = %118
  br label %130

130:                                              ; preds = %129, %114
  %131 = load i8*, i8** %21, align 8
  %132 = call i32 @xmlFree(i8* %131)
  br label %133

133:                                              ; preds = %130, %109
  %134 = load i32, i32* %15, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %15, align 4
  br label %63

136:                                              ; preds = %128, %63
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %138 = call i32 @xmlXPathFreeObject(%struct.TYPE_10__* %137)
  %139 = load i64, i64* %14, align 8
  store i64 %139, i64* %4, align 8
  br label %140

140:                                              ; preds = %136, %59, %51, %40
  %141 = load i64, i64* %4, align 8
  ret i64 %141
}

declare dso_local i32 @htmlReadMemory(i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @xmlXPathNewContext(i32) #1

declare dso_local %struct.TYPE_10__* @xmlXPathEvalExpression(i8*, i32) #1

declare dso_local i32 @xmlXPathFreeContext(i32) #1

declare dso_local i64 @xmlXPathNodeSetIsEmpty(%struct.TYPE_11__*) #1

declare dso_local i32 @xmlXPathFreeObject(%struct.TYPE_10__*) #1

declare dso_local double @rand(...) #1

declare dso_local i8* @xmlNodeListGetString(i32, i32*, i32) #1

declare dso_local i8* @xmlBuildURI(i8*, i8*) #1

declare dso_local i32 @xmlFree(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @curl_multi_add_handle(i32*, i32) #1

declare dso_local i32 @make_handle(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
