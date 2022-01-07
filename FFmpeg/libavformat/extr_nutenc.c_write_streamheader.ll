; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutenc.c_write_streamheader.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutenc.c_write_streamheader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_15__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"No codec tag defined for stream %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32*, %struct.TYPE_13__*, i32)* @write_streamheader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_streamheader(%struct.TYPE_14__* %0, i32* %1, %struct.TYPE_13__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %10, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %11, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @ff_put_v(i32* %18, i32 %19)
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %33 [
    i32 128, label %24
    i32 130, label %27
    i32 129, label %30
  ]

24:                                               ; preds = %4
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @ff_put_v(i32* %25, i32 0)
  br label %36

27:                                               ; preds = %4
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @ff_put_v(i32* %28, i32 1)
  br label %36

30:                                               ; preds = %4
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @ff_put_v(i32* %31, i32 2)
  br label %36

33:                                               ; preds = %4
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @ff_put_v(i32* %34, i32 3)
  br label %36

36:                                               ; preds = %33, %30, %27, %24
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @ff_put_v(i32* %37, i32 4)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 8
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @avio_wl32(i32* %44, i64 %47)
  br label %56

49:                                               ; preds = %36
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %51 = load i32, i32* @AV_LOG_ERROR, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @av_log(%struct.TYPE_14__* %50, i32 %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = call i32 @AVERROR(i32 %54)
  store i32 %55, i32* %5, align 4
  br label %172

56:                                               ; preds = %43
  %57 = load i32*, i32** %7, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %65, %68
  %70 = call i32 @ff_put_v(i32* %57, i32 %69)
  %71 = load i32*, i32** %7, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ff_put_v(i32* %71, i32 %79)
  %81 = load i32*, i32** %7, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ff_put_v(i32* %81, i32 %89)
  %91 = load i32*, i32** %7, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ff_put_v(i32* %91, i32 %94)
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @avio_w8(i32* %96, i32 0)
  %98 = load i32*, i32** %7, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @ff_put_v(i32* %98, i32 %101)
  %103 = load i32*, i32** %7, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @avio_write(i32* %103, i32 %106, i32 %109)
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  switch i32 %113, label %170 [
    i32 130, label %114
    i32 128, label %127
  ]

114:                                              ; preds = %56
  %115 = load i32*, i32** %7, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ff_put_v(i32* %115, i32 %118)
  %120 = load i32*, i32** %7, align 8
  %121 = call i32 @ff_put_v(i32* %120, i32 1)
  %122 = load i32*, i32** %7, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @ff_put_v(i32* %122, i32 %125)
  br label %171

127:                                              ; preds = %56
  %128 = load i32*, i32** %7, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ff_put_v(i32* %128, i32 %131)
  %133 = load i32*, i32** %7, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @ff_put_v(i32* %133, i32 %136)
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp sle i32 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %127
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp sle i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %143, %127
  %150 = load i32*, i32** %7, align 8
  %151 = call i32 @ff_put_v(i32* %150, i32 0)
  %152 = load i32*, i32** %7, align 8
  %153 = call i32 @ff_put_v(i32* %152, i32 0)
  br label %167

154:                                              ; preds = %143
  %155 = load i32*, i32** %7, align 8
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @ff_put_v(i32* %155, i32 %159)
  %161 = load i32*, i32** %7, align 8
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @ff_put_v(i32* %161, i32 %165)
  br label %167

167:                                              ; preds = %154, %149
  %168 = load i32*, i32** %7, align 8
  %169 = call i32 @ff_put_v(i32* %168, i32 0)
  br label %171

170:                                              ; preds = %56
  br label %171

171:                                              ; preds = %170, %167, %114
  store i32 0, i32* %5, align 4
  br label %172

172:                                              ; preds = %171, %49
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local i32 @ff_put_v(i32*, i32) #1

declare dso_local i32 @avio_wl32(i32*, i64) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_write(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
