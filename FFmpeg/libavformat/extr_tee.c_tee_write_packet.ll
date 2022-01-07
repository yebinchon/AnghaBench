; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_tee.c_tee_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_tee.c_tee_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_22__**, %struct.TYPE_23__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32*, %struct.TYPE_26__**, %struct.TYPE_25__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Error while sending packet to bitstream filter: %s\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*)* @tee_write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tee_write_packet(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_24__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  store %struct.TYPE_23__* %16, %struct.TYPE_23__** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %174, %2
  %18 = load i32, i32* %11, align 4
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %177

23:                                               ; preds = %17
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %30, align 8
  store %struct.TYPE_25__* %31, %struct.TYPE_25__** %6, align 8
  %32 = icmp ne %struct.TYPE_25__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %174

34:                                               ; preds = %23
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %36 = icmp ne %struct.TYPE_24__* %35, null
  br i1 %36, label %56, label %37

37:                                               ; preds = %34
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %39 = call i32 @av_interleaved_write_frame(%struct.TYPE_25__* %38, %struct.TYPE_24__* null)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @tee_process_slave_failure(%struct.TYPE_25__* %43, i32 %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %52, %49, %42
  br label %55

55:                                               ; preds = %54, %37
  br label %174

56:                                               ; preds = %34
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %12, align 4
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %56
  br label %174

75:                                               ; preds = %56
  %76 = call i32 @memset(%struct.TYPE_24__* %8, i32 0, i32 4)
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %78 = call i32 @av_packet_ref(%struct.TYPE_24__* %8, %struct.TYPE_24__* %77)
  store i32 %78, i32* %10, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %9, align 4
  br label %174

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %85, %75
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %94, i64 %96
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %97, align 8
  store %struct.TYPE_26__* %98, %struct.TYPE_26__** %7, align 8
  %99 = load i32, i32* %13, align 4
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  store i32 %99, i32* %100, align 4
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %102 = call i32 @av_bsf_send_packet(%struct.TYPE_26__* %101, %struct.TYPE_24__* %8)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %86
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %107 = load i32, i32* @AV_LOG_ERROR, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @av_err2str(i32 %108)
  %110 = call i32 @av_log(%struct.TYPE_25__* %106, i32 %107, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @tee_process_slave_failure(%struct.TYPE_25__* %111, i32 %112, i32 %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %105
  %118 = load i32, i32* %10, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %120, %117, %105
  br label %123

123:                                              ; preds = %122, %86
  br label %124

124:                                              ; preds = %123, %156
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %126 = call i32 @av_bsf_receive_packet(%struct.TYPE_26__* %125, %struct.TYPE_24__* %8)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @EAGAIN, align 4
  %129 = call i32 @AVERROR(i32 %128)
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  store i32 0, i32* %10, align 4
  br label %157

132:                                              ; preds = %124
  %133 = load i32, i32* %10, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  br label %157

136:                                              ; preds = %132
  br label %137

137:                                              ; preds = %136
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %142, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %143, i64 %145
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @av_packet_rescale_ts(%struct.TYPE_24__* %8, i32 %140, i32 %149)
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %152 = call i32 @av_interleaved_write_frame(%struct.TYPE_25__* %151, %struct.TYPE_24__* %8)
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %137
  br label %157

156:                                              ; preds = %137
  br label %124

157:                                              ; preds = %155, %135, %131
  %158 = load i32, i32* %10, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %157
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @tee_process_slave_failure(%struct.TYPE_25__* %161, i32 %162, i32 %163)
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %160
  %168 = load i32, i32* %10, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = load i32, i32* %10, align 4
  store i32 %171, i32* %9, align 4
  br label %172

172:                                              ; preds = %170, %167, %160
  br label %173

173:                                              ; preds = %172, %157
  br label %174

174:                                              ; preds = %173, %83, %74, %55, %33
  %175 = load i32, i32* %11, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %11, align 4
  br label %17

177:                                              ; preds = %17
  %178 = load i32, i32* %9, align 4
  ret i32 %178
}

declare dso_local i32 @av_interleaved_write_frame(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @tee_process_slave_failure(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @av_packet_ref(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @av_bsf_send_packet(%struct.TYPE_26__*, %struct.TYPE_24__*) #1

declare dso_local i32 @av_log(%struct.TYPE_25__*, i32, i8*, i32) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @av_bsf_receive_packet(%struct.TYPE_26__*, %struct.TYPE_24__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_packet_rescale_ts(%struct.TYPE_24__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
