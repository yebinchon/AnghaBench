; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp8_parser.c_parse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp8_parser.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid profile %u.\0A\00", align 1
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV420P = common dso_local global i32 0, align 4
@AV_FIELD_PROGRESSIVE = common dso_local global i32 0, align 4
@AV_PICTURE_STRUCTURE_FRAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid sync code %06x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_7__*, i32**, i32*, i32*, i32)* @parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i32** %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i32*, i32** %12, align 8
  %20 = load i32**, i32*** %10, align 8
  store i32* %19, i32** %20, align 8
  %21 = load i32, i32* %13, align 4
  %22 = load i32*, i32** %11, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 3
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %7, align 4
  br label %117

27:                                               ; preds = %6
  %28 = load i32*, i32** %12, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 1
  store i32 %31, i32* %14, align 4
  %32 = load i32*, i32** %12, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 1
  %36 = and i32 %35, 7
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp ugt i32 %37, 3
  br i1 %38, label %39, label %45

39:                                               ; preds = %27
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %41 = load i32, i32* @AV_LOG_ERROR, align 4
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @av_log(%struct.TYPE_7__* %40, i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %7, align 4
  br label %117

45:                                               ; preds = %27
  %46 = load i32, i32* %15, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  br label %60

58:                                               ; preds = %45
  %59 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @AV_PIX_FMT_YUV420P, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @AV_FIELD_PROGRESSIVE, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @AV_PICTURE_STRUCTURE_FRAME, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %14, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %115

75:                                               ; preds = %60
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %76, 10
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %7, align 4
  br label %117

80:                                               ; preds = %75
  %81 = load i32*, i32** %12, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = call i32 @AV_RL24(i32* %82)
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp ne i32 %84, 2752925
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %88 = load i32, i32* @AV_LOG_ERROR, align 4
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @av_log(%struct.TYPE_7__* %87, i32 %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %7, align 4
  br label %117

92:                                               ; preds = %80
  %93 = load i32*, i32** %12, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 6
  %95 = call i32 @AV_RL16(i32* %94)
  %96 = and i32 %95, 16383
  store i32 %96, i32* %17, align 4
  %97 = load i32*, i32** %12, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 8
  %99 = call i32 @AV_RL16(i32* %98)
  %100 = and i32 %99, 16383
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %18, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %17, align 4
  %108 = call i8* @FFALIGN(i32 %107, i32 16)
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 4
  store i8* %108, i8** %110, align 8
  %111 = load i32, i32* %18, align 4
  %112 = call i8* @FFALIGN(i32 %111, i32 16)
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  br label %115

115:                                              ; preds = %92, %60
  %116 = load i32, i32* %13, align 4
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %115, %86, %78, %39, %25
  %118 = load i32, i32* %7, align 4
  ret i32 %118
}

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*, i32) #1

declare dso_local i32 @AV_RL24(i32*) #1

declare dso_local i32 @AV_RL16(i32*) #1

declare dso_local i8* @FFALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
