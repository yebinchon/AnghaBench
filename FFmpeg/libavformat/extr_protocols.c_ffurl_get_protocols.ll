; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_protocols.c_ffurl_get_protocols.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_protocols.c_ffurl_get_protocols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@url_protocols = common dso_local global %struct.TYPE_6__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__** @ffurl_get_protocols(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @url_protocols, align 8
  %11 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_6__** %10)
  %12 = call %struct.TYPE_6__** @av_mallocz_array(i32 %11, i32 8)
  store %struct.TYPE_6__** %12, %struct.TYPE_6__*** %6, align 8
  %13 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %14 = icmp ne %struct.TYPE_6__** %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.TYPE_6__** null, %struct.TYPE_6__*** %3, align 8
  br label %73

16:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %68, %16
  %18 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @url_protocols, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %18, i64 %20
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %71

24:                                               ; preds = %17
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @url_protocols, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %25, i64 %27
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %9, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %24
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = call i64 @av_match_name(i32 %40, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %68

45:                                               ; preds = %37, %32, %24
  %46 = load i8*, i8** %5, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load i8*, i8** %5, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %5, align 8
  %58 = call i64 @av_match_name(i32 %56, i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %68

61:                                               ; preds = %53, %48, %45
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %63 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %63, i64 %66
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %67, align 8
  br label %68

68:                                               ; preds = %61, %60, %44
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %17

71:                                               ; preds = %17
  %72 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__** %72, %struct.TYPE_6__*** %3, align 8
  br label %73

73:                                               ; preds = %71, %15
  %74 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  ret %struct.TYPE_6__** %74
}

declare dso_local %struct.TYPE_6__** @av_mallocz_array(i32, i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_6__**) #1

declare dso_local i64 @av_match_name(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
