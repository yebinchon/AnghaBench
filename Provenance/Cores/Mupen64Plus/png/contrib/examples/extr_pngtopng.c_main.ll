; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/examples/extr_pngtopng.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/examples/extr_pngtopng.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i32 }

@PNG_IMAGE_VERSION = common dso_local global i32 0, align 4
@PNG_FORMAT_RGBA = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"pngtopng: write %s: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"pngtopng: read %s: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"pngtopng: out of memory: %lu bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"pngtopng: %s: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"pngtopng: usage: pngtopng input-file output-file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %84

11:                                               ; preds = %2
  %12 = call i32 @memset(%struct.TYPE_8__* %7, i32 0, i32 16)
  %13 = load i32, i32* @PNG_IMAGE_VERSION, align 4
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @png_image_begin_read_from_file(%struct.TYPE_8__* %7, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %75

20:                                               ; preds = %11
  %21 = load i32, i32* @PNG_FORMAT_RGBA, align 4
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = bitcast %struct.TYPE_8__* %7 to { i8*, i64 }*
  %24 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %23, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @PNG_IMAGE_SIZE(i8* %25, i64 %27)
  %29 = call i32* @malloc(i64 %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %65

32:                                               ; preds = %20
  %33 = load i32*, i32** %8, align 8
  %34 = call i64 @png_image_finish_read(%struct.TYPE_8__* %7, i32* null, i32* %33, i32 0, i32* null)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 2
  %39 = load i8*, i8** %38, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i64 @png_image_write_to_file(%struct.TYPE_8__* %7, i8* %39, i32 0, i32* %40, i32 0, i32* null)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %52

44:                                               ; preds = %36
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 2
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %48, i8* %50)
  br label %52

52:                                               ; preds = %44, %43
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @free(i32* %53)
  br label %64

55:                                               ; preds = %32
  %56 = load i32, i32* @stderr, align 4
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 1
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %59, i8* %61)
  %63 = call i32 @png_image_free(%struct.TYPE_8__* %7)
  br label %64

64:                                               ; preds = %55, %52
  br label %74

65:                                               ; preds = %20
  %66 = load i32, i32* @stderr, align 4
  %67 = bitcast %struct.TYPE_8__* %7 to { i8*, i64 }*
  %68 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %67, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @PNG_IMAGE_SIZE(i8* %69, i64 %71)
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %72)
  br label %74

74:                                               ; preds = %65, %64
  br label %83

75:                                               ; preds = %11
  %76 = load i32, i32* @stderr, align 4
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 1
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %79, i8* %81)
  br label %83

83:                                               ; preds = %75, %74
  br label %87

84:                                               ; preds = %2
  %85 = load i32, i32* @stderr, align 4
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %83
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @png_image_begin_read_from_file(%struct.TYPE_8__*, i8*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i64 @PNG_IMAGE_SIZE(i8*, i64) #1

declare dso_local i64 @png_image_finish_read(%struct.TYPE_8__*, i32*, i32*, i32, i32*) #1

declare dso_local i64 @png_image_write_to_file(%struct.TYPE_8__*, i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @png_image_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
