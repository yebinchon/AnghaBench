; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_formparse.c_tool2curlparts.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_formparse.c_tool2curlparts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i8*, i32, i32, i32, i32, i32, %struct.TYPE_5__* }

@CURLE_OK = common dso_local global i64 0, align 8
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@CURL_ZERO_TERMINATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@tool_mime_stdin_read = common dso_local global i32 0, align 4
@tool_mime_stdin_seek = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_5__*, i32*)* @tool2curlparts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tool2curlparts(i32* %0, %struct.TYPE_5__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i64, i64* @CURLE_OK, align 8
  store i64 %11, i64* %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i8* null, i8** %10, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %148

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @tool2curlparts(i32* %15, %struct.TYPE_5__* %18, i32* %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %14
  %24 = load i32*, i32** %6, align 8
  %25 = call i32* @curl_mime_addpart(i32* %24)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %29, i64* %7, align 8
  br label %30

30:                                               ; preds = %28, %23
  br label %31

31:                                               ; preds = %30, %14
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %101, label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %10, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %99 [
    i32 130, label %41
    i32 133, label %58
    i32 132, label %65
    i32 131, label %65
    i32 129, label %85
    i32 128, label %90
  ]

41:                                               ; preds = %34
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = call i64 @tool2curlmime(i32* %42, %struct.TYPE_5__* %43, i32** %9)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %41
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i64 @curl_mime_subparts(i32* %48, i32* %49)
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @curl_mime_free(i32* %54)
  br label %56

56:                                               ; preds = %53, %47
  br label %57

57:                                               ; preds = %56, %41
  br label %100

58:                                               ; preds = %34
  %59 = load i32*, i32** %8, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* @CURL_ZERO_TERMINATED, align 4
  %64 = call i64 @curl_mime_data(i32* %59, i8* %62, i32 %63)
  store i64 %64, i64* %7, align 8
  br label %100

65:                                               ; preds = %34, %34
  %66 = load i32*, i32** %8, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @curl_mime_filedata(i32* %66, i8* %69)
  store i64 %70, i64* %7, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %65
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 131
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i8*, i8** %10, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32*, i32** %8, align 8
  %83 = call i64 @curl_mime_filename(i32* %82, i8* null)
  store i64 %83, i64* %7, align 8
  br label %84

84:                                               ; preds = %81, %78, %73, %65
  br label %100

85:                                               ; preds = %34
  %86 = load i8*, i8** %10, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %89

89:                                               ; preds = %88, %85
  br label %90

90:                                               ; preds = %34, %89
  %91 = load i32*, i32** %8, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @tool_mime_stdin_read, align 4
  %96 = load i32, i32* @tool_mime_stdin_seek, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %98 = call i64 @curl_mime_data_cb(i32* %91, i32 %94, i32 %95, i32 %96, i32* null, %struct.TYPE_5__* %97)
  store i64 %98, i64* %7, align 8
  br label %100

99:                                               ; preds = %34
  br label %100

100:                                              ; preds = %99, %90, %84, %58, %57
  br label %101

101:                                              ; preds = %100, %31
  %102 = load i64, i64* %7, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %101
  %105 = load i8*, i8** %10, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i32*, i32** %8, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = call i64 @curl_mime_filename(i32* %108, i8* %109)
  store i64 %110, i64* %7, align 8
  br label %111

111:                                              ; preds = %107, %104, %101
  %112 = load i64, i64* %7, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %111
  %115 = load i32*, i32** %8, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @curl_mime_type(i32* %115, i32 %118)
  store i64 %119, i64* %7, align 8
  br label %120

120:                                              ; preds = %114, %111
  %121 = load i64, i64* %7, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %120
  %124 = load i32*, i32** %8, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @curl_mime_headers(i32* %124, i32 %127, i32 0)
  store i64 %128, i64* %7, align 8
  br label %129

129:                                              ; preds = %123, %120
  %130 = load i64, i64* %7, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %129
  %133 = load i32*, i32** %8, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @curl_mime_encoder(i32* %133, i32 %136)
  store i64 %137, i64* %7, align 8
  br label %138

138:                                              ; preds = %132, %129
  %139 = load i64, i64* %7, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %138
  %142 = load i32*, i32** %8, align 8
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = call i64 @curl_mime_name(i32* %142, i32 %145)
  store i64 %146, i64* %7, align 8
  br label %147

147:                                              ; preds = %141, %138
  br label %148

148:                                              ; preds = %147, %3
  %149 = load i64, i64* %7, align 8
  ret i64 %149
}

declare dso_local i32* @curl_mime_addpart(i32*) #1

declare dso_local i64 @tool2curlmime(i32*, %struct.TYPE_5__*, i32**) #1

declare dso_local i64 @curl_mime_subparts(i32*, i32*) #1

declare dso_local i32 @curl_mime_free(i32*) #1

declare dso_local i64 @curl_mime_data(i32*, i8*, i32) #1

declare dso_local i64 @curl_mime_filedata(i32*, i8*) #1

declare dso_local i64 @curl_mime_filename(i32*, i8*) #1

declare dso_local i64 @curl_mime_data_cb(i32*, i32, i32, i32, i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @curl_mime_type(i32*, i32) #1

declare dso_local i64 @curl_mime_headers(i32*, i32, i32) #1

declare dso_local i64 @curl_mime_encoder(i32*, i32) #1

declare dso_local i64 @curl_mime_name(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
