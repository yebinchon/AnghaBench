; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_saiz.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_saiz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i64, i64, i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Ignoring duplicate encryption info in saiz\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Duplicate saiz atom\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Ignoring saiz box with non-zero aux_info_type\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Ignoring saiz box with non-zero aux_info_type_parameter\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Saw encrypted saiz without schm/tenc\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed to read the auxiliary info\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32*, i32)* @mov_read_saiz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_saiz(%struct.TYPE_17__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = call i32 @get_current_encryption_info(%struct.TYPE_17__* %14, %struct.TYPE_16__** %8, %struct.TYPE_15__** %9)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %163

20:                                               ; preds = %3
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AV_LOG_DEBUG, align 4
  %30 = call i32 @av_log(i32 %28, i32 %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %163

31:                                               ; preds = %20
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @AV_LOG_ERROR, align 4
  %41 = call i32 @av_log(i32 %39, i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %42, i32* %4, align 4
  br label %163

43:                                               ; preds = %31
  %44 = load i32*, i32** %6, align 8
  %45 = call i64 @avio_r8(i32* %44)
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @avio_rb24(i32* %46)
  %48 = and i32 %47, 1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %113

50:                                               ; preds = %43
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @avio_rb32(i32* %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @avio_rb32(i32* %53)
  store i32 %54, i32* %13, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = icmp ne %struct.TYPE_13__* %58, null
  br i1 %59, label %60, label %85

60:                                               ; preds = %50
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %61, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @AV_LOG_DEBUG, align 4
  %74 = call i32 @av_log(i32 %72, i32 %73, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %163

75:                                               ; preds = %60
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @AV_LOG_DEBUG, align 4
  %83 = call i32 @av_log(i32 %81, i32 %82, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %163

84:                                               ; preds = %75
  br label %112

85:                                               ; preds = %50
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @MKBETAG(i8 signext 99, i8 signext 101, i8 signext 110, i8 signext 99)
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %101, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @MKBETAG(i8 signext 99, i8 signext 101, i8 signext 110, i8 signext 115)
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %101, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @MKBETAG(i8 signext 99, i8 signext 98, i8 signext 99, i8 signext 49)
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @MKBETAG(i8 signext 99, i8 signext 98, i8 signext 99, i8 signext 115)
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %97, %93, %89, %85
  %102 = load i32, i32* %13, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @AV_LOG_ERROR, align 4
  %109 = call i32 @av_log(i32 %107, i32 %108, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %110 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %110, i32* %4, align 4
  br label %163

111:                                              ; preds = %101, %97
  store i32 0, i32* %4, align 4
  br label %163

112:                                              ; preds = %84
  br label %121

113:                                              ; preds = %43
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = icmp ne %struct.TYPE_13__* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %113
  store i32 0, i32* %4, align 4
  br label %163

120:                                              ; preds = %113
  br label %121

121:                                              ; preds = %120, %112
  %122 = load i32*, i32** %6, align 8
  %123 = call i64 @avio_r8(i32* %122)
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  %126 = load i32*, i32** %6, align 8
  %127 = call i32 @avio_rb32(i32* %126)
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %121
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 3
  %140 = call i32 @mov_try_read_block(i32* %136, i32 %137, i32* %139)
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %135
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @AV_LOG_ERROR, align 4
  %148 = call i32 @av_log(i32 %146, i32 %147, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %4, align 4
  br label %163

150:                                              ; preds = %135
  br label %151

151:                                              ; preds = %150, %121
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %159 = load i32*, i32** %6, align 8
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %161 = call i32 @mov_parse_auxiliary_info(%struct.TYPE_17__* %157, %struct.TYPE_15__* %158, i32* %159, %struct.TYPE_16__* %160)
  store i32 %161, i32* %4, align 4
  br label %163

162:                                              ; preds = %151
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %162, %156, %143, %119, %111, %104, %78, %69, %36, %25, %18
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @get_current_encryption_info(%struct.TYPE_17__*, %struct.TYPE_16__**, %struct.TYPE_15__**) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i64 @avio_r8(i32*) #1

declare dso_local i32 @avio_rb24(i32*) #1

declare dso_local i32 @avio_rb32(i32*) #1

declare dso_local i32 @MKBETAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @mov_try_read_block(i32*, i32, i32*) #1

declare dso_local i32 @mov_parse_auxiliary_info(%struct.TYPE_17__*, %struct.TYPE_15__*, i32*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
