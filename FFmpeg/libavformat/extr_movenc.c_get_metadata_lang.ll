; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_get_metadata_lang.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_get_metadata_lang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s-\00", align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_7__*, i8*, i32*)* @get_metadata_lang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @get_metadata_lang(%struct.TYPE_7__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca [16 x i8], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %12, align 8
  %14 = load i32*, i32** %7, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = call %struct.TYPE_8__* @av_dict_get(i32 %17, i8* %18, %struct.TYPE_8__* null, i32 0)
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %11, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %74

22:                                               ; preds = %3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @strlen(i32* %25)
  store i32 %26, i32* %9, align 4
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @snprintf(i8* %27, i32 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %71, %22
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %36 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %37 = call %struct.TYPE_8__* @av_dict_get(i32 %33, i8* %34, %struct.TYPE_8__* %35, i32 %36)
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %12, align 8
  %38 = icmp ne %struct.TYPE_8__* %37, null
  br i1 %38, label %39, label %72

39:                                               ; preds = %30
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @strlen(i32* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 4
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %39
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @strcmp(i32 %51, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %71, label %57

57:                                               ; preds = %48
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sub nsw i32 %61, 3
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = call i32 @ff_mov_iso639_to_lang(i32* %64, i32 1)
  store i32 %65, i32* %8, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %57
  %68 = load i32, i32* %8, align 4
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %4, align 8
  br label %74

71:                                               ; preds = %57, %48, %39
  br label %30

72:                                               ; preds = %30
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %4, align 8
  br label %74

74:                                               ; preds = %72, %67, %21
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %75
}

declare dso_local %struct.TYPE_8__* @av_dict_get(i32, i8*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @ff_mov_iso639_to_lang(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
