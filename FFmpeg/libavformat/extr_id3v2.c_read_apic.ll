; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2.c_read_apic.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2.c_read_apic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i8* }

@ff_id3v2_mime_tags = common dso_local global %struct.TYPE_11__* null, align 8
@AV_CODEC_ID_NONE = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Unknown attached picture mimetype: %s, skipping.\0A\00", align 1
@ff_id3v2_picture_types = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Unknown attached picture type %d.\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Error decoding attached picture description.\0A\00", align 1
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"APIC\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i8*, %struct.TYPE_10__**, i32)* @read_apic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_apic(i32* %0, i32* %1, i32 %2, i8* %3, %struct.TYPE_10__** %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_10__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [64 x i8], align 16
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.TYPE_10__** %4, %struct.TYPE_10__*** %11, align 8
  store i32 %5, i32* %12, align 4
  %21 = bitcast [64 x i8]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 64, i1 false)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ff_id3v2_mime_tags, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %16, align 8
  %23 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %17, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %19, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i64 @avio_tell(i32* %25)
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  store i64 %29, i64* %20, align 8
  %30 = load i32, i32* %9, align 4
  %31 = icmp sle i32 %30, 4
  br i1 %31, label %38, label %32

32:                                               ; preds = %6
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = icmp sle i32 %36, 6
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %6
  br label %200

39:                                               ; preds = %35, %32
  %40 = call i8* @av_mallocz(i32 24)
  %41 = bitcast i8* %40 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %19, align 8
  %42 = call i8* @av_mallocz(i32 24)
  %43 = bitcast i8* %42 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %18, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %45 = icmp ne %struct.TYPE_10__* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %48 = icmp ne %struct.TYPE_9__* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46, %39
  br label %200

50:                                               ; preds = %46
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @avio_r8(i32* %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %9, align 4
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %61 = call i64 @avio_get_str(i32* %58, i32 %59, i8* %60, i32 64)
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = sub nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %9, align 4
  br label %76

66:                                               ; preds = %50
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %69 = call i32 @avio_read(i32* %67, i8* %68, i32 3)
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %200

72:                                               ; preds = %66
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 3
  store i8 0, i8* %73, align 1
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %74, 3
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %72, %57
  br label %77

77:                                               ; preds = %95, %76
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %77
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %88 = call i32 @av_strncasecmp(i32 %86, i8* %87, i32 64)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %83
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %17, align 4
  br label %98

95:                                               ; preds = %83
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 1
  store %struct.TYPE_11__* %97, %struct.TYPE_11__** %16, align 8
  br label %77

98:                                               ; preds = %90, %77
  %99 = load i32, i32* %17, align 4
  %100 = zext i32 %99 to i64
  %101 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* @AV_LOG_WARNING, align 4
  %106 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %107 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %104, i32 %105, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %106)
  br label %200

108:                                              ; preds = %98
  %109 = load i32, i32* %17, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load i32*, i32** %8, align 8
  %113 = call i32 @avio_r8(i32* %112)
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %108
  %119 = load i32, i32* %14, align 4
  %120 = load i32*, i32** @ff_id3v2_picture_types, align 8
  %121 = call i32 @FF_ARRAY_ELEMS(i32* %120)
  %122 = icmp sge i32 %119, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %118, %108
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* @AV_LOG_WARNING, align 4
  %126 = load i32, i32* %14, align 4
  %127 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %124, i32 %125, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  store i32 0, i32* %14, align 4
  br label %128

128:                                              ; preds = %123, %118
  %129 = load i32*, i32** @ff_id3v2_picture_types, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 8
  %136 = load i32*, i32** %7, align 8
  %137 = load i32*, i32** %8, align 8
  %138 = load i32, i32* %13, align 4
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = call i64 @decode_str(i32* %136, i32* %137, i32 %138, i32* %140, i32* %9)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %128
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* @AV_LOG_ERROR, align 4
  %146 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %144, i32 %145, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %200

147:                                              ; preds = %128
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %151 = add nsw i64 %149, %150
  %152 = call %struct.TYPE_12__* @av_buffer_alloc(i64 %151)
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 2
  store %struct.TYPE_12__* %152, %struct.TYPE_12__** %154, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = icmp ne %struct.TYPE_12__* %157, null
  br i1 %158, label %159, label %173

159:                                              ; preds = %147
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %173

162:                                              ; preds = %159
  %163 = load i32*, i32** %8, align 8
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @avio_read(i32* %163, i8* %168, i32 %169)
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %162, %159, %147
  br label %200

174:                                              ; preds = %162
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  %183 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %184 = call i32 @memset(i8* %182, i32 0, i64 %183)
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %186, align 8
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 2
  store %struct.TYPE_9__* %187, %struct.TYPE_9__** %189, align 8
  %190 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  store %struct.TYPE_10__* %191, %struct.TYPE_10__** %193, align 8
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %195 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  store %struct.TYPE_10__* %194, %struct.TYPE_10__** %195, align 8
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @rstrip_spaces(i32 %198)
  br label %212

200:                                              ; preds = %173, %143, %103, %71, %49, %38
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %202 = icmp ne %struct.TYPE_9__* %201, null
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %205 = call i32 @free_apic(%struct.TYPE_9__* %204)
  br label %206

206:                                              ; preds = %203, %200
  %207 = call i32 @av_freep(%struct.TYPE_10__** %19)
  %208 = load i32*, i32** %8, align 8
  %209 = load i64, i64* %20, align 8
  %210 = load i32, i32* @SEEK_SET, align 4
  %211 = call i32 @avio_seek(i32* %208, i64 %209, i32 %210)
  br label %212

212:                                              ; preds = %206, %174
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @avio_tell(i32*) #2

declare dso_local i8* @av_mallocz(i32) #2

declare dso_local i32 @avio_r8(i32*) #2

declare dso_local i64 @avio_get_str(i32*, i32, i8*, i32) #2

declare dso_local i32 @avio_read(i32*, i8*, i32) #2

declare dso_local i32 @av_strncasecmp(i32, i8*, i32) #2

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #2

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #2

declare dso_local i64 @decode_str(i32*, i32*, i32, i32*, i32*) #2

declare dso_local %struct.TYPE_12__* @av_buffer_alloc(i64) #2

declare dso_local i32 @memset(i8*, i32, i64) #2

declare dso_local i32 @rstrip_spaces(i32) #2

declare dso_local i32 @free_apic(%struct.TYPE_9__*) #2

declare dso_local i32 @av_freep(%struct.TYPE_10__**) #2

declare dso_local i32 @avio_seek(i32*, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
