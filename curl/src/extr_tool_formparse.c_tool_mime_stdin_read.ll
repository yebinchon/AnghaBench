; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_formparse.c_tool_mime_stdin_read.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_formparse.c_tool_mime_stdin_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32*, i64 }

@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"stdin: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@CURL_READFUNC_ABORT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tool_mime_stdin_read(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i64 0, i64* %5, align 8
  br label %98

28:                                               ; preds = %19
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @curlx_uztoso(i64 %36)
  %38 = load i64, i64* %11, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load i64, i64* %11, align 8
  %42 = call i64 @curlx_sotouz(i64 %41)
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %40, %28
  br label %44

44:                                               ; preds = %43, %4
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %96

47:                                               ; preds = %44
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = load i8*, i8** %6, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @curlx_sotouz(i64 %59)
  %61 = add i64 %56, %60
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @memcpy(i8* %53, i64 %61, i64 %62)
  br label %89

64:                                               ; preds = %47
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i32, i32* @stdin, align 4
  %68 = call i64 @fread(i8* %65, i32 1, i64 %66, i32 %67)
  store i64 %68, i64* %8, align 8
  %69 = load i32, i32* @stdin, align 4
  %70 = call i64 @ferror(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %64
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* @errno, align 4
  %82 = call i32 @strerror(i32 %81)
  %83 = call i32 @warnf(i32* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %77, %72
  %87 = load i64, i64* @CURL_READFUNC_ABORT, align 8
  store i64 %87, i64* %5, align 8
  br label %98

88:                                               ; preds = %64
  br label %89

89:                                               ; preds = %88, %52
  %90 = load i64, i64* %8, align 8
  %91 = call i64 @curlx_uztoso(i64 %90)
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, %91
  store i64 %95, i64* %93, align 8
  br label %96

96:                                               ; preds = %89, %44
  %97 = load i64, i64* %8, align 8
  store i64 %97, i64* %5, align 8
  br label %98

98:                                               ; preds = %96, %86, %27
  %99 = load i64, i64* %5, align 8
  ret i64 %99
}

declare dso_local i64 @curlx_uztoso(i64) #1

declare dso_local i64 @curlx_sotouz(i64) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i32 @warnf(i32*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
