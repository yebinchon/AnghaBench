; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp3.c_read_huffman_tree.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp3.c_read_huffman_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i32, i32, i32*** }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"huffman tree overflow\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"hti %d hbits %x token %d entry : %d size %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*)* @read_huffman_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_huffman_tree(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @get_bits1(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %77

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %17, 32
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = load i32, i32* @AV_LOG_ERROR, align 4
  %22 = call i32 @av_log(%struct.TYPE_7__* %20, i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %120

23:                                               ; preds = %14
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @get_bits(i32* %24, i32 5)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ff_dlog(%struct.TYPE_7__* %26, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %29, i32 %32, i32 %33, i32 %36, i32 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 4
  %46 = load i32***, i32**** %45, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32**, i32*** %46, i64 %49
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %43, i32* %56, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 4
  %62 = load i32***, i32**** %61, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32**, i32*** %62, i64 %65
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 %59, i32* %72, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  br label %119

77:                                               ; preds = %2
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = icmp sge i32 %80, 32
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = load i32, i32* @AV_LOG_ERROR, align 4
  %85 = call i32 @av_log(%struct.TYPE_7__* %83, i32 %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %120

86:                                               ; preds = %77
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = shl i32 %93, 1
  store i32 %94, i32* %92, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @read_huffman_tree(%struct.TYPE_7__* %95, i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %86
  store i32 -1, i32* %3, align 4
  br label %120

100:                                              ; preds = %86
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, 1
  store i32 %104, i32* %102, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 @read_huffman_tree(%struct.TYPE_7__* %105, i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  store i32 -1, i32* %3, align 4
  br label %120

110:                                              ; preds = %100
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = ashr i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %110, %23
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %109, %99, %82, %19
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @ff_dlog(%struct.TYPE_7__*, i8*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
