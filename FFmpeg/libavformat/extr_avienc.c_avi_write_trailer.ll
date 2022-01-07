; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avienc.c_avi_write_trailer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avienc.c_avi_write_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_19__**, %struct.TYPE_21__*, %struct.TYPE_22__* }
%struct.TYPE_19__ = type { %struct.TYPE_20__*, %struct.TYPE_24__* }
%struct.TYPE_20__ = type { i32, i32, i64, i32 }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i64, i32, i32 }

@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AV_CODEC_ID_MP2 = common dso_local global i64 0, align 8
@AV_CODEC_ID_MP3 = common dso_local global i64 0, align 8
@AVI_MASTER_INDEX_PREFIX_SIZE = common dso_local global i32 0, align 4
@AVI_MASTER_INDEX_ENTRY_SIZE = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [110 x i8] c"Output file not strictly OpenDML compliant, consider re-muxing with 'reserve_index_space' option value >= %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*)* @avi_write_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avi_write_trailer(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %3, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  store %struct.TYPE_21__* %20, %struct.TYPE_21__** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %43, %1
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %30, i64 %32
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  store %struct.TYPE_20__* %36, %struct.TYPE_20__** %10, align 8
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @write_skip_frames(%struct.TYPE_23__* %37, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %27
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %21

46:                                               ; preds = %21
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %175

53:                                               ; preds = %46
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ff_end_tag(%struct.TYPE_21__* %59, i32 %62)
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %65 = call i32 @avi_write_idx1(%struct.TYPE_23__* %64)
  store i32 %65, i32* %5, align 4
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ff_end_tag(%struct.TYPE_21__* %66, i32 %69)
  br label %174

71:                                               ; preds = %53
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %73 = call i32 @avi_write_ix(%struct.TYPE_23__* %72)
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ff_end_tag(%struct.TYPE_21__* %74, i32 %77)
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ff_end_tag(%struct.TYPE_21__* %79, i32 %82)
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %85 = call i64 @avio_tell(%struct.TYPE_21__* %84)
  store i64 %85, i64* %9, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %89, 8
  %91 = load i32, i32* @SEEK_SET, align 4
  %92 = call i32 @avio_seek(%struct.TYPE_21__* %86, i64 %90, i32 %91)
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %94 = call i32 @ffio_wfourcc(%struct.TYPE_21__* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %96 = call i32 @avio_skip(%struct.TYPE_21__* %95, i32 16)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %158, %71
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %161

103:                                              ; preds = %97
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %106, i64 %108
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %111, align 8
  store %struct.TYPE_24__* %112, %struct.TYPE_24__** %11, align 8
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %115, i64 %117
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %120, align 8
  store %struct.TYPE_20__* %121, %struct.TYPE_20__** %12, align 8
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %103
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %133, %127
  br label %157

138:                                              ; preds = %103
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @AV_CODEC_ID_MP2, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %150, label %144

144:                                              ; preds = %138
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @AV_CODEC_ID_MP3, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %144, %138
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %8, align 4
  br label %156

156:                                              ; preds = %150, %144
  br label %157

157:                                              ; preds = %156, %137
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %7, align 4
  br label %97

161:                                              ; preds = %97
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @avio_wl32(%struct.TYPE_21__* %162, i32 %163)
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %166 = load i64, i64* %9, align 8
  %167 = load i32, i32* @SEEK_SET, align 4
  %168 = call i32 @avio_seek(%struct.TYPE_21__* %165, i64 %166, i32 %167)
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @avi_write_counters(%struct.TYPE_23__* %169, i32 %172)
  br label %174

174:                                              ; preds = %161, %58
  br label %175

175:                                              ; preds = %174, %46
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp sge i32 %178, %181
  br i1 %182, label %183, label %195

183:                                              ; preds = %175
  %184 = load i32, i32* @AVI_MASTER_INDEX_PREFIX_SIZE, align 4
  %185 = load i32, i32* @AVI_MASTER_INDEX_ENTRY_SIZE, align 4
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = mul nsw i32 %185, %188
  %190 = add nsw i32 %184, %189
  store i32 %190, i32* %13, align 4
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %192 = load i32, i32* @AV_LOG_WARNING, align 4
  %193 = load i32, i32* %13, align 4
  %194 = call i32 @av_log(%struct.TYPE_23__* %191, i32 %192, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.1, i64 0, i64 0), i32 %193)
  br label %195

195:                                              ; preds = %183, %175
  store i32 0, i32* %6, align 4
  br label %196

196:                                              ; preds = %232, %195
  %197 = load i32, i32* %6, align 4
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %202, label %235

202:                                              ; preds = %196
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %204, align 8
  %206 = load i32, i32* %6, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %205, i64 %207
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %210, align 8
  store %struct.TYPE_20__* %211, %struct.TYPE_20__** %14, align 8
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %231

218:                                              ; preds = %202
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %222, 4
  %224 = load i32, i32* @SEEK_SET, align 4
  %225 = call i32 @avio_seek(%struct.TYPE_21__* %219, i64 %223, i32 %224)
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @avio_wl32(%struct.TYPE_21__* %226, i32 %229)
  br label %231

231:                                              ; preds = %218, %202
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %6, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %6, align 4
  br label %196

235:                                              ; preds = %196
  %236 = load i32, i32* %5, align 4
  ret i32 %236
}

declare dso_local i32 @write_skip_frames(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @ff_end_tag(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @avi_write_idx1(%struct.TYPE_23__*) #1

declare dso_local i32 @avi_write_ix(%struct.TYPE_23__*) #1

declare dso_local i64 @avio_tell(%struct.TYPE_21__*) #1

declare dso_local i32 @avio_seek(%struct.TYPE_21__*, i64, i32) #1

declare dso_local i32 @ffio_wfourcc(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @avio_skip(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @avio_wl32(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @avi_write_counters(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_23__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
