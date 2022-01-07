; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_uuidusmt_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_uuidusmt_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"uuid\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"USMT\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"MTDT\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"und\00", align 1
@AVFMT_FLAG_BITEXACT = common dso_local global i32 0, align 4
@LIBAVCODEC_IDENT = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"eng\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"2006/04/01 11:11:11\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @mov_write_uuidusmt_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_uuidusmt_tag(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_6__* @av_dict_get(i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %73

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @avio_tell(i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @avio_wb32(i32* %18, i32 0)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @ffio_wfourcc(i32* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @ffio_wfourcc(i32* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @avio_wb32(i32* %24, i32 567431118)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @avio_wb32(i32* %26, i32 -1148688036)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @avio_wb32(i32* %28, i32 -87439552)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @avio_tell(i32* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @avio_wb32(i32* %32, i32 0)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @ffio_wfourcc(i32* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @avio_wb16(i32* %36, i32 4)
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @avio_wb16(i32* %38, i32 12)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @avio_wb32(i32* %40, i32 11)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @language_code(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %44 = call i32 @avio_wb16(i32* %42, i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @avio_wb16(i32* %45, i32 0)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @avio_wb16(i32* %47, i32 540)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @AVFMT_FLAG_BITEXACT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %15
  %56 = load i32*, i32** %4, align 8
  %57 = load i8*, i8** @LIBAVCODEC_IDENT, align 8
  %58 = call i32 @mov_write_psp_udta_tag(i32* %56, i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 4)
  br label %59

59:                                               ; preds = %55, %15
  %60 = load i32*, i32** %4, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @mov_write_psp_udta_tag(i32* %60, i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @mov_write_psp_udta_tag(i32* %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @update_size(i32* %67, i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @update_size(i32* %70, i32 %71)
  store i32 %72, i32* %3, align 4
  br label %74

73:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %59
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.TYPE_6__* @av_dict_get(i32, i8*, i32*, i32) #1

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @language_code(i8*) #1

declare dso_local i32 @mov_write_psp_udta_tag(i32*, i8*, i8*, i32) #1

declare dso_local i32 @update_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
