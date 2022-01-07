; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_hls_read_seek.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_hls_read_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_11__**, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i64, %struct.playlist**, %struct.TYPE_9__* }
%struct.playlist = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_12__, i32, i64, i32, i32, i64, i32, %struct.TYPE_11__** }
%struct.TYPE_12__ = type { i64, i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i32 }

@AVSEEK_FLAG_BYTE = common dso_local global i32 0, align 4
@AVFMTCTX_UNSEEKABLE = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AV_TIME_BASE = common dso_local global i32 0, align 4
@AVSEEK_FLAG_BACKWARD = common dso_local global i32 0, align 4
@AV_ROUND_DOWN = common dso_local global i32 0, align 4
@AV_ROUND_UP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AVSEEK_FLAG_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i64, i32)* @hls_read_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hls_read_seek(%struct.TYPE_14__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.playlist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.playlist*, align 8
  %20 = alloca %struct.playlist*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %10, align 8
  store %struct.playlist* null, %struct.playlist** %11, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @AVSEEK_FLAG_BYTE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @AVFMTCTX_UNSEEKABLE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28, %4
  %38 = load i32, i32* @ENOSYS, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %5, align 4
  br label %250

40:                                               ; preds = %28
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %51

47:                                               ; preds = %40
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  br label %51

51:                                               ; preds = %47, %46
  %52 = phi i64 [ 0, %46 ], [ %50, %47 ]
  store i64 %52, i64* %16, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i32, i32* @AV_TIME_BASE, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %57, i64 %59
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @AVSEEK_FLAG_BACKWARD, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %51
  %70 = load i32, i32* @AV_ROUND_DOWN, align 4
  br label %73

71:                                               ; preds = %51
  %72 = load i32, i32* @AV_ROUND_UP, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = call i64 @av_rescale_rnd(i64 %53, i32 %54, i32 %64, i32 %74)
  store i64 %75, i64* %17, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %86

82:                                               ; preds = %73
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  br label %86

86:                                               ; preds = %82, %81
  %87 = phi i64 [ 0, %81 ], [ %85, %82 ]
  store i64 %87, i64* %18, align 8
  %88 = load i64, i64* %18, align 8
  %89 = icmp slt i64 0, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* %17, align 8
  %93 = load i64, i64* %16, align 8
  %94 = sub nsw i64 %92, %93
  %95 = icmp slt i64 %91, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i32, i32* @EIO, align 4
  %98 = call i32 @AVERROR(i32 %97)
  store i32 %98, i32* %5, align 4
  br label %250

99:                                               ; preds = %90, %86
  store i32 0, i32* %12, align 4
  br label %100

100:                                              ; preds = %144, %99
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %147

106:                                              ; preds = %100
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 3
  %109 = load %struct.playlist**, %struct.playlist*** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.playlist*, %struct.playlist** %109, i64 %111
  %113 = load %struct.playlist*, %struct.playlist** %112, align 8
  store %struct.playlist* %113, %struct.playlist** %19, align 8
  store i32 0, i32* %14, align 4
  br label %114

114:                                              ; preds = %140, %106
  %115 = load i32, i32* %14, align 4
  %116 = load %struct.playlist*, %struct.playlist** %19, align 8
  %117 = getelementptr inbounds %struct.playlist, %struct.playlist* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %143

120:                                              ; preds = %114
  %121 = load %struct.playlist*, %struct.playlist** %19, align 8
  %122 = getelementptr inbounds %struct.playlist, %struct.playlist* %121, i32 0, i32 13
  %123 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %122, align 8
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %123, i64 %125
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %130, i64 %132
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = icmp eq %struct.TYPE_11__* %127, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %120
  %137 = load %struct.playlist*, %struct.playlist** %19, align 8
  store %struct.playlist* %137, %struct.playlist** %11, align 8
  %138 = load i32, i32* %14, align 4
  store i32 %138, i32* %15, align 4
  br label %143

139:                                              ; preds = %120
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %14, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %14, align 4
  br label %114

143:                                              ; preds = %136, %114
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %12, align 4
  br label %100

147:                                              ; preds = %100
  %148 = load %struct.playlist*, %struct.playlist** %11, align 8
  %149 = icmp ne %struct.playlist* %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %152 = load %struct.playlist*, %struct.playlist** %11, align 8
  %153 = load i64, i64* %17, align 8
  %154 = call i32 @find_timestamp_in_playlist(%struct.TYPE_13__* %151, %struct.playlist* %152, i64 %153, i32* %13)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %150, %147
  %157 = load i32, i32* @EIO, align 4
  %158 = call i32 @AVERROR(i32 %157)
  store i32 %158, i32* %5, align 4
  br label %250

159:                                              ; preds = %150
  %160 = load i32, i32* %13, align 4
  %161 = load %struct.playlist*, %struct.playlist** %11, align 8
  %162 = getelementptr inbounds %struct.playlist, %struct.playlist* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %15, align 4
  %164 = load %struct.playlist*, %struct.playlist** %11, align 8
  %165 = getelementptr inbounds %struct.playlist, %struct.playlist* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  store i32 0, i32* %12, align 4
  br label %166

166:                                              ; preds = %243, %159
  %167 = load i32, i32* %12, align 4
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %172, label %246

172:                                              ; preds = %166
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 3
  %175 = load %struct.playlist**, %struct.playlist*** %174, align 8
  %176 = load i32, i32* %12, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.playlist*, %struct.playlist** %175, i64 %177
  %179 = load %struct.playlist*, %struct.playlist** %178, align 8
  store %struct.playlist* %179, %struct.playlist** %20, align 8
  %180 = load %struct.playlist*, %struct.playlist** %20, align 8
  %181 = getelementptr inbounds %struct.playlist, %struct.playlist* %180, i32 0, i32 10
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.playlist*, %struct.playlist** %20, align 8
  %184 = getelementptr inbounds %struct.playlist, %struct.playlist* %183, i32 0, i32 12
  %185 = call i32 @ff_format_io_close(i32 %182, i32* %184)
  %186 = load %struct.playlist*, %struct.playlist** %20, align 8
  %187 = getelementptr inbounds %struct.playlist, %struct.playlist* %186, i32 0, i32 11
  store i64 0, i64* %187, align 8
  %188 = load %struct.playlist*, %struct.playlist** %20, align 8
  %189 = getelementptr inbounds %struct.playlist, %struct.playlist* %188, i32 0, i32 10
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.playlist*, %struct.playlist** %20, align 8
  %192 = getelementptr inbounds %struct.playlist, %struct.playlist* %191, i32 0, i32 9
  %193 = call i32 @ff_format_io_close(i32 %190, i32* %192)
  %194 = load %struct.playlist*, %struct.playlist** %20, align 8
  %195 = getelementptr inbounds %struct.playlist, %struct.playlist* %194, i32 0, i32 8
  store i64 0, i64* %195, align 8
  %196 = load %struct.playlist*, %struct.playlist** %20, align 8
  %197 = getelementptr inbounds %struct.playlist, %struct.playlist* %196, i32 0, i32 7
  %198 = call i32 @av_packet_unref(i32* %197)
  %199 = load %struct.playlist*, %struct.playlist** %20, align 8
  %200 = getelementptr inbounds %struct.playlist, %struct.playlist* %199, i32 0, i32 6
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 4
  store i64 0, i64* %201, align 8
  %202 = load %struct.playlist*, %struct.playlist** %20, align 8
  %203 = getelementptr inbounds %struct.playlist, %struct.playlist* %202, i32 0, i32 6
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.playlist*, %struct.playlist** %20, align 8
  %207 = getelementptr inbounds %struct.playlist, %struct.playlist* %206, i32 0, i32 6
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 2
  store i32 %205, i32* %208, align 4
  %209 = load %struct.playlist*, %struct.playlist** %20, align 8
  %210 = getelementptr inbounds %struct.playlist, %struct.playlist* %209, i32 0, i32 6
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 3
  store i32 %205, i32* %211, align 8
  %212 = load %struct.playlist*, %struct.playlist** %20, align 8
  %213 = getelementptr inbounds %struct.playlist, %struct.playlist* %212, i32 0, i32 6
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  store i64 0, i64* %214, align 8
  %215 = load %struct.playlist*, %struct.playlist** %20, align 8
  %216 = getelementptr inbounds %struct.playlist, %struct.playlist* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @ff_read_frame_flush(i32 %217)
  %219 = load i64, i64* %17, align 8
  %220 = load %struct.playlist*, %struct.playlist** %20, align 8
  %221 = getelementptr inbounds %struct.playlist, %struct.playlist* %220, i32 0, i32 4
  store i64 %219, i64* %221, align 8
  %222 = load i32, i32* %9, align 4
  %223 = load %struct.playlist*, %struct.playlist** %20, align 8
  %224 = getelementptr inbounds %struct.playlist, %struct.playlist* %223, i32 0, i32 3
  store i32 %222, i32* %224, align 4
  %225 = load %struct.playlist*, %struct.playlist** %20, align 8
  %226 = load %struct.playlist*, %struct.playlist** %11, align 8
  %227 = icmp ne %struct.playlist* %225, %226
  br i1 %227, label %228, label %242

228:                                              ; preds = %172
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %230 = load %struct.playlist*, %struct.playlist** %20, align 8
  %231 = load i64, i64* %17, align 8
  %232 = load %struct.playlist*, %struct.playlist** %20, align 8
  %233 = getelementptr inbounds %struct.playlist, %struct.playlist* %232, i32 0, i32 1
  %234 = call i32 @find_timestamp_in_playlist(%struct.TYPE_13__* %229, %struct.playlist* %230, i64 %231, i32* %233)
  %235 = load %struct.playlist*, %struct.playlist** %20, align 8
  %236 = getelementptr inbounds %struct.playlist, %struct.playlist* %235, i32 0, i32 2
  store i32 -1, i32* %236, align 8
  %237 = load i32, i32* @AVSEEK_FLAG_ANY, align 4
  %238 = load %struct.playlist*, %struct.playlist** %20, align 8
  %239 = getelementptr inbounds %struct.playlist, %struct.playlist* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %240, %237
  store i32 %241, i32* %239, align 4
  br label %242

242:                                              ; preds = %228, %172
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %12, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %12, align 4
  br label %166

246:                                              ; preds = %166
  %247 = load i64, i64* %17, align 8
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 2
  store i64 %247, i64* %249, align 8
  store i32 0, i32* %5, align 4
  br label %250

250:                                              ; preds = %246, %156, %96, %37
  %251 = load i32, i32* %5, align 4
  ret i32 %251
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @av_rescale_rnd(i64, i32, i32, i32) #1

declare dso_local i32 @find_timestamp_in_playlist(%struct.TYPE_13__*, %struct.playlist*, i64, i32*) #1

declare dso_local i32 @ff_format_io_close(i32, i32*) #1

declare dso_local i32 @av_packet_unref(i32*) #1

declare dso_local i32 @ff_read_frame_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
