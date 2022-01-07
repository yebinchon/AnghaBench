; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_ps.c_decode_profile_tier_level.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_ps.c_decode_profile_tier_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i8*, i8*, i8**, i8*, i8* }

@FF_PROFILE_HEVC_MAIN = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Main profile bitstream\0A\00", align 1
@FF_PROFILE_HEVC_MAIN_10 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Main 10 profile bitstream\0A\00", align 1
@FF_PROFILE_HEVC_MAIN_STILL_PICTURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Main Still Picture profile bitstream\0A\00", align 1
@FF_PROFILE_HEVC_REXT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Range Extension profile bitstream\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Unknown HEVC profile: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_3__*)* @decode_profile_tier_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_profile_tier_level(i32* %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @get_bits_left(i32* %9)
  %11 = icmp slt i32 %10, 88
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %136

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i8* @get_bits(i32* %14, i32 2)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 7
  store i8* %15, i8** %17, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i8* @get_bits1(i32* %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 6
  store i8* %19, i8** %21, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i8* @get_bits(i32* %22, i32 5)
  %24 = ptrtoint i8* %23 to i32
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @FF_PROFILE_HEVC_MAIN, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %13
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @AV_LOG_DEBUG, align 4
  %35 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %33, i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %76

36:                                               ; preds = %13
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @FF_PROFILE_HEVC_MAIN_10, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @AV_LOG_DEBUG, align 4
  %45 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %43, i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %75

46:                                               ; preds = %36
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @FF_PROFILE_HEVC_MAIN_STILL_PICTURE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* @AV_LOG_DEBUG, align 4
  %55 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %53, i32 %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %74

56:                                               ; preds = %46
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @FF_PROFILE_HEVC_REXT, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* @AV_LOG_DEBUG, align 4
  %65 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %63, i32 %64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %73

66:                                               ; preds = %56
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* @AV_LOG_WARNING, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %67, i32 %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %66, %62
  br label %74

74:                                               ; preds = %73, %52
  br label %75

75:                                               ; preds = %74, %42
  br label %76

76:                                               ; preds = %75, %32
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %110, %76
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 32
  br i1 %79, label %80, label %113

80:                                               ; preds = %77
  %81 = load i32*, i32** %5, align 8
  %82 = call i8* @get_bits1(i32* %81)
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 5
  %85 = load i8**, i8*** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  store i8* %82, i8** %88, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %80
  %94 = load i32, i32* %8, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %93
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 5
  %99 = load i8**, i8*** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %105, %96, %93, %80
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %77

113:                                              ; preds = %77
  %114 = load i32*, i32** %5, align 8
  %115 = call i8* @get_bits1(i32* %114)
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 4
  store i8* %115, i8** %117, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = call i8* @get_bits1(i32* %118)
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 3
  store i8* %119, i8** %121, align 8
  %122 = load i32*, i32** %5, align 8
  %123 = call i8* @get_bits1(i32* %122)
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 8
  %126 = load i32*, i32** %5, align 8
  %127 = call i8* @get_bits1(i32* %126)
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @skip_bits(i32* %130, i32 16)
  %132 = load i32*, i32** %5, align 8
  %133 = call i32 @skip_bits(i32* %132, i32 16)
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @skip_bits(i32* %134, i32 12)
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %113, %12
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i8* @get_bits1(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
