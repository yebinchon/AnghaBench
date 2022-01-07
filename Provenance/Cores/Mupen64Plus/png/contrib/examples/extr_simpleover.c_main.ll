; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/examples/extr_simpleover.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/examples/extr_simpleover.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i8*, i32, i32*, i32 }

@PNG_IMAGE_VERSION = common dso_local global i32 0, align 4
@PNG_FORMAT_RGB = common dso_local global i32 0, align 4
@__const.main.background = private unnamed_addr constant %struct.TYPE_12__ { i32 0, i32 255, i32 0 }, align 4
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"simpleover: write %s: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"simpleover: read %s: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"simpleover: out of memory: %lu bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"simpleover: %s: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [1023 x i8] c"simpleover: usage: simpleover background.png [output.png]\0A  Output 'background.png' as a 24-bit RGB PNG file in 'output.png'\0A   or, if not given, stdout.  'background.png' will be composited\0A   on fully saturated green.\0A\0A  Optionally, before output, process additional PNG files:\0A\0A   --sprite=width,height,name {[--at=x,y] {sprite.png}}\0A    Produce a transparent sprite of size (width,height) and with\0A     name 'name'.\0A    For each sprite.png composite it using a Porter-Duff 'Over'\0A     operation at offset (x,y) in the sprite (defaulting to (0,0)).\0A     Input PNGs will be truncated to the area of the sprite.\0A\0A   --add='name' {x,y}\0A    Optionally, before output, composite a sprite, 'name', which\0A     must have been previously produced using --sprite, at each\0A     offset (x,y) in the output image.  Each sprite must fit\0A     completely within the output image.\0A\0A  PNG files are processed in the order they occur on the command\0A  line and thus the first PNG processed appears as the bottommost\0A  in the output image.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 2
  br i1 %13, label %14, label %118

14:                                               ; preds = %2
  store i32 2, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 2
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 2
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 45
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 2
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %8, align 8
  store i32 3, i32* %7, align 4
  br label %29

29:                                               ; preds = %25, %17, %14
  %30 = load i32, i32* @PNG_IMAGE_VERSION, align 4
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 3
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @png_image_begin_read_from_file(%struct.TYPE_11__* %9, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %109

38:                                               ; preds = %29
  %39 = load i32, i32* @PNG_FORMAT_RGB, align 4
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  store i32 %39, i32* %40, align 8
  %41 = call i64 @PNG_IMAGE_SIZE(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %9)
  %42 = call i32* @malloc(i64 %41)
  store i32* %42, i32** %10, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %103

45:                                               ; preds = %38
  %46 = bitcast %struct.TYPE_12__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 bitcast (%struct.TYPE_12__* @__const.main.background to i8*), i64 12, i1 false)
  %47 = load i32*, i32** %10, align 8
  %48 = call i64 @png_image_finish_read(%struct.TYPE_11__* %9, %struct.TYPE_12__* %11, i32* %47, i32 0, i32* null)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %92

50:                                               ; preds = %45
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load i8**, i8*** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = call i64 @simpleover_process(%struct.TYPE_11__* %9, i32* %51, i32 %54, i8** %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %91

61:                                               ; preds = %50
  %62 = load i8*, i8** %8, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i8*, i8** %8, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = call i64 @png_image_write_to_file(%struct.TYPE_11__* %9, i8* %65, i32 0, i32* %66, i32 0, i32* null)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %64, %61
  %70 = load i8*, i8** %8, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* @stdout, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = call i64 @png_image_write_to_stdio(%struct.TYPE_11__* %9, i32 %73, i32 0, i32* %74, i32 0, i32* null)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72, %64
  store i32 0, i32* %6, align 4
  br label %90

78:                                               ; preds = %72, %69
  %79 = load i32, i32* @stderr, align 4
  %80 = load i8*, i8** %8, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %85

83:                                               ; preds = %78
  %84 = load i8*, i8** %8, align 8
  br label %85

85:                                               ; preds = %83, %82
  %86 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %82 ], [ %84, %83 ]
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %86, i8* %88)
  br label %90

90:                                               ; preds = %85, %77
  br label %91

91:                                               ; preds = %90, %50
  br label %100

92:                                               ; preds = %45
  %93 = load i32, i32* @stderr, align 4
  %94 = load i8**, i8*** %5, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 1
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %96, i8* %98)
  br label %100

100:                                              ; preds = %92, %91
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @free(i32* %101)
  br label %108

103:                                              ; preds = %38
  %104 = load i32, i32* @stderr, align 4
  %105 = call i64 @PNG_IMAGE_SIZE(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %9)
  %106 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %105)
  %107 = call i32 @png_image_free(%struct.TYPE_11__* %9)
  br label %108

108:                                              ; preds = %103, %100
  br label %117

109:                                              ; preds = %29
  %110 = load i32, i32* @stderr, align 4
  %111 = load i8**, i8*** %5, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 1
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* %113, i8* %115)
  br label %117

117:                                              ; preds = %109, %108
  br label %121

118:                                              ; preds = %2
  %119 = load i32, i32* @stderr, align 4
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([1023 x i8], [1023 x i8]* @.str.5, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %117
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i64 @png_image_begin_read_from_file(%struct.TYPE_11__*, i8*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i64 @PNG_IMAGE_SIZE(%struct.TYPE_11__* byval(%struct.TYPE_11__) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @png_image_finish_read(%struct.TYPE_11__*, %struct.TYPE_12__*, i32*, i32, i32*) #1

declare dso_local i64 @simpleover_process(%struct.TYPE_11__*, i32*, i32, i8**) #1

declare dso_local i64 @png_image_write_to_file(%struct.TYPE_11__*, i8*, i32, i32*, i32, i32*) #1

declare dso_local i64 @png_image_write_to_stdio(%struct.TYPE_11__*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @png_image_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
