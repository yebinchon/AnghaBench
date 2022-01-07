; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_senc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_senc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32** }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Ignoring duplicate encryption info in senc\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Hit EOF while reading senc\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_15__*, i32)* @mov_read_senc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_senc(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %15, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = call i32 @get_current_encryption_info(%struct.TYPE_14__* %17, %struct.TYPE_13__** %9, i32** %10)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %4, align 4
  br label %135

23:                                               ; preds = %3
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AV_LOG_DEBUG, align 4
  %33 = call i32 @av_log(i32 %31, i32 %32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %135

34:                                               ; preds = %23
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %36 = call i32 @avio_r8(%struct.TYPE_15__* %35)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %38 = call i32 @avio_rb24(%struct.TYPE_15__* %37)
  %39 = and i32 %38, 2
  store i32 %39, i32* %11, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = call i32 @avio_rb32(%struct.TYPE_15__* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = zext i32 %42 to i64
  %44 = load i32, i32* @INT_MAX, align 4
  %45 = sext i32 %44 to i64
  %46 = udiv i64 %45, 8
  %47 = icmp uge i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = call i32 @AVERROR(i32 %49)
  store i32 %50, i32* %4, align 4
  br label %135

51:                                               ; preds = %34
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %128, %51
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %131

56:                                               ; preds = %52
  %57 = load i32, i32* %14, align 4
  %58 = add i32 %57, 1
  %59 = call i32 @FFMAX(i32 %58, i32 1048576)
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @FFMIN(i32 %59, i32 %60)
  store i32 %61, i32* %16, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %16, align 4
  %66 = zext i32 %65 to i64
  %67 = mul i64 %66, 8
  %68 = trunc i64 %67 to i32
  %69 = call i32** @av_fast_realloc(i32** %64, i32* %15, i32 %68)
  store i32** %69, i32*** %8, align 8
  %70 = load i32**, i32*** %8, align 8
  %71 = icmp ne i32** %70, null
  br i1 %71, label %72, label %87

72:                                               ; preds = %56
  %73 = load i32**, i32*** %8, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  store i32** %73, i32*** %75, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @mov_read_sample_encryption_info(%struct.TYPE_14__* %76, %struct.TYPE_15__* %77, i32* %78, i32** %84, i32 %85)
  store i32 %86, i32* %12, align 4
  br label %90

87:                                               ; preds = %56
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = call i32 @AVERROR(i32 %88)
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %87, %72
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @AV_LOG_ERROR, align 4
  %100 = call i32 @av_log(i32 %98, i32 %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %95, %90
  %103 = load i32, i32* %12, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %127

105:                                              ; preds = %102
  br label %106

106:                                              ; preds = %119, %105
  %107 = load i32, i32* %14, align 4
  %108 = icmp ugt i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %106
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  %112 = load i32**, i32*** %111, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sub i32 %113, 1
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %112, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @av_encryption_info_free(i32* %117)
  br label %119

119:                                              ; preds = %109
  %120 = load i32, i32* %14, align 4
  %121 = add i32 %120, -1
  store i32 %121, i32* %14, align 4
  br label %106

122:                                              ; preds = %106
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 1
  %125 = call i32 @av_freep(i32*** %124)
  %126 = load i32, i32* %12, align 4
  store i32 %126, i32* %4, align 4
  br label %135

127:                                              ; preds = %102
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %14, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %14, align 4
  br label %52

131:                                              ; preds = %52
  %132 = load i32, i32* %13, align 4
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %131, %122, %48, %28, %21
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @get_current_encryption_info(%struct.TYPE_14__*, %struct.TYPE_13__**, i32**) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @avio_r8(%struct.TYPE_15__*) #1

declare dso_local i32 @avio_rb24(%struct.TYPE_15__*) #1

declare dso_local i32 @avio_rb32(%struct.TYPE_15__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32** @av_fast_realloc(i32**, i32*, i32) #1

declare dso_local i32 @mov_read_sample_encryption_info(%struct.TYPE_14__*, %struct.TYPE_15__*, i32*, i32**, i32) #1

declare dso_local i32 @av_encryption_info_free(i32*) #1

declare dso_local i32 @av_freep(i32***) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
