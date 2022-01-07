; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp5.c_vp5_parse_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp5.c_vp5_parse_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__**, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@VP56_FRAME_CURRENT = common dso_local global i64 0, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Interlacing\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid size %dx%d\0A\00", align 1
@VP56_SIZE_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32)* @vp5_parse_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp5_parse_header(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 3
  store i32* %16, i32** %8, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @ff_vp56_init_range_decoder(i32* %18, i32* %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %4, align 4
  br label %165

26:                                               ; preds = %3
  %27 = load i32*, i32** %8, align 8
  %28 = call i64 @vp56_rac_get(i32* %27)
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %33, align 8
  %35 = load i64, i64* @VP56_FRAME_CURRENT, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %34, i64 %35
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32 %31, i32* %38, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = call i64 @vp56_rac_get(i32* %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @vp56_rac_gets(i32* %42, i32 6)
  %44 = call i32 @ff_vp56_init_dequant(%struct.TYPE_9__* %41, i32 %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %46, align 8
  %48 = load i64, i64* @VP56_FRAME_CURRENT, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %47, i64 %48
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %156

54:                                               ; preds = %26
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @vp56_rac_gets(i32* %55, i32 8)
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @vp56_rac_gets(i32* %57, i32 5)
  %59 = icmp sgt i32 %58, 5
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %61, i32* %4, align 4
  br label %165

62:                                               ; preds = %54
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @vp56_rac_gets(i32* %63, i32 2)
  %65 = load i32*, i32** %8, align 8
  %66 = call i64 @vp56_rac_get(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = call i32 @avpriv_report_missing_feature(%struct.TYPE_10__* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %73, i32* %4, align 4
  br label %165

74:                                               ; preds = %62
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @vp56_rac_gets(i32* %75, i32 8)
  store i32 %76, i32* %9, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @vp56_rac_gets(i32* %77, i32 8)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %81, %74
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = load i32, i32* @AV_LOG_ERROR, align 4
  %89 = load i32, i32* %10, align 4
  %90 = shl i32 %89, 4
  %91 = load i32, i32* %9, align 4
  %92 = shl i32 %91, 4
  %93 = call i32 @av_log(%struct.TYPE_10__* %87, i32 %88, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %92)
  %94 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %94, i32* %4, align 4
  br label %165

95:                                               ; preds = %81
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @vp56_rac_gets(i32* %96, i32 8)
  store i32 %97, i32* %13, align 4
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @vp56_rac_gets(i32* %98, i32 8)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %113, label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %113, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %13, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109, %106, %102, %95
  %114 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %114, i32* %4, align 4
  br label %165

115:                                              ; preds = %109
  %116 = load i32*, i32** %8, align 8
  %117 = call i32 @vp56_rac_gets(i32* %116, i32 2)
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %140

122:                                              ; preds = %115
  %123 = load i32, i32* %10, align 4
  %124 = mul nsw i32 16, %123
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %124, %129
  br i1 %130, label %140, label %131

131:                                              ; preds = %122
  %132 = load i32, i32* %9, align 4
  %133 = mul nsw i32 16, %132
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %133, %138
  br i1 %139, label %140, label %155

140:                                              ; preds = %131, %122, %115
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = mul nsw i32 16, %144
  %146 = load i32, i32* %9, align 4
  %147 = mul nsw i32 16, %146
  %148 = call i32 @ff_set_dimensions(%struct.TYPE_10__* %143, i32 %145, i32 %147)
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %140
  %152 = load i32, i32* %14, align 4
  store i32 %152, i32* %4, align 4
  br label %165

153:                                              ; preds = %140
  %154 = load i32, i32* @VP56_SIZE_CHANGE, align 4
  store i32 %154, i32* %4, align 4
  br label %165

155:                                              ; preds = %131
  br label %164

156:                                              ; preds = %26
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %156
  %162 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %162, i32* %4, align 4
  br label %165

163:                                              ; preds = %156
  br label %164

164:                                              ; preds = %163, %155
  store i32 0, i32* %4, align 4
  br label %165

165:                                              ; preds = %164, %161, %153, %151, %113, %84, %68, %60, %24
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @ff_vp56_init_range_decoder(i32*, i32*, i32) #1

declare dso_local i64 @vp56_rac_get(i32*) #1

declare dso_local i32 @ff_vp56_init_dequant(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @vp56_rac_gets(i32*, i32) #1

declare dso_local i32 @avpriv_report_missing_feature(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, i32, i32) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
