; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_motion.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_motion.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32** }

@AV_CPU_FLAG_MMX = common dso_local global i32 0, align 4
@AV_CPU_FLAG_MMXEXT = common dso_local global i32 0, align 4
@HAVE_MMXEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"ffmpeg motion test\0A\00", align 1
@AV_CODEC_FLAG_BITEXACT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%s for %dx%d pixels\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mmx2\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"mmx\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"mmx_x2\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"mmx_y2\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"mmx_xy2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %14 = load i32, i32* @AV_CPU_FLAG_MMX, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  %16 = load i32, i32* @AV_CPU_FLAG_MMXEXT, align 4
  store i32 %16, i32* %15, align 4
  %17 = load i64, i64* @HAVE_MMXEXT, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 2, i32 1
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 (...) @help()
  store i32 1, i32* %3, align 4
  br label %145

25:                                               ; preds = %2
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %27 = call %struct.TYPE_9__* @avcodec_alloc_context3(i32* null)
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %6, align 8
  %28 = load i32, i32* @AV_CODEC_FLAG_BITEXACT, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = call i32 @av_force_cpu_flags(i32 0)
  %34 = call i32 @memset(%struct.TYPE_8__* %8, i32 0, i32 8)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = call i32 @ff_me_cmp_init(%struct.TYPE_8__* %8, %struct.TYPE_9__* %35)
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %139, %25
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %142

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @av_force_cpu_flags(i32 %45)
  %47 = call i32 @memset(%struct.TYPE_8__* %9, i32 0, i32 8)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = call i32 @ff_me_cmp_init(%struct.TYPE_8__* %9, %struct.TYPE_9__* %48)
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %135, %41
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %51, 2
  br i1 %52, label %53, label %138

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 8, i32 16
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 8, i32 16
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %57, i32 %61, i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @test_motion(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %74, i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %85 = load i32**, i32*** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %93 = load i32**, i32*** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @test_motion(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %91, i32 %99)
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %102 = load i32**, i32*** %101, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %110 = load i32**, i32*** %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %110, i64 %112
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @test_motion(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %108, i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %119 = load i32**, i32*** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %119, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 3
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %127 = load i32**, i32*** %126, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %127, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @test_motion(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %125, i32 %133)
  br label %135

135:                                              ; preds = %53
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4
  br label %50

138:                                              ; preds = %50
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  br label %37

142:                                              ; preds = %37
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %144 = call i32 @av_free(%struct.TYPE_9__* %143)
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %142, %23
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @help(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.TYPE_9__* @avcodec_alloc_context3(i32*) #1

declare dso_local i32 @av_force_cpu_flags(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @ff_me_cmp_init(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @test_motion(i8*, i32, i32) #1

declare dso_local i32 @av_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
