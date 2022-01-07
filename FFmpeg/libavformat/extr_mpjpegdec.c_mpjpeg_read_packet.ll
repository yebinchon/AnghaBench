; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpjpegdec.c_mpjpeg_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpjpegdec.c_mpjpeg_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32*, i32*, i64 }
%struct.TYPE_12__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"--%s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"\0D\0A--%s\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\0D\0A--\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*)* @mpjpeg_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpjpeg_read_packet(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %8, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %81

21:                                               ; preds = %2
  store i32* null, i32** %9, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32* @mpjpeg_get_boundary(i32 %29)
  store i32* %30, i32** %9, align 8
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i32*, i32** %9, align 8
  %36 = call i8* @av_asprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %35)
  %37 = bitcast i8* %36 to i32*
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i8* @av_asprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %40)
  %42 = bitcast i8* %41 to i32*
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = call i32 @av_freep(i32** %9)
  br label %55

46:                                               ; preds = %31
  %47 = call i8* @av_strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  %51 = call i8* @av_strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %52 = bitcast i8* %51 to i32*
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  store i32* %52, i32** %54, align 8
  br label %55

55:                                               ; preds = %46, %34
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %60, %55
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = call i32 @av_freep(i32** %67)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = call i32 @av_freep(i32** %70)
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = call i32 @AVERROR(i32 %72)
  store i32 %73, i32* %3, align 4
  br label %214

74:                                               ; preds = %60
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @strlen(i32* %77)
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %74, %2
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %89 = call i32 @parse_multipart_header(i32 %84, i32* %6, i32* %87, %struct.TYPE_13__* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %3, align 4
  br label %214

94:                                               ; preds = %81
  %95 = load i32, i32* %6, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @av_get_packet(i32 %100, %struct.TYPE_12__* %101, i32 %102)
  store i32 %103, i32* %7, align 4
  br label %212

104:                                              ; preds = %94
  store i32 0, i32* %10, align 4
  store i32 2048, i32* %12, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %106 = call i32 @av_init_packet(%struct.TYPE_12__* %105)
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  store i8* null, i8** %108, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  store i32 0, i32* %110, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @avio_tell(i32 %113)
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %189, %104
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sub nsw i32 2048, %121
  %123 = call i32 @ffio_ensure_seekback(i32 %120, i32 %122)
  store i32 %123, i32* %7, align 4
  %124 = icmp sge i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %117
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sub nsw i32 2048, %130
  %132 = call i32 @av_append_packet(i32 %128, %struct.TYPE_12__* %129, i32 %131)
  store i32 %132, i32* %7, align 4
  %133 = icmp sge i32 %132, 0
  br label %134

134:                                              ; preds = %125, %117
  %135 = phi i1 [ false, %117 ], [ %133, %125 ]
  br i1 %135, label %136, label %191

136:                                              ; preds = %134
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %137, %138
  store i32 %139, i32* %11, align 4
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %142, i64 %146
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = sub i64 0, %149
  %151 = getelementptr inbounds i8, i8* %147, i64 %150
  store i8* %151, i8** %13, align 8
  br label %152

152:                                              ; preds = %183, %136
  %153 = load i8*, i8** %13, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @memcmp(i8* %153, i32* %156, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %178, label %162

162:                                              ; preds = %152
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sub nsw i32 0, %166
  %168 = load i32, i32* @SEEK_CUR, align 4
  %169 = call i32 @avio_seek(i32 %165, i32 %167, i32 %168)
  %170 = load i32, i32* %11, align 4
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = sub nsw i32 %173, %170
  store i32 %174, i32* %172, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  store i32 %177, i32* %3, align 4
  br label %214

178:                                              ; preds = %152
  %179 = load i32, i32* %11, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %11, align 4
  %181 = load i8*, i8** %13, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %13, align 8
  br label %183

183:                                              ; preds = %178
  %184 = load i32, i32* %11, align 4
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp sge i32 %184, %187
  br i1 %188, label %152, label %189

189:                                              ; preds = %183
  %190 = load i32, i32* %11, align 4
  store i32 %190, i32* %10, align 4
  br label %117

191:                                              ; preds = %134
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* @AVERROR_EOF, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %208

195:                                              ; preds = %191
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %195
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  br label %206

204:                                              ; preds = %195
  %205 = load i32, i32* @AVERROR_EOF, align 4
  br label %206

206:                                              ; preds = %204, %200
  %207 = phi i32 [ %203, %200 ], [ %205, %204 ]
  store i32 %207, i32* %7, align 4
  br label %211

208:                                              ; preds = %191
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %210 = call i32 @av_packet_unref(%struct.TYPE_12__* %209)
  br label %211

211:                                              ; preds = %208, %206
  br label %212

212:                                              ; preds = %211, %97
  %213 = load i32, i32* %7, align 4
  store i32 %213, i32* %3, align 4
  br label %214

214:                                              ; preds = %212, %162, %92, %65
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local i32* @mpjpeg_get_boundary(i32) #1

declare dso_local i8* @av_asprintf(i8*, i32*) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @parse_multipart_header(i32, i32*, i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @av_get_packet(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @av_init_packet(%struct.TYPE_12__*) #1

declare dso_local i32 @avio_tell(i32) #1

declare dso_local i32 @ffio_ensure_seekback(i32, i32) #1

declare dso_local i32 @av_append_packet(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @memcmp(i8*, i32*, i32) #1

declare dso_local i32 @avio_seek(i32, i32, i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
