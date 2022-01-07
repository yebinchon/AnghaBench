; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_yuv4mpegenc.c_yuv4_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_yuv4mpegenc.c_yuv4_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, i32*, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_13__ = type { i8**, i32* }

@Y4M_LINE_MAX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Error. YUV4MPEG stream header write failed.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@Y4M_FRAME_MAGIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"The pixel format '%s' is not supported.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_12__*)* @yuv4_write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yuv4_write_packet(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %22, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %23, i64 %26
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %6, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %7, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %9, align 8
  %35 = load i32, i32* @Y4M_LINE_MAX, align 4
  %36 = add nsw i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %15, align 8
  %39 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %16, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %2
  %48 = load i32*, i32** %9, align 8
  store i32 0, i32* %48, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %50 = call i64 @yuv4_generate_header(%struct.TYPE_14__* %49, i8* %39)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = load i32, i32* @AV_LOG_ERROR, align 4
  %55 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %53, i32 %54, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EIO, align 4
  %57 = call i32 @AVERROR(i32 %56)
  store i32 %57, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %227

58:                                               ; preds = %47
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @strlen(i8* %39)
  %61 = call i32 @avio_write(i32* %59, i8* %39, i32 %60)
  br label %62

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62, %2
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* @Y4M_FRAME_MAGIC, align 4
  %68 = call i32 @avio_printf(i32* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %10, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %11, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i8**, i8*** %80, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %17, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  switch i32 %88, label %93 [
    i32 151, label %89
    i32 149, label %89
    i32 148, label %89
    i32 142, label %89
    i32 136, label %89
    i32 130, label %89
    i32 129, label %89
    i32 128, label %89
    i32 150, label %90
    i32 154, label %90
    i32 153, label %90
    i32 152, label %90
    i32 143, label %90
    i32 137, label %90
    i32 131, label %90
    i32 147, label %90
    i32 141, label %90
    i32 135, label %90
    i32 146, label %90
    i32 140, label %90
    i32 134, label %90
    i32 145, label %90
    i32 139, label %90
    i32 133, label %90
    i32 144, label %90
    i32 138, label %90
    i32 132, label %90
  ]

89:                                               ; preds = %63, %63, %63, %63, %63, %63, %63, %63
  br label %105

90:                                               ; preds = %63, %63, %63, %63, %63, %63, %63, %63, %63, %63, %63, %63, %63, %63, %63, %63, %63, %63, %63
  %91 = load i32, i32* %10, align 4
  %92 = mul nsw i32 %91, 2
  store i32 %92, i32* %10, align 4
  br label %105

93:                                               ; preds = %63
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = load i32, i32* @AV_LOG_ERROR, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @av_get_pix_fmt_name(i32 %100)
  %102 = call i32 (%struct.TYPE_14__*, i32, i8*, ...) @av_log(%struct.TYPE_14__* %94, i32 %95, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @EINVAL, align 4
  %104 = call i32 @AVERROR(i32 %103)
  store i32 %104, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %227

105:                                              ; preds = %90, %89
  store i32 0, i32* %14, align 4
  br label %106

106:                                              ; preds = %123, %105
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %126

110:                                              ; preds = %106
  %111 = load i32*, i32** %7, align 8
  %112 = load i8*, i8** %17, align 8
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @avio_write(i32* %111, i8* %112, i32 %113)
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = load i8*, i8** %17, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %17, align 8
  br label %123

123:                                              ; preds = %110
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %14, align 4
  br label %106

126:                                              ; preds = %106
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 151
  br i1 %132, label %133, label %226

133:                                              ; preds = %126
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 150
  br i1 %139, label %140, label %226

140:                                              ; preds = %133
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 154
  br i1 %146, label %147, label %226

147:                                              ; preds = %140
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 153
  br i1 %153, label %154, label %226

154:                                              ; preds = %147
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 152
  br i1 %160, label %161, label %226

161:                                              ; preds = %154
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @av_pix_fmt_get_chroma_sub_sample(i32 %166, i32* %12, i32* %13)
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* %12, align 4
  %170 = call i32 @AV_CEIL_RSHIFT(i32 %168, i32 %169)
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %13, align 4
  %173 = call i32 @AV_CEIL_RSHIFT(i32 %171, i32 %172)
  store i32 %173, i32* %11, align 4
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i8**, i8*** %175, align 8
  %177 = getelementptr inbounds i8*, i8** %176, i64 1
  %178 = load i8*, i8** %177, align 8
  store i8* %178, i8** %18, align 8
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = load i8**, i8*** %180, align 8
  %182 = getelementptr inbounds i8*, i8** %181, i64 2
  %183 = load i8*, i8** %182, align 8
  store i8* %183, i8** %19, align 8
  store i32 0, i32* %14, align 4
  br label %184

184:                                              ; preds = %201, %161
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* %11, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %204

188:                                              ; preds = %184
  %189 = load i32*, i32** %7, align 8
  %190 = load i8*, i8** %18, align 8
  %191 = load i32, i32* %10, align 4
  %192 = call i32 @avio_write(i32* %189, i8* %190, i32 %191)
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 1
  %197 = load i32, i32* %196, align 4
  %198 = load i8*, i8** %18, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  store i8* %200, i8** %18, align 8
  br label %201

201:                                              ; preds = %188
  %202 = load i32, i32* %14, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %14, align 4
  br label %184

204:                                              ; preds = %184
  store i32 0, i32* %14, align 4
  br label %205

205:                                              ; preds = %222, %204
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* %11, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %225

209:                                              ; preds = %205
  %210 = load i32*, i32** %7, align 8
  %211 = load i8*, i8** %19, align 8
  %212 = load i32, i32* %10, align 4
  %213 = call i32 @avio_write(i32* %210, i8* %211, i32 %212)
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 2
  %218 = load i32, i32* %217, align 4
  %219 = load i8*, i8** %19, align 8
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i8, i8* %219, i64 %220
  store i8* %221, i8** %19, align 8
  br label %222

222:                                              ; preds = %209
  %223 = load i32, i32* %14, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %14, align 4
  br label %205

225:                                              ; preds = %205
  br label %226

226:                                              ; preds = %225, %154, %147, %140, %133, %126
  store i32 0, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %227

227:                                              ; preds = %226, %93, %52
  %228 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %228)
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @yuv4_generate_header(%struct.TYPE_14__*, i8*) #2

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, ...) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @avio_write(i32*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @avio_printf(i32*, i8*, i32) #2

declare dso_local i32 @av_get_pix_fmt_name(i32) #2

declare dso_local i32 @av_pix_fmt_get_chroma_sub_sample(i32, i32*, i32*) #2

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
