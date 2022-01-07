; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_headphone.c_parse_map.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_headphone.c_parse_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32*, i64, i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"|\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to parse '%s' as channel name.\0A\00", align 1
@HRIR_MULTI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @parse_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_map(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x i8], align 1
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %3, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i8* @av_strdup(i32 %16)
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %91

21:                                               ; preds = %1
  %22 = load i8*, i8** %7, align 8
  store i8* %22, i8** %6, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %37, %21
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 64
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 -1, i32* %36, align 4
  br label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %27

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %58, %53, %40
  %42 = load i8*, i8** %6, align 8
  %43 = call i8* @av_strtok(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %5)
  store i8* %43, i8** %4, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %71

45:                                               ; preds = %41
  store i8* null, i8** %6, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %51 = call i64 @parse_channel_name(%struct.TYPE_6__* %46, i64 %49, i8** %4, i32* %9, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %55 = load i32, i32* @AV_LOG_WARNING, align 4
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %57 = call i32 @av_log(%struct.TYPE_7__* %54, i32 %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  br label %41

58:                                               ; preds = %45
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32 %59, i32* %66, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %68, align 8
  br label %41

71:                                               ; preds = %41
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @HRIR_MULTI, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i32 2, i32* %79, align 4
  br label %88

80:                                               ; preds = %71
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, 1
  %85 = trunc i64 %84 to i32
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %80, %77
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @av_free(i8* %89)
  br label %91

91:                                               ; preds = %88, %20
  ret void
}

declare dso_local i8* @av_strdup(i32) #1

declare dso_local i8* @av_strtok(i8*, i8*, i8**) #1

declare dso_local i64 @parse_channel_name(%struct.TYPE_6__*, i64, i8**, i32*, i8*) #1

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*, i8*) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
