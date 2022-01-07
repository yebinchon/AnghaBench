; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_omadec.c_nprobe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_omadec.c_nprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.AVDES = type { i32 }

@OMA_ENC_HEADER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"EKB \00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Mismatching RID\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32, i32*)* @nprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nprobe(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.AVDES*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %10, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %4
  %21 = load i32*, i32** %9, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @OMA_ENC_HEADER_SIZE, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add i32 %25, %28
  %30 = add i32 %29, 4
  %31 = icmp ult i32 %24, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23, %20, %4
  store i32 -1, i32* %5, align 4
  br label %140

33:                                               ; preds = %23
  %34 = load i32, i32* @OMA_ENC_HEADER_SIZE, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add i32 %34, %37
  %39 = zext i32 %38 to i64
  store i64 %39, i64* %11, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = call i32 @memcmp(i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %33
  %46 = load i64, i64* %11, align 8
  %47 = add i64 %46, 32
  store i64 %47, i64* %11, align 8
  br label %48

48:                                               ; preds = %45, %33
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = load i64, i64* %11, align 8
  %52 = add i64 %51, 44
  %53 = icmp ult i64 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 -1, i32* %5, align 4
  br label %140

55:                                               ; preds = %48
  %56 = load i32*, i32** %7, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = call i32 @AV_RB32(i32* %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = load i32, i32* @AV_LOG_DEBUG, align 4
  %67 = call i32 @av_log(%struct.TYPE_8__* %65, i32 %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %55
  %69 = load i32*, i32** %7, align 8
  %70 = load i64, i64* %11, align 8
  %71 = add i64 %70, 32
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = call i32 @AV_RB32(i32* %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = load i64, i64* %11, align 8
  %76 = add i64 %75, 36
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = call i32 @AV_RB32(i32* %77)
  %79 = ashr i32 %78, 4
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 44, %81
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %83, %82
  store i64 %84, i64* %11, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = shl i64 %87, 4
  %89 = add i64 %85, %88
  %90 = load i32, i32* %8, align 4
  %91 = zext i32 %90 to i64
  %92 = icmp ugt i64 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %68
  store i32 -1, i32* %5, align 4
  br label %140

94:                                               ; preds = %68
  %95 = call %struct.AVDES* (...) @av_des_alloc()
  store %struct.AVDES* %95, %struct.AVDES** %14, align 8
  %96 = load %struct.AVDES*, %struct.AVDES** %14, align 8
  %97 = icmp ne %struct.AVDES* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = call i32 @AVERROR(i32 %99)
  store i32 %100, i32* %5, align 4
  br label %140

101:                                              ; preds = %94
  %102 = load %struct.AVDES*, %struct.AVDES** %14, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = call i32 @av_des_init(%struct.AVDES* %102, i32* %103, i32 192, i32 1)
  br label %105

105:                                              ; preds = %134, %101
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %13, align 4
  %108 = icmp sgt i32 %106, 0
  br i1 %108, label %109, label %137

109:                                              ; preds = %105
  %110 = load %struct.AVDES*, %struct.AVDES** %14, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %7, align 8
  %115 = load i64, i64* %11, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = call i32 @av_des_crypt(%struct.AVDES* %110, i32 %113, i32* %116, i32 2, i32* null, i32 1)
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @kset(%struct.TYPE_8__* %118, i32 %121, i32* null, i32 16)
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @rprobe(%struct.TYPE_8__* %123, i32* %124, i32 %125, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %109
  %132 = load %struct.AVDES*, %struct.AVDES** %14, align 8
  %133 = call i32 @av_free(%struct.AVDES* %132)
  store i32 0, i32* %5, align 4
  br label %140

134:                                              ; preds = %109
  %135 = load i64, i64* %11, align 8
  %136 = add i64 %135, 16
  store i64 %136, i64* %11, align 8
  br label %105

137:                                              ; preds = %105
  %138 = load %struct.AVDES*, %struct.AVDES** %14, align 8
  %139 = call i32 @av_free(%struct.AVDES* %138)
  store i32 -1, i32* %5, align 4
  br label %140

140:                                              ; preds = %137, %131, %98, %93, %54, %32
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local %struct.AVDES* @av_des_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_des_init(%struct.AVDES*, i32*, i32, i32) #1

declare dso_local i32 @av_des_crypt(%struct.AVDES*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @kset(%struct.TYPE_8__*, i32, i32*, i32) #1

declare dso_local i32 @rprobe(%struct.TYPE_8__*, i32*, i32, i32) #1

declare dso_local i32 @av_free(%struct.AVDES*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
