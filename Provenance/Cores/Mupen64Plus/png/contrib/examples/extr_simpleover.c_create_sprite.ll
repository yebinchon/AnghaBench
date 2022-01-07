; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/examples/extr_simpleover.c_create_sprite.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/examples/extr_simpleover.c_create_sprite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprite = type { i8*, i32*, i32*, i32, i32 }
%struct.TYPE_9__ = type { i8*, i64, i32, i8*, i32, i32, i32*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"--at=%d,%d%c\00", align 1
@PNG_IMAGE_VERSION = common dso_local global i8* null, align 8
@PNG_FORMAT_LINEAR_RGB_ALPHA = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"simpleover: read %s: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"simpleover: out of memory: %lu bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"simpleover: %s: %s\0A\00", align 1
@PNG_IMAGE_FLAG_FAST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"simpleover: write sprite %s: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"simpleover: sprite %s: could not allocate tmpfile: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sprite*, i32*, i8***)* @create_sprite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_sprite(%struct.sprite* %0, i32* %1, i8*** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sprite*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8***, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_9__, align 8
  store %struct.sprite* %0, %struct.sprite** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8*** %2, i8**** %7, align 8
  br label %14

14:                                               ; preds = %114, %72, %3
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %115

18:                                               ; preds = %14
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load i8***, i8**** %7, align 8
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 45
  br i1 %26, label %27, label %51

27:                                               ; preds = %18
  %28 = load i8***, i8**** %7, align 8
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 45
  br i1 %35, label %36, label %51

36:                                               ; preds = %27
  %37 = load i8***, i8**** %7, align 8
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @sscanf(i8* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %9, i32* %10, i8* %8)
  %42 = icmp ne i32 %41, 2
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %115

44:                                               ; preds = %36
  %45 = load i8***, i8**** %7, align 8
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i32 1
  store i8** %47, i8*** %45, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 4
  br label %114

51:                                               ; preds = %27, %18
  %52 = load i8*, i8** @PNG_IMAGE_VERSION, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 7
  store i8* %52, i8** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 6
  store i32* null, i32** %54, align 8
  %55 = load i8***, i8**** %7, align 8
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @png_image_begin_read_from_file(%struct.TYPE_9__* %11, i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %104

61:                                               ; preds = %51
  %62 = load i8*, i8** @PNG_FORMAT_LINEAR_RGB_ALPHA, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  store i8* %62, i8** %63, align 8
  %64 = call i64 @PNG_IMAGE_SIZE(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %11)
  %65 = call i32* @malloc(i64 %64)
  store i32* %65, i32** %12, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %98

68:                                               ; preds = %61
  %69 = load i32*, i32** %12, align 8
  %70 = call i64 @png_image_finish_read(%struct.TYPE_9__* %11, i32* null, i32* %69, i32 0, i32* null)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %68
  %73 = load %struct.sprite*, %struct.sprite** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32*, i32** %12, align 8
  %77 = call i32 @sprite_op(%struct.sprite* %73, i32 %74, i32 %75, %struct.TYPE_9__* %11, i32* %76)
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @free(i32* %78)
  %80 = load i8***, i8**** %7, align 8
  %81 = load i8**, i8*** %80, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i32 1
  store i8** %82, i8*** %80, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %83, align 4
  br label %14

86:                                               ; preds = %68
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @free(i32* %87)
  %89 = load i32, i32* @stderr, align 4
  %90 = load i8***, i8**** %7, align 8
  %91 = load i8**, i8*** %90, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %93, i8* %95)
  br label %97

97:                                               ; preds = %86
  br label %103

98:                                               ; preds = %61
  %99 = load i32, i32* @stderr, align 4
  %100 = call i64 @PNG_IMAGE_SIZE(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %11)
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %100)
  %102 = call i32 @png_image_free(%struct.TYPE_9__* %11)
  br label %103

103:                                              ; preds = %98, %97
  br label %113

104:                                              ; preds = %51
  %105 = load i32, i32* @stderr, align 4
  %106 = load i8***, i8**** %7, align 8
  %107 = load i8**, i8*** %106, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 (i32, i8*, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %109, i8* %111)
  br label %113

113:                                              ; preds = %104, %103
  store i32 0, i32* %4, align 4
  br label %174

114:                                              ; preds = %44
  br label %14

115:                                              ; preds = %43, %14
  %116 = call i32* (...) @tmpfile()
  %117 = load %struct.sprite*, %struct.sprite** %5, align 8
  %118 = getelementptr inbounds %struct.sprite, %struct.sprite* %117, i32 0, i32 2
  store i32* %116, i32** %118, align 8
  %119 = load %struct.sprite*, %struct.sprite** %5, align 8
  %120 = getelementptr inbounds %struct.sprite, %struct.sprite* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %165

123:                                              ; preds = %115
  %124 = call i32 @memset(%struct.TYPE_9__* %13, i32 0, i32 56)
  %125 = load i8*, i8** @PNG_IMAGE_VERSION, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 7
  store i8* %125, i8** %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 6
  store i32* null, i32** %127, align 8
  %128 = load %struct.sprite*, %struct.sprite** %5, align 8
  %129 = getelementptr inbounds %struct.sprite, %struct.sprite* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 5
  store i32 %130, i32* %131, align 4
  %132 = load %struct.sprite*, %struct.sprite** %5, align 8
  %133 = getelementptr inbounds %struct.sprite, %struct.sprite* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 4
  store i32 %134, i32* %135, align 8
  %136 = load i8*, i8** @PNG_FORMAT_LINEAR_RGB_ALPHA, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 3
  store i8* %136, i8** %137, align 8
  %138 = load i32, i32* @PNG_IMAGE_FLAG_FAST, align 4
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  store i32 %138, i32* %139, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  store i64 0, i64* %140, align 8
  %141 = load %struct.sprite*, %struct.sprite** %5, align 8
  %142 = getelementptr inbounds %struct.sprite, %struct.sprite* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.sprite*, %struct.sprite** %5, align 8
  %145 = getelementptr inbounds %struct.sprite, %struct.sprite* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = call i64 @png_image_write_to_stdio(%struct.TYPE_9__* %13, i32* %143, i32 1, i32* %146, i32 0, i32* null)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %123
  %150 = load %struct.sprite*, %struct.sprite** %5, align 8
  %151 = getelementptr inbounds %struct.sprite, %struct.sprite* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @free(i32* %152)
  %154 = load %struct.sprite*, %struct.sprite** %5, align 8
  %155 = getelementptr inbounds %struct.sprite, %struct.sprite* %154, i32 0, i32 1
  store i32* null, i32** %155, align 8
  store i32 1, i32* %4, align 4
  br label %174

156:                                              ; preds = %123
  %157 = load i32, i32* @stderr, align 4
  %158 = load %struct.sprite*, %struct.sprite** %5, align 8
  %159 = getelementptr inbounds %struct.sprite, %struct.sprite* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 (i32, i8*, ...) @fprintf(i32 %157, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %160, i8* %162)
  br label %164

164:                                              ; preds = %156
  br label %173

165:                                              ; preds = %115
  %166 = load i32, i32* @stderr, align 4
  %167 = load %struct.sprite*, %struct.sprite** %5, align 8
  %168 = getelementptr inbounds %struct.sprite, %struct.sprite* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = load i32, i32* @errno, align 4
  %171 = call i8* @strerror(i32 %170)
  %172 = call i32 (i32, i8*, ...) @fprintf(i32 %166, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i8* %169, i8* %171)
  br label %173

173:                                              ; preds = %165, %164
  store i32 0, i32* %4, align 4
  br label %174

174:                                              ; preds = %173, %149, %113
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i8*) #1

declare dso_local i64 @png_image_begin_read_from_file(%struct.TYPE_9__*, i8*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i64 @PNG_IMAGE_SIZE(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8) #1

declare dso_local i64 @png_image_finish_read(%struct.TYPE_9__*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @sprite_op(%struct.sprite*, i32, i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @png_image_free(%struct.TYPE_9__*) #1

declare dso_local i32* @tmpfile(...) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @png_image_write_to_stdio(%struct.TYPE_9__*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
