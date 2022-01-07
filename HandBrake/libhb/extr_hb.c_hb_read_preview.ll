; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_hb_read_preview.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_hb_read_preview.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%d_%d_%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"unknown -- strerror_r() failed\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"hb_read_preview: Failed to open %s (reason: %s)\00", align 1
@AV_PIX_FMT_YUV420P = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [90 x i8] c"hb_read_preview: Failed to read line %d from %s (reason: %s). Preview will be incomplete.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @hb_read_preview(i32* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [80 x i8], align 16
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @hb_get_instance_id(i32* %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i8* @hb_get_temporary_filename(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %23)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32* @hb_fopen(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %3
  %30 = load i32, i32* @errno, align 4
  %31 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %32 = call i64 @strerror_r(i32 %30, i8* %31, i32 79)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %36 = call i32 @strcpy(i8* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %40 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %38, i8* %39)
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @free(i8* %41)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %142

43:                                               ; preds = %3
  %44 = load i32, i32* @AV_PIX_FMT_YUV420P, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.TYPE_11__* @hb_frame_buffer_init(i32 %44, i32 %48, i32 %52)
  store %struct.TYPE_11__* %53, %struct.TYPE_11__** %11, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %55 = icmp ne %struct.TYPE_11__* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %43
  br label %136

57:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %132, %57
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 3
  br i1 %60, label %61, label %135

61:                                               ; preds = %58
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %14, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %15, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %16, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %94

94:                                               ; preds = %128, %61
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %17, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %131

98:                                               ; preds = %94
  %99 = load i32*, i32** %14, align 8
  %100 = load i32, i32* %16, align 4
  %101 = load i32*, i32** %8, align 8
  %102 = call i32 @fread(i32* %99, i32 %100, i32 1, i32* %101)
  %103 = load i32, i32* %16, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %98
  %106 = load i32*, i32** %8, align 8
  %107 = call i64 @ferror(i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = load i32, i32* @errno, align 4
  %111 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %112 = call i64 @strerror_r(i32 %110, i8* %111, i32 79)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %116 = call i32 @strcpy(i8* %115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %109
  %118 = load i32, i32* %13, align 4
  %119 = load i8*, i8** %9, align 8
  %120 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %121 = call i32 (i8*, ...) @hb_error(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.4, i64 0, i64 0), i32 %118, i8* %119, i8* %120)
  br label %136

122:                                              ; preds = %105
  br label %123

123:                                              ; preds = %122, %98
  %124 = load i32, i32* %15, align 4
  %125 = load i32*, i32** %14, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32* %127, i32** %14, align 8
  br label %128

128:                                              ; preds = %123
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %13, align 4
  br label %94

131:                                              ; preds = %94
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %12, align 4
  br label %58

135:                                              ; preds = %58
  br label %136

136:                                              ; preds = %135, %117, %56
  %137 = load i8*, i8** %9, align 8
  %138 = call i32 @free(i8* %137)
  %139 = load i32*, i32** %8, align 8
  %140 = call i32 @fclose(i32* %139)
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %141, %struct.TYPE_11__** %4, align 8
  br label %142

142:                                              ; preds = %136, %37
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  ret %struct.TYPE_11__* %143
}

declare dso_local i8* @hb_get_temporary_filename(i8*, i32, i32, i32) #1

declare dso_local i32 @hb_get_instance_id(i32*) #1

declare dso_local i32* @hb_fopen(i8*, i8*) #1

declare dso_local i64 @strerror_r(i32, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @hb_error(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_11__* @hb_frame_buffer_init(i32, i32, i32) #1

declare dso_local i32 @fread(i32*, i32, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
