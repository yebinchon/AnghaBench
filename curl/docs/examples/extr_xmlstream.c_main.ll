; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_xmlstream.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_xmlstream.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ParserStruct = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@startElement = common dso_local global i32 0, align 4
@endElement = common dso_local global i32 0, align 4
@characterDataHandler = common dso_local global i32 0, align 4
@CURL_GLOBAL_DEFAULT = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"https://www.w3schools.com/xml/simple.xml\00", align 1
@CURLOPT_WRITEFUNCTION = common dso_local global i32 0, align 4
@parseStreamCallback = common dso_local global i8* null, align 8
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Depth   Characters   Closing Tag\0A\00", align 1
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"curl_easy_perform() failed: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Finalizing parsing failed with error code %d (%s).\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"                     --------------\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"                     %lu tags total\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ParserStruct, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = call i32 @memset(%struct.ParserStruct* %5, i32 0, i32 12)
  %8 = getelementptr inbounds %struct.ParserStruct, %struct.ParserStruct* %5, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = call i64 @XML_ParserCreateNS(i32* null, i8 signext 0)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @XML_SetUserData(i64 %10, %struct.ParserStruct* %5)
  %12 = load i64, i64* %4, align 8
  %13 = load i32, i32* @startElement, align 4
  %14 = load i32, i32* @endElement, align 4
  %15 = call i32 @XML_SetElementHandler(i64 %12, i32 %13, i32 %14)
  %16 = load i64, i64* %4, align 8
  %17 = load i32, i32* @characterDataHandler, align 4
  %18 = call i32 @XML_SetCharacterDataHandler(i64 %16, i32 %17)
  %19 = load i32, i32* @CURL_GLOBAL_DEFAULT, align 4
  %20 = call i32 @curl_global_init(i32 %19)
  %21 = call i32* (...) @curl_easy_init()
  store i32* %21, i32** %2, align 8
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @CURLOPT_URL, align 4
  %24 = call i32 @curl_easy_setopt(i32* %22, i32 %23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* @CURLOPT_WRITEFUNCTION, align 4
  %27 = load i8*, i8** @parseStreamCallback, align 8
  %28 = call i32 @curl_easy_setopt(i32* %25, i32 %26, i8* %27)
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %31 = load i64, i64* %4, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @curl_easy_setopt(i32* %29, i32 %30, i8* %32)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32*, i32** %2, align 8
  %36 = call i64 @curl_easy_perform(i32* %35)
  store i64 %36, i64* %3, align 8
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* @CURLE_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %0
  %41 = load i32, i32* @stderr, align 4
  %42 = load i64, i64* %3, align 8
  %43 = call i8* @curl_easy_strerror(i64 %42)
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  br label %68

45:                                               ; preds = %0
  %46 = getelementptr inbounds %struct.ParserStruct, %struct.ParserStruct* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %45
  %50 = load i64, i64* %4, align 8
  %51 = call i64 @XML_Parse(i64 %50, i32* null, i32 0, i32 1)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @XML_GetErrorCode(i64 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @stderr, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i8* @XML_ErrorString(i32 %58)
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %57, i8* %59)
  br label %66

61:                                               ; preds = %49
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %63 = getelementptr inbounds %struct.ParserStruct, %struct.ParserStruct* %5, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %61, %53
  br label %67

67:                                               ; preds = %66, %45
  br label %68

68:                                               ; preds = %67, %40
  %69 = getelementptr inbounds %struct.ParserStruct, %struct.ParserStruct* %5, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @free(i32 %71)
  %73 = load i64, i64* %4, align 8
  %74 = call i32 @XML_ParserFree(i64 %73)
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @curl_easy_cleanup(i32* %75)
  %77 = call i32 (...) @curl_global_cleanup()
  ret i32 0
}

declare dso_local i32 @memset(%struct.ParserStruct*, i32, i32) #1

declare dso_local i64 @XML_ParserCreateNS(i32*, i8 signext) #1

declare dso_local i32 @XML_SetUserData(i64, %struct.ParserStruct*) #1

declare dso_local i32 @XML_SetElementHandler(i64, i32, i32) #1

declare dso_local i32 @XML_SetCharacterDataHandler(i64, i32) #1

declare dso_local i32 @curl_global_init(i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @curl_easy_strerror(i64) #1

declare dso_local i64 @XML_Parse(i64, i32*, i32, i32) #1

declare dso_local i32 @XML_GetErrorCode(i64) #1

declare dso_local i8* @XML_ErrorString(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @XML_ParserFree(i64) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
