; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2.c_read_chapter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2.c_read_chapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i8*, i8*, i32 }

@ff_id3v2_34_metadata_conv = common dso_local global i32 0, align 4
@ff_id3v2_4_metadata_conv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"CHAP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i8*, %struct.TYPE_7__**, i32)* @read_chapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_chapter(i32* %0, i32* %1, i32 %2, i8* %3, %struct.TYPE_7__** %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [5 x i8], align 1
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.TYPE_7__** %4, %struct.TYPE_7__*** %11, align 8
  store i32 %5, i32* %12, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %16, align 8
  %17 = call i8* @av_mallocz(i32 24)
  %18 = bitcast i8* %17 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %15, align 8
  %19 = call i8* @av_mallocz(i32 32)
  %20 = bitcast i8* %19 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %16, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %6
  br label %118

27:                                               ; preds = %23
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = call i64 @decode_str(i32* %28, i32* %29, i32 0, i32* %31, i32* %9)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %118

35:                                               ; preds = %27
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 16
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %118

39:                                               ; preds = %35
  %40 = load i32*, i32** %8, align 8
  %41 = call i8* @avio_rb32(i32* %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i8* @avio_rb32(i32* %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @avio_skip(i32* %48, i32 8)
  %50 = load i32, i32* %9, align 4
  %51 = sub nsw i32 %50, 16
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %94, %39
  %53 = load i32, i32* %9, align 4
  %54 = icmp sgt i32 %53, 10
  br i1 %54, label %55, label %98

55:                                               ; preds = %52
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 0
  %58 = call i32 @avio_read(i32* %56, i8* %57, i32 4)
  %59 = icmp slt i32 %58, 4
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %118

61:                                               ; preds = %55
  %62 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 4
  store i8 0, i8* %62, align 1
  %63 = load i32*, i32** %8, align 8
  %64 = call i8* @avio_rb32(i32* %63)
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* %13, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @avio_skip(i32* %66, i32 2)
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %68, 10
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %61
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %61
  br label %118

77:                                               ; preds = %72
  %78 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 84
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load i32*, i32** %7, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 0
  %89 = call i32 @read_ttag(i32* %83, i32* %84, i32 %85, i32* %87, i8* %88)
  br label %94

90:                                               ; preds = %77
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @avio_skip(i32* %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %82
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %9, align 4
  %97 = sub nsw i32 %96, %95
  store i32 %97, i32* %9, align 4
  br label %52

98:                                               ; preds = %52
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* @ff_id3v2_34_metadata_conv, align 4
  %102 = call i32 @ff_metadata_conv(i32* %100, i32* null, i32 %101)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* @ff_id3v2_4_metadata_conv, align 4
  %106 = call i32 @ff_metadata_conv(i32* %104, i32* null, i32 %105)
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %108, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  store %struct.TYPE_6__* %109, %struct.TYPE_6__** %111, align 8
  %112 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  store %struct.TYPE_7__* %113, %struct.TYPE_7__** %115, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %117 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  store %struct.TYPE_7__* %116, %struct.TYPE_7__** %117, align 8
  br label %126

118:                                              ; preds = %76, %60, %38, %34, %26
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %120 = icmp ne %struct.TYPE_6__* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %123 = call i32 @free_chapter(%struct.TYPE_6__* %122)
  br label %124

124:                                              ; preds = %121, %118
  %125 = call i32 @av_freep(%struct.TYPE_7__** %15)
  br label %126

126:                                              ; preds = %124, %98
  ret void
}

declare dso_local i8* @av_mallocz(i32) #1

declare dso_local i64 @decode_str(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i8* @avio_rb32(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @avio_read(i32*, i8*, i32) #1

declare dso_local i32 @read_ttag(i32*, i32*, i32, i32*, i8*) #1

declare dso_local i32 @ff_metadata_conv(i32*, i32*, i32) #1

declare dso_local i32 @free_chapter(%struct.TYPE_6__*) #1

declare dso_local i32 @av_freep(%struct.TYPE_7__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
