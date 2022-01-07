; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_mxf_read_index_entry_array.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_mxf_read_index_entry_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i8**, i8** }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @mxf_read_index_entry_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxf_read_index_entry_array(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i8* @avio_rb32(i32* %8)
  %10 = ptrtoint i8* %9 to i32
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i8* @avio_rb32(i32* %13)
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 11
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %24, i32* %3, align 4
  br label %109

25:                                               ; preds = %20, %2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @av_calloc(i32 %28, i32 8)
  %30 = bitcast i8* %29 to i8**
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  store i8** %30, i8*** %32, align 8
  %33 = icmp ne i8** %30, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %25
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @av_calloc(i32 %37, i32 8)
  %39 = bitcast i8* %38 to i8**
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store i8** %39, i8*** %41, align 8
  %42 = icmp ne i8** %39, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %34
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @av_calloc(i32 %46, i32 4)
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  %51 = icmp ne i32* %48, null
  br i1 %51, label %61, label %52

52:                                               ; preds = %43, %34, %25
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = call i32 @av_freep(i8*** %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = call i32 @av_freep(i8*** %57)
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = call i32 @AVERROR(i32 %59)
  store i32 %60, i32* %3, align 4
  br label %109

61:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %105, %61
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %108

68:                                               ; preds = %62
  %69 = load i32*, i32** %4, align 8
  %70 = call i64 @avio_feof(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %73, i32* %3, align 4
  br label %109

74:                                               ; preds = %68
  %75 = load i32*, i32** %4, align 8
  %76 = call i8* @avio_r8(i32* %75)
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 3
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  store i8* %76, i8** %82, align 8
  %83 = load i32*, i32** %4, align 8
  %84 = call i8* @avio_r8(i32* %83)
  %85 = load i32*, i32** %4, align 8
  %86 = call i8* @avio_r8(i32* %85)
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i8**, i8*** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  store i8* %86, i8** %92, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @avio_rb64(i32* %93)
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sub nsw i32 %102, 11
  %104 = call i32 @avio_skip(i32* %101, i32 %103)
  br label %105

105:                                              ; preds = %74
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %62

108:                                              ; preds = %62
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %72, %52, %23
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i8* @avio_rb32(i32*) #1

declare dso_local i8* @av_calloc(i32, i32) #1

declare dso_local i32 @av_freep(i8***) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @avio_feof(i32*) #1

declare dso_local i8* @avio_r8(i32*) #1

declare dso_local i32 @avio_rb64(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
