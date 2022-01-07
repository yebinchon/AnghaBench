; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_sbgp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_sbgp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8*, i8* }
%struct.TYPE_19__ = type { i64 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Duplicated SBGP atom\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"reached eof, corrupted SBGP atom\0A\00", align 1
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_19__*, i32)* @mov_read_sbgp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_sbgp(%struct.TYPE_17__* %0, %struct.TYPE_19__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %142

21:                                               ; preds = %3
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %25, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %26, i64 %33
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  store %struct.TYPE_18__* %35, %struct.TYPE_18__** %8, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %9, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %40 = call i32 @avio_r8(%struct.TYPE_19__* %39)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %42 = call i32 @avio_rb24(%struct.TYPE_19__* %41)
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %44 = call i64 @avio_rl32(%struct.TYPE_19__* %43)
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call i64 @MKTAG(i8 signext 114, i8 signext 97, i8 signext 112, i8 signext 32)
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %142

49:                                               ; preds = %21
  %50 = load i32, i32* %12, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %54 = call i8* @avio_rb32(%struct.TYPE_19__* %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %57 = call i8* @avio_rb32(%struct.TYPE_19__* %56)
  %58 = ptrtoint i8* %57 to i32
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %142

62:                                               ; preds = %55
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = icmp ne %struct.TYPE_14__* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = load i32, i32* @AV_LOG_WARNING, align 4
  %72 = call i32 @av_log(%struct.TYPE_15__* %70, i32 %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %67, %62
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = call i32 @av_free(%struct.TYPE_14__* %76)
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call %struct.TYPE_14__* @av_malloc_array(i32 %80, i32 16)
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  store %struct.TYPE_14__* %81, %struct.TYPE_14__** %83, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = icmp ne %struct.TYPE_14__* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %73
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = call i32 @AVERROR(i32 %89)
  store i32 %90, i32* %4, align 4
  br label %142

91:                                               ; preds = %73
  store i32 0, i32* %10, align 4
  br label %92

92:                                               ; preds = %123, %91
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  %101 = xor i1 %100, true
  br label %102

102:                                              ; preds = %96, %92
  %103 = phi i1 [ false, %92 ], [ %101, %96 ]
  br i1 %103, label %104, label %126

104:                                              ; preds = %102
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %106 = call i8* @avio_rb32(%struct.TYPE_19__* %105)
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  store i8* %106, i8** %113, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %115 = call i8* @avio_rb32(%struct.TYPE_19__* %114)
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  store i8* %115, i8** %122, align 8
  br label %123

123:                                              ; preds = %104
  %124 = load i32, i32* %10, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %92

126:                                              ; preds = %102
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %126
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %136, align 8
  %138 = load i32, i32* @AV_LOG_WARNING, align 4
  %139 = call i32 @av_log(%struct.TYPE_15__* %137, i32 %138, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %140 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %140, i32* %4, align 4
  br label %142

141:                                              ; preds = %126
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %141, %134, %88, %61, %48, %20
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @avio_r8(%struct.TYPE_19__*) #1

declare dso_local i32 @avio_rb24(%struct.TYPE_19__*) #1

declare dso_local i64 @avio_rl32(%struct.TYPE_19__*) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i8* @avio_rb32(%struct.TYPE_19__*) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @av_free(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @av_malloc_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
