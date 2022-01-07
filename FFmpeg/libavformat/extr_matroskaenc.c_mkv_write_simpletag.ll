; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_write_simpletag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_write_simpletag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_LANG_ISO639_2_BIBL = common dso_local global i32 0, align 4
@MATROSKA_ID_SIMPLETAG = common dso_local global i32 0, align 4
@MATROSKA_ID_TAGNAME = common dso_local global i32 0, align 4
@MATROSKA_ID_TAGLANG = common dso_local global i32 0, align 4
@MATROSKA_ID_TAGSTRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @mkv_write_simpletag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkv_write_simpletag(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @av_strdup(i32 %12)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = call i32 @AVERROR(i32 %18)
  store i32 %19, i32* %3, align 4
  br label %91

20:                                               ; preds = %2
  %21 = load i8*, i8** %7, align 8
  %22 = call i8* @strrchr(i8* %21, i8 signext 45)
  store i8* %22, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i32, i32* @AV_LANG_ISO639_2_BIBL, align 4
  %28 = call i8* @ff_convert_lang_to(i8* %26, i32 %27)
  store i8* %28, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i8*, i8** %7, align 8
  store i8 0, i8* %31, align 1
  br label %32

32:                                               ; preds = %30, %24, %20
  %33 = load i8*, i8** %6, align 8
  store i8* %33, i8** %7, align 8
  br label %34

34:                                               ; preds = %62, %32
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 32
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  store i8 95, i8* %44, align 1
  br label %62

45:                                               ; preds = %38
  %46 = load i8*, i8** %7, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp sge i32 %48, 97
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load i8*, i8** %7, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp sle i32 %53, 122
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i8*, i8** %7, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = sub nsw i32 %58, 32
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %56, align 1
  br label %61

61:                                               ; preds = %55, %50, %45
  br label %62

62:                                               ; preds = %61, %43
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %7, align 8
  br label %34

65:                                               ; preds = %34
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* @MATROSKA_ID_SIMPLETAG, align 4
  %68 = call i32 @start_ebml_master(i32* %66, i32 %67, i32 0)
  store i32 %68, i32* %9, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* @MATROSKA_ID_TAGNAME, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @put_ebml_string(i32* %69, i32 %70, i8* %71)
  %73 = load i8*, i8** %8, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %65
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* @MATROSKA_ID_TAGLANG, align 4
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @put_ebml_string(i32* %76, i32 %77, i8* %78)
  br label %80

80:                                               ; preds = %75, %65
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* @MATROSKA_ID_TAGSTRING, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @put_ebml_string(i32* %81, i32 %82, i8* %85)
  %87 = load i32*, i32** %4, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @end_ebml_master(i32* %87, i32 %88)
  %90 = call i32 @av_freep(i8** %6)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %80, %17
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i8* @av_strdup(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @ff_convert_lang_to(i8*, i32) #1

declare dso_local i32 @start_ebml_master(i32*, i32, i32) #1

declare dso_local i32 @put_ebml_string(i32*, i32, i8*) #1

declare dso_local i32 @end_ebml_master(i32*, i32) #1

declare dso_local i32 @av_freep(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
