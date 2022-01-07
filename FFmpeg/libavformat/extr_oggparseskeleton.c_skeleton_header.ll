; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparseskeleton.c_skeleton_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparseskeleton.c_skeleton_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__**, %struct.ogg* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.ogg = type { %struct.ogg_stream* }
%struct.ogg_stream = type { i32, i32, i32, i32, i64, i32* }

@AVMEDIA_TYPE_DATA = common dso_local global i32 0, align 4
@OGG_FLAG_EOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fishead\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unknown skeleton version %d.%d\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"fisbone\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Serial number in fisbone doesn't match any stream\0A\00", align 1
@OGG_NOGRANULE_VALUE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"Multiple fisbone for the same stream\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @skeleton_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skeleton_header(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ogg*, align 8
  %7 = alloca %struct.ogg_stream*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load %struct.ogg*, %struct.ogg** %19, align 8
  store %struct.ogg* %20, %struct.ogg** %6, align 8
  %21 = load %struct.ogg*, %struct.ogg** %6, align 8
  %22 = getelementptr inbounds %struct.ogg, %struct.ogg* %21, i32 0, i32 0
  %23 = load %struct.ogg_stream*, %struct.ogg_stream** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %23, i64 %25
  store %struct.ogg_stream* %26, %struct.ogg_stream** %7, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %29, i64 %31
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %8, align 8
  %34 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %35 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %34, i32 0, i32 5
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %38 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  store i32* %41, i32** %9, align 8
  %42 = load i32, i32* @AVMEDIA_TYPE_DATA, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  %47 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %48 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @OGG_FLAG_EOS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %2
  %54 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %55 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %171

59:                                               ; preds = %53, %2
  %60 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %61 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %62, 8
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 -1, i32* %3, align 4
  br label %171

65:                                               ; preds = %59
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @strncmp(i32* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 8)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %119, label %69

69:                                               ; preds = %65
  %70 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %71 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %72, 64
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 -1, i32* %3, align 4
  br label %171

75:                                               ; preds = %69
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 8
  %78 = call i32 @AV_RL16(i32* %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 10
  %81 = call i32 @AV_RL16(i32* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 3
  br i1 %83, label %84, label %93

84:                                               ; preds = %75
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 4
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = load i32, i32* @AV_LOG_WARNING, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %88, i32 %89, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91)
  store i32 -1, i32* %3, align 4
  br label %171

93:                                               ; preds = %84, %75
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 12
  %96 = call i64 @AV_RL64(i32* %95)
  store i64 %96, i64* %12, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 20
  %99 = call i64 @AV_RL64(i32* %98)
  store i64 %99, i64* %13, align 8
  %100 = load i64, i64* %13, align 8
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %93
  %103 = load i64, i64* %12, align 8
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %102
  %106 = load i64, i64* %12, align 8
  %107 = load i64, i64* %13, align 8
  %108 = load i32, i32* @INT_MAX, align 4
  %109 = call i32 @av_reduce(i32* %16, i32* %17, i64 %106, i64 %107, i32 %108)
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %111 = load i32, i32* %17, align 4
  %112 = call i32 @avpriv_set_pts_info(%struct.TYPE_8__* %110, i32 64, i32 1, i32 %111)
  %113 = load i32, i32* %16, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %117 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %116, i32 0, i32 3
  store i32 %113, i32* %117, align 4
  br label %118

118:                                              ; preds = %105, %102, %93
  br label %170

119:                                              ; preds = %65
  %120 = load i32*, i32** %9, align 8
  %121 = call i32 @strncmp(i32* %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %169, label %123

123:                                              ; preds = %119
  %124 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %125 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %126, 52
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store i32 -1, i32* %3, align 4
  br label %171

129:                                              ; preds = %123
  %130 = load %struct.ogg*, %struct.ogg** %6, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 12
  %133 = call i32 @AV_RL32(i32* %132)
  %134 = call i32 @ogg_find_stream(%struct.ogg* %130, i32 %133)
  store i32 %134, i32* %15, align 4
  %135 = load i32*, i32** %9, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 36
  %137 = call i64 @AV_RL64(i32* %136)
  store i64 %137, i64* %14, align 8
  %138 = load i32, i32* %15, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %129
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %142 = load i32, i32* @AV_LOG_WARNING, align 4
  %143 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %141, i32 %142, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %171

144:                                              ; preds = %129
  %145 = load %struct.ogg*, %struct.ogg** %6, align 8
  %146 = getelementptr inbounds %struct.ogg, %struct.ogg* %145, i32 0, i32 0
  %147 = load %struct.ogg_stream*, %struct.ogg_stream** %146, align 8
  %148 = load i32, i32* %15, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %147, i64 %149
  store %struct.ogg_stream* %150, %struct.ogg_stream** %7, align 8
  %151 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %152 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @OGG_NOGRANULE_VALUE, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %144
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %158 = load i32, i32* @AV_LOG_WARNING, align 4
  %159 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %157, i32 %158, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %171

160:                                              ; preds = %144
  %161 = load i64, i64* %14, align 8
  %162 = load i64, i64* @OGG_NOGRANULE_VALUE, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = load i64, i64* %14, align 8
  %166 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %167 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %166, i32 0, i32 4
  store i64 %165, i64* %167, align 8
  br label %168

168:                                              ; preds = %164, %160
  br label %169

169:                                              ; preds = %168, %119
  br label %170

170:                                              ; preds = %169, %118
  store i32 1, i32* %3, align 4
  br label %171

171:                                              ; preds = %170, %156, %140, %128, %87, %74, %64, %58
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @AV_RL16(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i64 @AV_RL64(i32*) #1

declare dso_local i32 @av_reduce(i32*, i32*, i64, i64, i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @ogg_find_stream(%struct.ogg*, i32) #1

declare dso_local i32 @AV_RL32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
