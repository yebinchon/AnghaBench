; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_get_vt_h264_profile_level.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_get_vt_h264_profile_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i64 }

@compat_keys = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@kVTProfileLevel_H264_Baseline_1_3 = common dso_local global i32* null, align 8
@kVTProfileLevel_H264_Baseline_3_0 = common dso_local global i32* null, align 8
@kVTProfileLevel_H264_Baseline_3_1 = common dso_local global i32* null, align 8
@kVTProfileLevel_H264_Baseline_3_2 = common dso_local global i32* null, align 8
@kVTProfileLevel_H264_Baseline_4_1 = common dso_local global i32* null, align 8
@kVTProfileLevel_H264_Main_3_0 = common dso_local global i32* null, align 8
@kVTProfileLevel_H264_Main_3_1 = common dso_local global i32* null, align 8
@kVTProfileLevel_H264_Main_3_2 = common dso_local global i32* null, align 8
@kVTProfileLevel_H264_Main_4_0 = common dso_local global i32* null, align 8
@kVTProfileLevel_H264_Main_4_1 = common dso_local global i32* null, align 8
@kVTProfileLevel_H264_Main_5_0 = common dso_local global i32* null, align 8
@kVTProfileLevel_H264_High_5_0 = common dso_local global i32* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid Profile/Level.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32**)* @get_vt_h264_profile_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_vt_h264_profile_level(%struct.TYPE_7__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 132
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 128, i32 131
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %21, %16, %2
  %29 = load i32**, i32*** %5, align 8
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %151 [
    i32 132, label %31
    i32 131, label %32
    i32 128, label %70
    i32 129, label %105
    i32 130, label %140
  ]

31:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %160

32:                                               ; preds = %28
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  switch i64 %35, label %69 [
    i64 0, label %36
    i64 13, label %39
    i64 30, label %42
    i64 31, label %45
    i64 32, label %48
    i64 40, label %51
    i64 41, label %54
    i64 42, label %57
    i64 50, label %60
    i64 51, label %63
    i64 52, label %66
  ]

36:                                               ; preds = %32
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @compat_keys, i32 0, i32 20), align 8
  %38 = load i32**, i32*** %5, align 8
  store i32* %37, i32** %38, align 8
  br label %69

39:                                               ; preds = %32
  %40 = load i32*, i32** @kVTProfileLevel_H264_Baseline_1_3, align 8
  %41 = load i32**, i32*** %5, align 8
  store i32* %40, i32** %41, align 8
  br label %69

42:                                               ; preds = %32
  %43 = load i32*, i32** @kVTProfileLevel_H264_Baseline_3_0, align 8
  %44 = load i32**, i32*** %5, align 8
  store i32* %43, i32** %44, align 8
  br label %69

45:                                               ; preds = %32
  %46 = load i32*, i32** @kVTProfileLevel_H264_Baseline_3_1, align 8
  %47 = load i32**, i32*** %5, align 8
  store i32* %46, i32** %47, align 8
  br label %69

48:                                               ; preds = %32
  %49 = load i32*, i32** @kVTProfileLevel_H264_Baseline_3_2, align 8
  %50 = load i32**, i32*** %5, align 8
  store i32* %49, i32** %50, align 8
  br label %69

51:                                               ; preds = %32
  %52 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @compat_keys, i32 0, i32 19), align 8
  %53 = load i32**, i32*** %5, align 8
  store i32* %52, i32** %53, align 8
  br label %69

54:                                               ; preds = %32
  %55 = load i32*, i32** @kVTProfileLevel_H264_Baseline_4_1, align 8
  %56 = load i32**, i32*** %5, align 8
  store i32* %55, i32** %56, align 8
  br label %69

57:                                               ; preds = %32
  %58 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @compat_keys, i32 0, i32 18), align 8
  %59 = load i32**, i32*** %5, align 8
  store i32* %58, i32** %59, align 8
  br label %69

60:                                               ; preds = %32
  %61 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @compat_keys, i32 0, i32 17), align 8
  %62 = load i32**, i32*** %5, align 8
  store i32* %61, i32** %62, align 8
  br label %69

63:                                               ; preds = %32
  %64 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @compat_keys, i32 0, i32 16), align 8
  %65 = load i32**, i32*** %5, align 8
  store i32* %64, i32** %65, align 8
  br label %69

66:                                               ; preds = %32
  %67 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @compat_keys, i32 0, i32 15), align 8
  %68 = load i32**, i32*** %5, align 8
  store i32* %67, i32** %68, align 8
  br label %69

69:                                               ; preds = %32, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36
  br label %151

70:                                               ; preds = %28
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  switch i64 %73, label %104 [
    i64 0, label %74
    i64 30, label %77
    i64 31, label %80
    i64 32, label %83
    i64 40, label %86
    i64 41, label %89
    i64 42, label %92
    i64 50, label %95
    i64 51, label %98
    i64 52, label %101
  ]

74:                                               ; preds = %70
  %75 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @compat_keys, i32 0, i32 14), align 8
  %76 = load i32**, i32*** %5, align 8
  store i32* %75, i32** %76, align 8
  br label %104

77:                                               ; preds = %70
  %78 = load i32*, i32** @kVTProfileLevel_H264_Main_3_0, align 8
  %79 = load i32**, i32*** %5, align 8
  store i32* %78, i32** %79, align 8
  br label %104

80:                                               ; preds = %70
  %81 = load i32*, i32** @kVTProfileLevel_H264_Main_3_1, align 8
  %82 = load i32**, i32*** %5, align 8
  store i32* %81, i32** %82, align 8
  br label %104

83:                                               ; preds = %70
  %84 = load i32*, i32** @kVTProfileLevel_H264_Main_3_2, align 8
  %85 = load i32**, i32*** %5, align 8
  store i32* %84, i32** %85, align 8
  br label %104

86:                                               ; preds = %70
  %87 = load i32*, i32** @kVTProfileLevel_H264_Main_4_0, align 8
  %88 = load i32**, i32*** %5, align 8
  store i32* %87, i32** %88, align 8
  br label %104

89:                                               ; preds = %70
  %90 = load i32*, i32** @kVTProfileLevel_H264_Main_4_1, align 8
  %91 = load i32**, i32*** %5, align 8
  store i32* %90, i32** %91, align 8
  br label %104

92:                                               ; preds = %70
  %93 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @compat_keys, i32 0, i32 13), align 8
  %94 = load i32**, i32*** %5, align 8
  store i32* %93, i32** %94, align 8
  br label %104

95:                                               ; preds = %70
  %96 = load i32*, i32** @kVTProfileLevel_H264_Main_5_0, align 8
  %97 = load i32**, i32*** %5, align 8
  store i32* %96, i32** %97, align 8
  br label %104

98:                                               ; preds = %70
  %99 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @compat_keys, i32 0, i32 12), align 8
  %100 = load i32**, i32*** %5, align 8
  store i32* %99, i32** %100, align 8
  br label %104

101:                                              ; preds = %70
  %102 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @compat_keys, i32 0, i32 11), align 8
  %103 = load i32**, i32*** %5, align 8
  store i32* %102, i32** %103, align 8
  br label %104

104:                                              ; preds = %70, %101, %98, %95, %92, %89, %86, %83, %80, %77, %74
  br label %151

105:                                              ; preds = %28
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  switch i64 %108, label %139 [
    i64 0, label %109
    i64 30, label %112
    i64 31, label %115
    i64 32, label %118
    i64 40, label %121
    i64 41, label %124
    i64 42, label %127
    i64 50, label %130
    i64 51, label %133
    i64 52, label %136
  ]

109:                                              ; preds = %105
  %110 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @compat_keys, i32 0, i32 10), align 8
  %111 = load i32**, i32*** %5, align 8
  store i32* %110, i32** %111, align 8
  br label %139

112:                                              ; preds = %105
  %113 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @compat_keys, i32 0, i32 9), align 8
  %114 = load i32**, i32*** %5, align 8
  store i32* %113, i32** %114, align 8
  br label %139

115:                                              ; preds = %105
  %116 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @compat_keys, i32 0, i32 8), align 8
  %117 = load i32**, i32*** %5, align 8
  store i32* %116, i32** %117, align 8
  br label %139

118:                                              ; preds = %105
  %119 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @compat_keys, i32 0, i32 7), align 8
  %120 = load i32**, i32*** %5, align 8
  store i32* %119, i32** %120, align 8
  br label %139

121:                                              ; preds = %105
  %122 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @compat_keys, i32 0, i32 6), align 8
  %123 = load i32**, i32*** %5, align 8
  store i32* %122, i32** %123, align 8
  br label %139

124:                                              ; preds = %105
  %125 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @compat_keys, i32 0, i32 5), align 8
  %126 = load i32**, i32*** %5, align 8
  store i32* %125, i32** %126, align 8
  br label %139

127:                                              ; preds = %105
  %128 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @compat_keys, i32 0, i32 4), align 8
  %129 = load i32**, i32*** %5, align 8
  store i32* %128, i32** %129, align 8
  br label %139

130:                                              ; preds = %105
  %131 = load i32*, i32** @kVTProfileLevel_H264_High_5_0, align 8
  %132 = load i32**, i32*** %5, align 8
  store i32* %131, i32** %132, align 8
  br label %139

133:                                              ; preds = %105
  %134 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @compat_keys, i32 0, i32 3), align 8
  %135 = load i32**, i32*** %5, align 8
  store i32* %134, i32** %135, align 8
  br label %139

136:                                              ; preds = %105
  %137 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @compat_keys, i32 0, i32 2), align 8
  %138 = load i32**, i32*** %5, align 8
  store i32* %137, i32** %138, align 8
  br label %139

139:                                              ; preds = %105, %136, %133, %130, %127, %124, %121, %118, %115, %112, %109
  br label %151

140:                                              ; preds = %28
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  switch i64 %143, label %150 [
    i64 0, label %144
    i64 50, label %147
  ]

144:                                              ; preds = %140
  %145 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @compat_keys, i32 0, i32 1), align 8
  %146 = load i32**, i32*** %5, align 8
  store i32* %145, i32** %146, align 8
  br label %150

147:                                              ; preds = %140
  %148 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @compat_keys, i32 0, i32 0), align 8
  %149 = load i32**, i32*** %5, align 8
  store i32* %148, i32** %149, align 8
  br label %150

150:                                              ; preds = %140, %147, %144
  br label %151

151:                                              ; preds = %28, %150, %139, %104, %69
  %152 = load i32**, i32*** %5, align 8
  %153 = load i32*, i32** %152, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %159, label %155

155:                                              ; preds = %151
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %157 = load i32, i32* @AV_LOG_ERROR, align 4
  %158 = call i32 @av_log(%struct.TYPE_7__* %156, i32 %157, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %160

159:                                              ; preds = %151
  store i32 1, i32* %3, align 4
  br label %160

160:                                              ; preds = %159, %155, %31
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
