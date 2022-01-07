; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pgssubdec.c_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pgssubdec.c_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32*, i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"PGS sub packet:\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Segment Length %d, Segment Type %x\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Duplicate display segment\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"Unknown subtitle segment type 0x%x, length %d\0A\00", align 1
@AV_EF_EXPLODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32*, %struct.TYPE_13__*)* @decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode(%struct.TYPE_14__* %0, i8* %1, i32* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = call i32 (%struct.TYPE_14__*, i8*, ...) @ff_dlog(%struct.TYPE_14__* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %25

25:                                               ; preds = %44, %4
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %25
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %15, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (%struct.TYPE_14__*, i8*, ...) @ff_dlog(%struct.TYPE_14__* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %15, align 4
  %38 = srem i32 %37, 16
  %39 = icmp eq i32 %38, 15
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %42 = call i32 (%struct.TYPE_14__*, i8*, ...) @ff_dlog(%struct.TYPE_14__* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %29
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %15, align 4
  br label %25

47:                                               ; preds = %25
  %48 = load i32, i32* %15, align 4
  %49 = and i32 %48, 15
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = call i32 (%struct.TYPE_14__*, i8*, ...) @ff_dlog(%struct.TYPE_14__* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i32*, i32** %8, align 8
  store i32 0, i32* %55, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 3
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 -1, i32* %5, align 4
  br label %157

59:                                               ; preds = %54
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32* %63, i32** %12, align 8
  br label %64

64:                                               ; preds = %150, %59
  %65 = load i32*, i32** %10, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = icmp ult i32* %65, %66
  br i1 %67, label %68, label %155

68:                                               ; preds = %64
  %69 = call i32 @bytestream_get_byte(i32** %10)
  store i32 %69, i32* %13, align 4
  %70 = call i32 @bytestream_get_be16(i32** %10)
  store i32 %70, i32* %14, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 (%struct.TYPE_14__*, i8*, ...) @ff_dlog(%struct.TYPE_14__* %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 132
  br i1 %76, label %77, label %88

77:                                               ; preds = %68
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = load i32*, i32** %12, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = ptrtoint i32* %80 to i64
  %83 = ptrtoint i32* %81 to i64
  %84 = sub i64 %82, %83
  %85 = sdiv exact i64 %84, 4
  %86 = icmp sgt i64 %79, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %155

88:                                               ; preds = %77, %68
  store i32 0, i32* %16, align 4
  %89 = load i32, i32* %13, align 4
  switch i32 %89, label %131 [
    i32 130, label %90
    i32 131, label %95
    i32 129, label %100
    i32 128, label %109
    i32 132, label %110
  ]

90:                                               ; preds = %88
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @parse_palette_segment(%struct.TYPE_14__* %91, i32* %92, i32 %93)
  store i32 %94, i32* %16, align 4
  br label %138

95:                                               ; preds = %88
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @parse_object_segment(%struct.TYPE_14__* %96, i32* %97, i32 %98)
  store i32 %99, i32* %16, align 4
  br label %138

100:                                              ; preds = %88
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load i8*, i8** %7, align 8
  %105 = bitcast i8* %104 to %struct.TYPE_12__*
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @parse_presentation_segment(%struct.TYPE_14__* %101, i32* %102, i32 %103, i32 %107)
  store i32 %108, i32* %16, align 4
  br label %138

109:                                              ; preds = %88
  br label %138

110:                                              ; preds = %88
  %111 = load i32*, i32** %8, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %116 = load i32, i32* @AV_LOG_ERROR, align 4
  %117 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %115, i32 %116, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %118 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %118, i32* %16, align 4
  br label %138

119:                                              ; preds = %110
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = load i32*, i32** %10, align 8
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @display_end_segment(%struct.TYPE_14__* %120, i8* %121, i32* %122, i32 %123)
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %16, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = load i32, i32* %16, align 4
  %129 = load i32*, i32** %8, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %127, %119
  br label %138

131:                                              ; preds = %88
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %133 = load i32, i32* @AV_LOG_ERROR, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %14, align 4
  %136 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %132, i32 %133, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %134, i32 %135)
  %137 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %137, i32* %16, align 4
  br label %138

138:                                              ; preds = %131, %130, %114, %109, %100, %95, %90
  %139 = load i32, i32* %16, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %138
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @AV_EF_EXPLODE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %141
  %149 = load i32, i32* %16, align 4
  store i32 %149, i32* %5, align 4
  br label %157

150:                                              ; preds = %141, %138
  %151 = load i32, i32* %14, align 4
  %152 = load i32*, i32** %10, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32* %154, i32** %10, align 8
  br label %64

155:                                              ; preds = %87, %64
  %156 = load i32, i32* %11, align 4
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %155, %148, %58
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i32 @ff_dlog(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @bytestream_get_byte(i32**) #1

declare dso_local i32 @bytestream_get_be16(i32**) #1

declare dso_local i32 @parse_palette_segment(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @parse_object_segment(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @parse_presentation_segment(%struct.TYPE_14__*, i32*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, ...) #1

declare dso_local i32 @display_end_segment(%struct.TYPE_14__*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
