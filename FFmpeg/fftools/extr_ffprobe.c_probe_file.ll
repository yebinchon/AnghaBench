; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_probe_file.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_probe_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_23__** }
%struct.TYPE_23__ = type { i32 }

@do_show_frames = common dso_local global i64 0, align 8
@do_count_frames = common dso_local global i64 0, align 8
@do_read_frames = common dso_local global i32 0, align 4
@do_show_packets = common dso_local global i64 0, align 8
@do_count_packets = common dso_local global i64 0, align 8
@do_read_packets = common dso_local global i32 0, align 4
@nb_streams = common dso_local global i32 0, align 4
@nb_streams_frames = common dso_local global i32* null, align 8
@nb_streams_packets = common dso_local global i32* null, align 8
@selected_streams = common dso_local global i32* null, align 8
@stream_specifier = common dso_local global i64 0, align 8
@AVDISCARD_ALL = common dso_local global i32 0, align 4
@WRITER_FLAG_PUT_PACKETS_AND_FRAMES_IN_SAME_CHAPTER = common dso_local global i32 0, align 4
@SECTION_ID_PACKETS_AND_FRAMES = common dso_local global i32 0, align 4
@SECTION_ID_PACKETS = common dso_local global i32 0, align 4
@SECTION_ID_FRAMES = common dso_local global i32 0, align 4
@do_show_programs = common dso_local global i64 0, align 8
@do_show_streams = common dso_local global i64 0, align 8
@do_show_chapters = common dso_local global i64 0, align 8
@do_show_format = common dso_local global i64 0, align 8
@CHECK_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, i8*)* @probe_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_file(%struct.TYPE_24__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_25__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = bitcast %struct.TYPE_25__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  %10 = load i64, i64* @do_show_frames, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* @do_count_frames, align 8
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i1 [ true, %2 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  store i32 %17, i32* @do_read_frames, align 4
  %18 = load i64, i64* @do_show_packets, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i64, i64* @do_count_packets, align 8
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi i1 [ true, %15 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* @do_read_packets, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @open_input_file(%struct.TYPE_25__* %5, i8* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %215

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 0
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* @nb_streams, align 4
  %36 = load i32*, i32** @nb_streams_frames, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 0
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @REALLOCZ_ARRAY_STREAM(i32* %36, i32 0, i32 %40)
  %42 = load i32*, i32** @nb_streams_packets, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 0
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @REALLOCZ_ARRAY_STREAM(i32* %42, i32 0, i32 %46)
  %48 = load i32*, i32** @selected_streams, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 0
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @REALLOCZ_ARRAY_STREAM(i32* %48, i32 0, i32 %52)
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %111, %31
  %55 = load i32, i32* %7, align 4
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 0
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %55, %59
  br i1 %60, label %61, label %114

61:                                               ; preds = %54
  %62 = load i64, i64* @stream_specifier, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 0
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 0
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %70, i64 %72
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %73, align 8
  %75 = load i64, i64* @stream_specifier, align 8
  %76 = call i32 @avformat_match_stream_specifier(%struct.TYPE_21__* %66, %struct.TYPE_23__* %74, i64 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %64
  br label %215

80:                                               ; preds = %64
  %81 = load i32, i32* %6, align 4
  %82 = load i32*, i32** @selected_streams, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %81, i32* %85, align 4
  br label %86

86:                                               ; preds = %80
  store i32 0, i32* %6, align 4
  br label %92

87:                                               ; preds = %61
  %88 = load i32*, i32** @selected_streams, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %87, %86
  %93 = load i32*, i32** @selected_streams, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %92
  %100 = load i32, i32* @AVDISCARD_ALL, align 4
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 0
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %104, i64 %106
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 0
  store i32 %100, i32* %109, align 4
  br label %110

110:                                              ; preds = %99, %92
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %54

114:                                              ; preds = %54
  %115 = load i32, i32* @do_read_frames, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* @do_read_packets, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %174

120:                                              ; preds = %117, %114
  %121 = load i64, i64* @do_show_frames, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %120
  %124 = load i64, i64* @do_show_packets, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %123
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @WRITER_FLAG_PUT_PACKETS_AND_FRAMES_IN_SAME_CHAPTER, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %126
  %136 = load i32, i32* @SECTION_ID_PACKETS_AND_FRAMES, align 4
  store i32 %136, i32* %8, align 4
  br label %148

137:                                              ; preds = %126, %123, %120
  %138 = load i64, i64* @do_show_packets, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load i64, i64* @do_show_frames, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* @SECTION_ID_PACKETS, align 4
  store i32 %144, i32* %8, align 4
  br label %147

145:                                              ; preds = %140, %137
  %146 = load i32, i32* @SECTION_ID_FRAMES, align 4
  store i32 %146, i32* %8, align 4
  br label %147

147:                                              ; preds = %145, %143
  br label %148

148:                                              ; preds = %147, %135
  %149 = load i64, i64* @do_show_frames, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load i64, i64* @do_show_packets, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %151, %148
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @writer_print_section_header(%struct.TYPE_24__* %155, i32 %156)
  br label %158

158:                                              ; preds = %154, %151
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %160 = call i32 @read_packets(%struct.TYPE_24__* %159, %struct.TYPE_25__* %5)
  store i32 %160, i32* %6, align 4
  %161 = load i64, i64* @do_show_frames, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %158
  %164 = load i64, i64* @do_show_packets, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163, %158
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %168 = call i32 @writer_print_section_footer(%struct.TYPE_24__* %167)
  br label %169

169:                                              ; preds = %166, %163
  %170 = load i32, i32* %6, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  br label %215

173:                                              ; preds = %169
  br label %174

174:                                              ; preds = %173, %117
  %175 = load i64, i64* @do_show_programs, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %174
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %179 = call i32 @show_programs(%struct.TYPE_24__* %178, %struct.TYPE_25__* %5)
  store i32 %179, i32* %6, align 4
  %180 = load i32, i32* %6, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %177
  br label %215

183:                                              ; preds = %177
  br label %184

184:                                              ; preds = %183, %174
  %185 = load i64, i64* @do_show_streams, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %184
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %189 = call i32 @show_streams(%struct.TYPE_24__* %188, %struct.TYPE_25__* %5)
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %6, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  br label %215

193:                                              ; preds = %187
  br label %194

194:                                              ; preds = %193, %184
  %195 = load i64, i64* @do_show_chapters, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %194
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %199 = call i32 @show_chapters(%struct.TYPE_24__* %198, %struct.TYPE_25__* %5)
  store i32 %199, i32* %6, align 4
  %200 = load i32, i32* %6, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  br label %215

203:                                              ; preds = %197
  br label %204

204:                                              ; preds = %203, %194
  %205 = load i64, i64* @do_show_format, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %204
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %209 = call i32 @show_format(%struct.TYPE_24__* %208, %struct.TYPE_25__* %5)
  store i32 %209, i32* %6, align 4
  %210 = load i32, i32* %6, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  br label %215

213:                                              ; preds = %207
  br label %214

214:                                              ; preds = %213, %204
  br label %215

215:                                              ; preds = %214, %212, %202, %192, %182, %172, %79, %30
  %216 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 0
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %216, align 8
  %218 = icmp ne %struct.TYPE_21__* %217, null
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = call i32 @close_input_file(%struct.TYPE_25__* %5)
  br label %221

221:                                              ; preds = %219, %215
  %222 = call i32 @av_freep(i32** @nb_streams_frames)
  %223 = call i32 @av_freep(i32** @nb_streams_packets)
  %224 = call i32 @av_freep(i32** @selected_streams)
  %225 = load i32, i32* %6, align 4
  ret i32 %225
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @open_input_file(%struct.TYPE_25__*, i8*) #2

declare dso_local i32 @REALLOCZ_ARRAY_STREAM(i32*, i32, i32) #2

declare dso_local i32 @avformat_match_stream_specifier(%struct.TYPE_21__*, %struct.TYPE_23__*, i64) #2

declare dso_local i32 @writer_print_section_header(%struct.TYPE_24__*, i32) #2

declare dso_local i32 @read_packets(%struct.TYPE_24__*, %struct.TYPE_25__*) #2

declare dso_local i32 @writer_print_section_footer(%struct.TYPE_24__*) #2

declare dso_local i32 @show_programs(%struct.TYPE_24__*, %struct.TYPE_25__*) #2

declare dso_local i32 @show_streams(%struct.TYPE_24__*, %struct.TYPE_25__*) #2

declare dso_local i32 @show_chapters(%struct.TYPE_24__*, %struct.TYPE_25__*) #2

declare dso_local i32 @show_format(%struct.TYPE_24__*, %struct.TYPE_25__*) #2

declare dso_local i32 @close_input_file(%struct.TYPE_25__*) #2

declare dso_local i32 @av_freep(i32**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
