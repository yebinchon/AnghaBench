; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_transcode_aac.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_transcode_aac.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32 }

@AVERROR_EXIT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Usage: %s <input file> <output file>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %8, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %16 = load i32, i32* @AVERROR_EXIT, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 3
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @stderr, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = call i32 @exit(i32 1) #3
  unreachable

26:                                               ; preds = %2
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @open_input_file(i8* %29, %struct.TYPE_23__** %6, %struct.TYPE_24__** %8)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %128

33:                                               ; preds = %26
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 2
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %38 = call i64 @open_output_file(i8* %36, %struct.TYPE_24__* %37, %struct.TYPE_23__** %7, %struct.TYPE_24__** %9)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %128

41:                                               ; preds = %33
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %44 = call i64 @init_resampler(%struct.TYPE_24__* %42, %struct.TYPE_24__* %43, i32** %10)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %128

47:                                               ; preds = %41
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %49 = call i64 @init_fifo(i32** %11, %struct.TYPE_24__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %128

52:                                               ; preds = %47
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %54 = call i64 @write_output_file_header(%struct.TYPE_23__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %128

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57, %121
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %62

62:                                               ; preds = %80, %58
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @av_audio_fifo_size(i32* %63)
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %62
  %68 = load i32*, i32** %11, align 8
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i64 @read_decode_convert_and_store(i32* %68, %struct.TYPE_23__* %69, %struct.TYPE_24__* %70, %struct.TYPE_24__* %71, i32* %72, i32* %14)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %128

76:                                               ; preds = %67
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %81

80:                                               ; preds = %76
  br label %62

81:                                               ; preds = %79, %62
  br label %82

82:                                               ; preds = %105, %81
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @av_audio_fifo_size(i32* %83)
  %85 = load i32, i32* %13, align 4
  %86 = icmp sge i32 %84, %85
  br i1 %86, label %96, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32*, i32** %11, align 8
  %92 = call i32 @av_audio_fifo_size(i32* %91)
  %93 = icmp sgt i32 %92, 0
  br label %94

94:                                               ; preds = %90, %87
  %95 = phi i1 [ false, %87 ], [ %93, %90 ]
  br label %96

96:                                               ; preds = %94, %82
  %97 = phi i1 [ true, %82 ], [ %95, %94 ]
  br i1 %97, label %98, label %106

98:                                               ; preds = %96
  %99 = load i32*, i32** %11, align 8
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %102 = call i64 @load_encode_and_write(i32* %99, %struct.TYPE_23__* %100, %struct.TYPE_24__* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %128

105:                                              ; preds = %98
  br label %82

106:                                              ; preds = %96
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %106
  br label %110

110:                                              ; preds = %117, %109
  store i32 0, i32* %15, align 4
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %113 = call i64 @encode_audio_frame(i32* null, %struct.TYPE_23__* %111, %struct.TYPE_24__* %112, i32* %15)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %128

116:                                              ; preds = %110
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %15, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %110, label %120

120:                                              ; preds = %117
  br label %122

121:                                              ; preds = %106
  br label %58

122:                                              ; preds = %120
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %124 = call i64 @write_output_file_trailer(%struct.TYPE_23__* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %128

127:                                              ; preds = %122
  store i32 0, i32* %12, align 4
  br label %128

128:                                              ; preds = %127, %126, %115, %104, %75, %56, %51, %46, %40, %32
  %129 = load i32*, i32** %11, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32*, i32** %11, align 8
  %133 = call i32 @av_audio_fifo_free(i32* %132)
  br label %134

134:                                              ; preds = %131, %128
  %135 = call i32 @swr_free(i32** %10)
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %137 = icmp ne %struct.TYPE_24__* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = call i32 @avcodec_free_context(%struct.TYPE_24__** %9)
  br label %140

140:                                              ; preds = %138, %134
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %142 = icmp ne %struct.TYPE_23__* %141, null
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 0
  %146 = call i32 @avio_closep(i32* %145)
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %148 = call i32 @avformat_free_context(%struct.TYPE_23__* %147)
  br label %149

149:                                              ; preds = %143, %140
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %151 = icmp ne %struct.TYPE_24__* %150, null
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = call i32 @avcodec_free_context(%struct.TYPE_24__** %8)
  br label %154

154:                                              ; preds = %152, %149
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %156 = icmp ne %struct.TYPE_23__* %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = call i32 @avformat_close_input(%struct.TYPE_23__** %6)
  br label %159

159:                                              ; preds = %157, %154
  %160 = load i32, i32* %12, align 4
  ret i32 %160
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @open_input_file(i8*, %struct.TYPE_23__**, %struct.TYPE_24__**) #1

declare dso_local i64 @open_output_file(i8*, %struct.TYPE_24__*, %struct.TYPE_23__**, %struct.TYPE_24__**) #1

declare dso_local i64 @init_resampler(%struct.TYPE_24__*, %struct.TYPE_24__*, i32**) #1

declare dso_local i64 @init_fifo(i32**, %struct.TYPE_24__*) #1

declare dso_local i64 @write_output_file_header(%struct.TYPE_23__*) #1

declare dso_local i32 @av_audio_fifo_size(i32*) #1

declare dso_local i64 @read_decode_convert_and_store(i32*, %struct.TYPE_23__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32*, i32*) #1

declare dso_local i64 @load_encode_and_write(i32*, %struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i64 @encode_audio_frame(i32*, %struct.TYPE_23__*, %struct.TYPE_24__*, i32*) #1

declare dso_local i64 @write_output_file_trailer(%struct.TYPE_23__*) #1

declare dso_local i32 @av_audio_fifo_free(i32*) #1

declare dso_local i32 @swr_free(i32**) #1

declare dso_local i32 @avcodec_free_context(%struct.TYPE_24__**) #1

declare dso_local i32 @avio_closep(i32*) #1

declare dso_local i32 @avformat_free_context(%struct.TYPE_23__*) #1

declare dso_local i32 @avformat_close_input(%struct.TYPE_23__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
