; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_handle_invoke_result.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_handle_invoke_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, double, double, i64, i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"createStream\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Unexpected reply on connect()\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"getStreamLength\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Unexpected reply on getStreamLength()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, i32*)* @handle_invoke_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_invoke_result(%struct.TYPE_24__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  store %struct.TYPE_25__* %12, %struct.TYPE_25__** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @find_tracked_method(%struct.TYPE_24__* %13, i32* %14, i32 10, i8** %7)
  store i32 %15, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %173

19:                                               ; preds = %2
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %173

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %97, label %28

28:                                               ; preds = %24
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %36 = call i32 @gen_release_stream(%struct.TYPE_24__* %34, %struct.TYPE_25__* %35)
  store i32 %36, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %169

39:                                               ; preds = %33
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %42 = call i32 @gen_fcpublish_stream(%struct.TYPE_24__* %40, %struct.TYPE_25__* %41)
  store i32 %42, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %169

45:                                               ; preds = %39
  br label %53

46:                                               ; preds = %28
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %49 = call i32 @gen_window_ack_size(%struct.TYPE_24__* %47, %struct.TYPE_25__* %48)
  store i32 %49, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %169

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %45
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %56 = call i32 @gen_create_stream(%struct.TYPE_24__* %54, %struct.TYPE_25__* %55)
  store i32 %56, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %169

59:                                               ; preds = %53
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %96

64:                                               ; preds = %59
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @gen_fcsubscribe_stream(%struct.TYPE_24__* %70, %struct.TYPE_25__* %71, i64 %74)
  store i32 %75, i32* %8, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %169

78:                                               ; preds = %69
  br label %95

79:                                               ; preds = %64
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %94

84:                                               ; preds = %79
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @gen_fcsubscribe_stream(%struct.TYPE_24__* %85, %struct.TYPE_25__* %86, i64 %89)
  store i32 %90, i32* %8, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %169

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93, %79
  br label %95

95:                                               ; preds = %94, %78
  br label %96

96:                                               ; preds = %95, %59
  br label %168

97:                                               ; preds = %24
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 @strcmp(i8* %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %151, label %101

101:                                              ; preds = %97
  %102 = load i32*, i32** %5, align 8
  %103 = call i64 @read_number_result(i32* %102, double* %9)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %107 = load i32, i32* @AV_LOG_WARNING, align 4
  %108 = call i32 @av_log(%struct.TYPE_24__* %106, i32 %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %113

109:                                              ; preds = %101
  %110 = load double, double* %9, align 8
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 1
  store double %110, double* %112, align 8
  br label %113

113:                                              ; preds = %109, %105
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %113
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %121 = call i32 @gen_publish(%struct.TYPE_24__* %119, %struct.TYPE_25__* %120)
  store i32 %121, i32* %8, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %169

124:                                              ; preds = %118
  br label %150

125:                                              ; preds = %113
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, -1
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %133 = call i32 @gen_get_stream_length(%struct.TYPE_24__* %131, %struct.TYPE_25__* %132)
  store i32 %133, i32* %8, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %169

136:                                              ; preds = %130
  br label %137

137:                                              ; preds = %136, %125
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %140 = call i32 @gen_play(%struct.TYPE_24__* %138, %struct.TYPE_25__* %139)
  store i32 %140, i32* %8, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %169

143:                                              ; preds = %137
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %146 = call i32 @gen_buffer_time(%struct.TYPE_24__* %144, %struct.TYPE_25__* %145)
  store i32 %146, i32* %8, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %169

149:                                              ; preds = %143
  br label %150

150:                                              ; preds = %149, %124
  br label %167

151:                                              ; preds = %97
  %152 = load i8*, i8** %7, align 8
  %153 = call i32 @strcmp(i8* %152, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %166, label %155

155:                                              ; preds = %151
  %156 = load i32*, i32** %5, align 8
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 2
  %159 = call i64 @read_number_result(i32* %156, double* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %163 = load i32, i32* @AV_LOG_WARNING, align 4
  %164 = call i32 @av_log(%struct.TYPE_24__* %162, i32 %163, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %165

165:                                              ; preds = %161, %155
  br label %166

166:                                              ; preds = %165, %151
  br label %167

167:                                              ; preds = %166, %150
  br label %168

168:                                              ; preds = %167, %96
  br label %169

169:                                              ; preds = %168, %148, %142, %135, %123, %92, %77, %58, %51, %44, %38
  %170 = load i8*, i8** %7, align 8
  %171 = call i32 @av_free(i8* %170)
  %172 = load i32, i32* %8, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %169, %22, %17
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @find_tracked_method(%struct.TYPE_24__*, i32*, i32, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @gen_release_stream(%struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local i32 @gen_fcpublish_stream(%struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local i32 @gen_window_ack_size(%struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local i32 @gen_create_stream(%struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local i32 @gen_fcsubscribe_stream(%struct.TYPE_24__*, %struct.TYPE_25__*, i64) #1

declare dso_local i64 @read_number_result(i32*, double*) #1

declare dso_local i32 @av_log(%struct.TYPE_24__*, i32, i8*) #1

declare dso_local i32 @gen_publish(%struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local i32 @gen_get_stream_length(%struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local i32 @gen_play(%struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local i32 @gen_buffer_time(%struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
