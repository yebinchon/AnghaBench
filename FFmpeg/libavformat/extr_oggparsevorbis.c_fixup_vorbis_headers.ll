; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsevorbis.c_fixup_vorbis_headers.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsevorbis.c_fixup_vorbis_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oggvorbis_private = type { i32*, i32* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.oggvorbis_private*, i8**)* @fixup_vorbis_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fixup_vorbis_headers(i32* %0, %struct.oggvorbis_private* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.oggvorbis_private*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.oggvorbis_private* %1, %struct.oggvorbis_private** %6, align 8
  store i8** %2, i8*** %7, align 8
  %14 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %6, align 8
  %15 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %6, align 8
  %20 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %18, %23
  %25 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %6, align 8
  %26 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %24, %29
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sdiv i32 %32, 255
  %34 = add nsw i32 %31, %33
  %35 = add nsw i32 %34, 64
  store i32 %35, i32* %12, align 4
  %36 = load i8**, i8*** %7, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %40, i32* %4, align 4
  br label %139

41:                                               ; preds = %3
  %42 = load i32, i32* %12, align 4
  %43 = call i8* @av_realloc(i32* null, i32 %42)
  %44 = load i8**, i8*** %7, align 8
  store i8* %43, i8** %44, align 8
  store i8* %43, i8** %13, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = call i32 @AVERROR(i32 %48)
  store i32 %49, i32* %4, align 4
  br label %139

50:                                               ; preds = %41
  %51 = load i8**, i8*** %7, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @memset(i8* %52, i8 signext 0, i32 %53)
  %55 = load i8*, i8** %13, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  store i8 2, i8* %56, align 1
  store i32 1, i32* %9, align 4
  %57 = load i8*, i8** %13, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %6, align 8
  %62 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @av_xiphlacing(i8* %60, i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %9, align 4
  %71 = load i8*, i8** %13, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %6, align 8
  %76 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @av_xiphlacing(i8* %74, i32 %79)
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %124, %50
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 3
  br i1 %87, label %88, label %127

88:                                               ; preds = %85
  %89 = load i8*, i8** %13, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %6, align 8
  %94 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %6, align 8
  %101 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @memcpy(i8* %92, i32 %99, i32 %106)
  %108 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %6, align 8
  %109 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %9, align 4
  %117 = load %struct.oggvorbis_private*, %struct.oggvorbis_private** %6, align 8
  %118 = getelementptr inbounds %struct.oggvorbis_private, %struct.oggvorbis_private* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = call i32 @av_freep(i32* %122)
  br label %124

124:                                              ; preds = %88
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %85

127:                                              ; preds = %85
  %128 = load i8**, i8*** %7, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @av_reallocp(i8** %128, i64 %132)
  store i32 %133, i32* %11, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %127
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %4, align 4
  br label %139

137:                                              ; preds = %127
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %137, %135, %47, %39
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i8* @av_realloc(i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i64 @av_xiphlacing(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i32 @av_reallocp(i8**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
