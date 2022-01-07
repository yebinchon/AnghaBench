; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_vorbiscomment.c_ff_vorbiscomment_length.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_vorbiscomment.c_ff_vorbiscomment_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i8*, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"title\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_vorbiscomment_length(i32* %0, i8* %1, %struct.TYPE_7__** %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_7__** %2, %struct.TYPE_7__*** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 8, i32* %9, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = load i32, i32* %9, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* %9, align 4
  %18 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %19 = icmp ne %struct.TYPE_7__** %18, null
  br i1 %19, label %20, label %72

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %72

23:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %68, %23
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %24
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %11, align 8
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 27
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %55, %28
  %32 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %32, i64 %34
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %40 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %41 = call %struct.TYPE_6__* @av_dict_get(i32* %38, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %39, i32 %40)
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %11, align 8
  %42 = icmp ne %struct.TYPE_6__* %41, null
  br i1 %42, label %43, label %67

43:                                               ; preds = %31
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %55

50:                                               ; preds = %43
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @strlen(i8* %53)
  br label %55

55:                                               ; preds = %50, %49
  %56 = phi i32 [ 4, %49 ], [ %54, %50 ]
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 14, %57
  %59 = add nsw i32 %58, 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strlen(i8* %62)
  %64 = add nsw i32 %59, %63
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %9, align 4
  br label %31

67:                                               ; preds = %31
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %24

71:                                               ; preds = %24
  br label %72

72:                                               ; preds = %71, %20, %4
  %73 = load i32*, i32** %5, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %97

75:                                               ; preds = %72
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %13, align 8
  br label %76

76:                                               ; preds = %82, %75
  %77 = load i32*, i32** %5, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %79 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %80 = call %struct.TYPE_6__* @av_dict_get(i32* %77, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %78, i32 %79)
  store %struct.TYPE_6__* %80, %struct.TYPE_6__** %13, align 8
  %81 = icmp ne %struct.TYPE_6__* %80, null
  br i1 %81, label %82, label %96

82:                                               ; preds = %76
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @strlen(i8* %85)
  %87 = add nsw i32 4, %86
  %88 = add nsw i32 %87, 1
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @strlen(i8* %91)
  %93 = add nsw i32 %88, %92
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %9, align 4
  br label %76

96:                                               ; preds = %76
  br label %97

97:                                               ; preds = %96, %72
  %98 = load i32, i32* %9, align 4
  ret i32 %98
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_6__* @av_dict_get(i32*, i8*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
