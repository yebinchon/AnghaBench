; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_mime.c_curl_mime_filedata.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_mime.c_curl_mime_filedata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@CURLE_BAD_FUNCTION_ARGUMENT = common dso_local global i64 0, align 8
@R_OK = common dso_local global i32 0, align 4
@CURLE_READ_ERROR = common dso_local global i64 0, align 8
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@mime_file_seek = common dso_local global i32 0, align 4
@mime_file_read = common dso_local global i32 0, align 4
@mime_file_free = common dso_local global i32 0, align 4
@MIMEKIND_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @curl_mime_filedata(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i64, i64* @CURLE_OK, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* @CURLE_BAD_FUNCTION_ARGUMENT, align 8
  store i64 %14, i64* %3, align 8
  br label %92

15:                                               ; preds = %2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = call i32 @cleanup_part_content(%struct.TYPE_9__* %16)
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %90

20:                                               ; preds = %15
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @stat(i8* %21, %struct.TYPE_8__* %8)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* @R_OK, align 4
  %27 = call i64 @access(i8* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24, %20
  %30 = load i64, i64* @CURLE_READ_ERROR, align 8
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @strdup(i8* %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %31
  %41 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %40, %31
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 4
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @S_ISREG(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @filesize(i8* %53, i32 %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @mime_file_seek, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %52, %47, %42
  %63 = load i32, i32* @mime_file_read, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @mime_file_free, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @MIMEKIND_FILE, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i8*, i8** %5, align 8
  %73 = call i8* @strippath(i8* %72)
  store i8* %73, i8** %7, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %62
  %77 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %77, i64* %6, align 8
  br label %89

78:                                               ; preds = %62
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = call i64 @curl_mime_filename(%struct.TYPE_9__* %79, i8* %80)
  store i64 %81, i64* %9, align 8
  %82 = load i64, i64* %9, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i64, i64* %9, align 8
  store i64 %85, i64* %6, align 8
  br label %86

86:                                               ; preds = %84, %78
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @free(i8* %87)
  br label %89

89:                                               ; preds = %86, %76
  br label %90

90:                                               ; preds = %89, %15
  %91 = load i64, i64* %6, align 8
  store i64 %91, i64* %3, align 8
  br label %92

92:                                               ; preds = %90, %13
  %93 = load i64, i64* %3, align 8
  ret i64 %93
}

declare dso_local i32 @cleanup_part_content(%struct.TYPE_9__*) #1

declare dso_local i64 @stat(i8*, %struct.TYPE_8__*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @filesize(i8*, i32) #1

declare dso_local i8* @strippath(i8*) #1

declare dso_local i64 @curl_mime_filename(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
