; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_vividas.c_load_sb_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_vividas.c_load_sb_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64, i64, %struct.TYPE_8__*, %struct.TYPE_7__*, i32*, i32*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*, i32)* @load_sb_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_sb_block(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32* null, i32** %9, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 5
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @av_free(i32* %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 5
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %14, %3
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 6
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 6
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @av_free(i32* %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 7
  %37 = load i32, i32* %6, align 4
  %38 = call i32* @read_sb_block(i32 %34, i32* %7, i32* %36, i32 %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 6
  store i32* %38, i32** %40, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %31
  br label %115

46:                                               ; preds = %31
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 6
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32* @avio_alloc_context(i32* %49, i32 %50, i32 0, i32* null, i32* null, i32* null, i32* null)
  store i32* %51, i32** %9, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  br label %115

55:                                               ; preds = %46
  %56 = load i32*, i32** %9, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 5
  store i32* %56, i32** %58, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @avio_r8(i32* %59)
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @avio_r8(i32* %61)
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @ffio_read_varlen(i32* %63)
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @avio_r8(i32* %65)
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @ffio_read_varlen(i32* %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %105, %55
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %108

86:                                               ; preds = %80
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @ffio_read_varlen(i32* %87)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  store i32 %88, i32* %95, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @avio_r8(i32* %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  store i32 %97, i32* %104, align 4
  br label %105

105:                                              ; preds = %86
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %80

108:                                              ; preds = %80
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @ffio_read_varlen(i32* %109)
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @avio_r8(i32* %111)
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  store i64 0, i64* %114, align 8
  br label %115

115:                                              ; preds = %108, %54, %45
  ret void
}

declare dso_local i32 @av_free(i32*) #1

declare dso_local i32* @read_sb_block(i32, i32*, i32*, i32) #1

declare dso_local i32* @avio_alloc_context(i32*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @ffio_read_varlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
