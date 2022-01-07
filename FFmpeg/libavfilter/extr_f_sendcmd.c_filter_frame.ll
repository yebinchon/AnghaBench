; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_sendcmd.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_sendcmd.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_16__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__*, i64, i64, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i64 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@COMMAND_FLAG_ENTER = common dso_local global i64 0, align 8
@COMMAND_FLAG_LEAVE = common dso_local global i64 0, align 8
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"[%s] interval #%d start_ts:%f end_ts:%f ts:%f\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Processing command #%d target:%s command:%s arg:%s\0A\00", align 1
@AVFILTER_CMD_FLAG_ONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Command reply for command #%d: ret:%s res:%s\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca [1024 x i8], align 16
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %6, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %7, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %199

29:                                               ; preds = %2
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %37 = call i64 @av_rescale_q(i64 %32, i32 %35, i32 %36)
  store i64 %37, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %195, %29
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %198

44:                                               ; preds = %38
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i64 %49
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %12, align 8
  store i32 0, i32* %13, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %75, label %55

55:                                               ; preds = %44
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp sge i64 %56, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load i64, i64* @COMMAND_FLAG_ENTER, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %13, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  br label %75

75:                                               ; preds = %67, %61, %55, %44
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %75
  %81 = load i64, i64* %8, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp sge i64 %81, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load i64, i64* %8, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp slt i64 %87, %90
  br i1 %91, label %100, label %92

92:                                               ; preds = %86, %80
  %93 = load i64, i64* @COMMAND_FLAG_LEAVE, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %13, align 4
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  br label %100

100:                                              ; preds = %92, %86, %75
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %194

103:                                              ; preds = %100
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %105 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @make_command_flags_str(i32* %14, i32 %106)
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = sitofp i64 %113 to double
  %115 = fdiv double %114, 1.000000e+06
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = sitofp i64 %118 to double
  %120 = fdiv double %119, 1.000000e+06
  %121 = load i64, i64* %8, align 8
  %122 = sitofp i64 %121 to double
  %123 = fdiv double %122, 1.000000e+06
  %124 = call i32 (%struct.TYPE_16__*, i32, i8*, i32, i32, ...) @av_log(%struct.TYPE_16__* %104, i32 %105, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %107, i32 %110, double %115, double %120, double %123)
  store i32 0, i32* %10, align 4
  br label %125

125:                                              ; preds = %190, %103
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %129, %132
  br label %134

134:                                              ; preds = %128, %125
  %135 = phi i1 [ false, %125 ], [ %133, %128 ]
  br i1 %135, label %136, label %193

136:                                              ; preds = %134
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i64 %141
  store %struct.TYPE_13__* %142, %struct.TYPE_13__** %15, align 8
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %13, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %189

149:                                              ; preds = %136
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %151 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (%struct.TYPE_16__*, i32, i8*, i32, i32, ...) @av_log(%struct.TYPE_16__* %150, i32 %151, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %154, i32 %157, i32 %160, i32 %163)
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %178 = load i32, i32* @AVFILTER_CMD_FLAG_ONE, align 4
  %179 = call i32 @avfilter_graph_send_command(i32 %167, i32 %170, i32 %173, i32 %176, i8* %177, i32 1024, i32 %178)
  store i32 %179, i32* %11, align 4
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %181 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %11, align 4
  %186 = call i32 @av_err2str(i32 %185)
  %187 = getelementptr inbounds [1024 x i8], [1024 x i8]* %16, i64 0, i64 0
  %188 = call i32 (%struct.TYPE_16__*, i32, i8*, i32, i32, ...) @av_log(%struct.TYPE_16__* %180, i32 %181, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %184, i32 %186, i8* %187)
  br label %189

189:                                              ; preds = %149, %136
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %10, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %10, align 4
  br label %125

193:                                              ; preds = %134
  br label %194

194:                                              ; preds = %193, %100
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %9, align 4
  br label %38

198:                                              ; preds = %38
  br label %199

199:                                              ; preds = %198, %28
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  switch i32 %202, label %213 [
    i32 128, label %203
    i32 129, label %203
  ]

203:                                              ; preds = %199, %199
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %212 = call i32 @ff_filter_frame(i32 %210, %struct.TYPE_14__* %211)
  store i32 %212, i32* %3, align 4
  br label %216

213:                                              ; preds = %199
  %214 = load i32, i32* @ENOSYS, align 4
  %215 = call i32 @AVERROR(i32 %214)
  store i32 %215, i32* %3, align 4
  br label %216

216:                                              ; preds = %213, %203
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i64 @av_rescale_q(i64, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @make_command_flags_str(i32*, i32) #1

declare dso_local i32 @avfilter_graph_send_command(i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @ff_filter_frame(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
