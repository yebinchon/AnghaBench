; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_join.c_parse_maps.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_join.c_parse_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Missing separator '-' in channel map '%s'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid output channel: %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Channel map describes more than one output channel.\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"Output channel '%s' is not present in requested channel layout.\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Multiple maps for output channel '%s'.\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Invalid input stream index: %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Invalid input channel: %s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"Channel map describes more than one input channel.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @parse_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_maps(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %4, align 8
  store i8 124, i8* %5, align 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %6, align 8
  br label %21

21:                                               ; preds = %192, %1
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %24, %21
  %30 = phi i1 [ false, %21 ], [ %28, %24 ]
  br i1 %30, label %31, label %194

31:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %5, align 1
  %34 = call i8* @strchr(i8* %32, i8 signext %33)
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %8, align 8
  store i8 0, i8* %38, align 1
  br label %40

40:                                               ; preds = %37, %31
  %41 = load i8*, i8** %6, align 8
  %42 = call i8* @strchr(i8* %41, i8 signext 45)
  store i8* %42, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = load i32, i32* @AV_LOG_ERROR, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %45, i32 %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = call i32 @AVERROR(i32 %49)
  store i32 %50, i32* %2, align 4
  br label %195

51:                                               ; preds = %40
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %7, align 8
  store i8 0, i8* %52, align 1
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 (i8*, ...) bitcast (i32 (...)* @av_get_channel_layout to i32 (i8*, ...)*)(i8* %54)
  store i32 %55, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = load i32, i32* @AV_LOG_ERROR, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %58, i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = call i32 @AVERROR(i32 %62)
  store i32 %63, i32* %2, align 4
  br label %195

64:                                               ; preds = %51
  %65 = load i32, i32* %11, align 4
  %66 = call i32 (i32, ...) bitcast (i32 (...)* @av_get_channel_layout_nb_channels to i32 (i32, ...)*)(i32 %65)
  %67 = icmp ne i32 %66, 1
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = load i32, i32* @AV_LOG_ERROR, align 4
  %71 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %69, i32 %70, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = call i32 @AVERROR(i32 %72)
  store i32 %73, i32* %2, align 4
  br label %195

74:                                               ; preds = %64
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %75, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %74
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %83 = load i32, i32* @AV_LOG_ERROR, align 4
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %82, i32 %83, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i8* %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = call i32 @AVERROR(i32 %86)
  store i32 %87, i32* %2, align 4
  br label %195

88:                                               ; preds = %74
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @av_get_channel_layout_channel_index(i32 %91, i32 %92)
  store i32 %93, i32* %13, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %88
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = load i32, i32* @AV_LOG_ERROR, align 4
  %106 = load i8*, i8** %7, align 8
  %107 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %104, i32 %105, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = call i32 @AVERROR(i32 %108)
  store i32 %109, i32* %2, align 4
  br label %195

110:                                              ; preds = %88
  %111 = load i8*, i8** %6, align 8
  %112 = call i32 @strtol(i8* %111, i8** %6, i32 0)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %12, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = icmp sge i32 %116, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %115, %110
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %123 = load i32, i32* @AV_LOG_ERROR, align 4
  %124 = load i32, i32* %12, align 4
  %125 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %122, i32 %123, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @EINVAL, align 4
  %127 = call i32 @AVERROR(i32 %126)
  store i32 %127, i32* %2, align 4
  br label %195

128:                                              ; preds = %115
  %129 = load i8*, i8** %6, align 8
  %130 = load i8, i8* %129, align 1
  %131 = icmp ne i8 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i8*, i8** %6, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %6, align 8
  br label %135

135:                                              ; preds = %132, %128
  %136 = load i8*, i8** %6, align 8
  %137 = call i32 @strtol(i8* %136, i8** %9, i32 0)
  store i32 %137, i32* %14, align 4
  %138 = load i8*, i8** %9, align 8
  %139 = load i8*, i8** %6, align 8
  %140 = icmp eq i8* %138, %139
  br i1 %140, label %141, label %163

141:                                              ; preds = %135
  %142 = load i8*, i8** %6, align 8
  %143 = call i32 (i8*, ...) bitcast (i32 (...)* @av_get_channel_layout to i32 (i8*, ...)*)(i8* %142)
  store i32 %143, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %141
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %147 = load i32, i32* @AV_LOG_ERROR, align 4
  %148 = load i8*, i8** %6, align 8
  %149 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %146, i32 %147, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %148)
  %150 = load i32, i32* @EINVAL, align 4
  %151 = call i32 @AVERROR(i32 %150)
  store i32 %151, i32* %2, align 4
  br label %195

152:                                              ; preds = %141
  %153 = load i32, i32* %10, align 4
  %154 = call i32 (i32, ...) bitcast (i32 (...)* @av_get_channel_layout_nb_channels to i32 (i32, ...)*)(i32 %153)
  %155 = icmp ne i32 %154, 1
  br i1 %155, label %156, label %162

156:                                              ; preds = %152
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %158 = load i32, i32* @AV_LOG_ERROR, align 4
  %159 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %157, i32 %158, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  %160 = load i32, i32* @EINVAL, align 4
  %161 = call i32 @AVERROR(i32 %160)
  store i32 %161, i32* %2, align 4
  br label %195

162:                                              ; preds = %152
  br label %163

163:                                              ; preds = %162, %135
  %164 = load i32, i32* %12, align 4
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 3
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  store i32 %164, i32* %171, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %163
  %175 = load i32, i32* %10, align 4
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 3
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = load i32, i32* %13, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  store i32 %175, i32* %182, align 4
  br label %192

183:                                              ; preds = %163
  %184 = load i32, i32* %14, align 4
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 3
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = load i32, i32* %13, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 2
  store i32 %184, i32* %191, align 4
  br label %192

192:                                              ; preds = %183, %174
  %193 = load i8*, i8** %8, align 8
  store i8* %193, i8** %6, align 8
  br label %21

194:                                              ; preds = %29
  store i32 0, i32* %2, align 4
  br label %195

195:                                              ; preds = %194, %156, %145, %121, %103, %81, %68, %57, %44
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_get_channel_layout(...) #1

declare dso_local i32 @av_get_channel_layout_nb_channels(...) #1

declare dso_local i32 @av_get_channel_layout_channel_index(i32, i32) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
