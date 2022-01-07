; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libvorbisdec.c_oggvorbis_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libvorbisdec.c_oggvorbis_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, i32, %struct.TYPE_13__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i8*, i32*, %struct.TYPE_15__*)* @oggvorbis_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oggvorbis_decode_frame(%struct.TYPE_17__* %0, i8* %1, i32* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca float**, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %10, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %11, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 3
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %13, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %114

31:                                               ; preds = %4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  store i32 32768, i32* %33, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %36 = call i32 @ff_get_buffer(%struct.TYPE_17__* %34, %struct.TYPE_16__* %35, i32 0)
  store i32 %36, i32* %17, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %17, align 4
  store i32 %39, i32* %5, align 4
  br label %114

40:                                               ; preds = %31
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %18, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %60 = call i64 @vorbis_synthesis(i32* %58, %struct.TYPE_13__* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %40
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 2
  %67 = call i32 @vorbis_synthesis_blockin(i32* %64, i32* %66)
  br label %68

68:                                               ; preds = %62, %40
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %69

69:                                               ; preds = %74, %68
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = call i32 @vorbis_synthesis_pcmout(i32* %71, float*** %12)
  store i32 %72, i32* %14, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %103

74:                                               ; preds = %69
  %75 = load i32, i32* %14, align 4
  %76 = load float**, float*** %12, align 8
  %77 = load i32*, i32** %18, align 8
  %78 = bitcast i32* %77 to i8*
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @conv(i32 %75, float** %76, i8* %81, i32 %85)
  %87 = load i32, i32* %14, align 4
  %88 = mul nsw i32 %87, 2
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %88, %92
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %15, align 4
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @vorbis_synthesis_read(i32* %100, i32 %101)
  br label %69

103:                                              ; preds = %69
  %104 = load i32, i32* %15, align 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %15, align 4
  %108 = icmp sgt i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = load i32*, i32** %8, align 8
  store i32 %109, i32* %110, align 4
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %103, %38, %30
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @ff_get_buffer(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

declare dso_local i64 @vorbis_synthesis(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @vorbis_synthesis_blockin(i32*, i32*) #1

declare dso_local i32 @vorbis_synthesis_pcmout(i32*, float***) #1

declare dso_local i32 @conv(i32, float**, i8*, i32) #1

declare dso_local i32 @vorbis_synthesis_read(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
