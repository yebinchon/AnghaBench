; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/unzip/extr_unzip.c_inflate_file.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/unzip/extr_unzip.c_inflate_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i8*, i32, i64, i64, i64 }

@MAX_WBITS = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"inflateInit error: %d\0A\00", align 1
@INFLATE_INPUT_BUFFER_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"inflate error: compressed size too small\0A\00", align 1
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"inflate error: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"inflateEnd error: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"zip size mismatch. %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32)* @inflate_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inflate_file(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 6
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i8* null, i8** %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i32 0, i32* %17, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* %9, align 4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* @MAX_WBITS, align 4
  %23 = sub nsw i32 0, %22
  %24 = call i32 @inflateInit2(%struct.TYPE_5__* %12, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @Z_OK, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i8*, ...) @logerror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 -1, i32* %5, align 4
  br label %107

31:                                               ; preds = %4
  %32 = load i64, i64* @INFLATE_INPUT_BUFFER_MAX, align 8
  %33 = add nsw i64 %32, 1
  %34 = call i64 @malloc(i64 %33)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  store i32 -1, i32* %5, align 4
  br label %107

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %83, %39
  %41 = load i32, i32* %7, align 4
  %42 = icmp ule i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = call i32 (i8*, ...) @logerror(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @free(i8* %45)
  store i32 -1, i32* %5, align 4
  br label %107

47:                                               ; preds = %40
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i8* %48, i8** %49, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i64, i64* @INFLATE_INPUT_BUFFER_MAX, align 8
  %53 = call i32 @MIN(i32 %51, i64 %52)
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @fread(i8* %50, i32 1, i32 %53, i32* %54)
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i32 %55, i32* %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sub i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %47
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = add i32 %65, 1
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %63, %47
  %68 = load i32, i32* @Z_NO_FLUSH, align 4
  %69 = call i32 @inflate(%struct.TYPE_5__* %12, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @Z_STREAM_END, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %84

74:                                               ; preds = %67
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @Z_OK, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i32, i32* %10, align 4
  %80 = call i32 (i8*, ...) @logerror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load i8*, i8** %11, align 8
  %82 = call i32 @free(i8* %81)
  store i32 -1, i32* %5, align 4
  br label %107

83:                                               ; preds = %74
  br label %40

84:                                               ; preds = %73
  %85 = call i32 @inflateEnd(%struct.TYPE_5__* %12)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @Z_OK, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i32, i32* %10, align 4
  %91 = call i32 (i8*, ...) @logerror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load i8*, i8** %11, align 8
  %93 = call i32 @free(i8* %92)
  store i32 -1, i32* %5, align 4
  br label %107

94:                                               ; preds = %84
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 @free(i8* %95)
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = icmp ugt i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %94
  %101 = load i32, i32* %7, align 4
  %102 = icmp ugt i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100, %94
  %104 = load i32, i32* %7, align 4
  %105 = call i32 (i8*, ...) @logerror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  store i32 -1, i32* %5, align 4
  br label %107

106:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %106, %103, %89, %78, %43, %38, %28
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @inflateInit2(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @logerror(i8*, ...) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @inflate(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @inflateEnd(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
