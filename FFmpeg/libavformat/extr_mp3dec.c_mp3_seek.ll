; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mp3dec.c_mp3_seek.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mp3dec.c_mp3_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_12__*, i32, %struct.TYPE_14__**, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_13__ = type { i64, i64, i64, i64, i64 }

@AVFMT_FLAG_FAST_SEEK = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Using MP3 TOC to seek; may be imprecise.\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Using scaling to seek VBR MP3; may be imprecise.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, i64, i32)* @mp3_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp3_seek(%struct.TYPE_16__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_15__, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %10, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %25, i64 0
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %13, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @AVFMT_FLAG_FAST_SEEK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %15, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %16, align 8
  %36 = load i64, i64* %16, align 8
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @avio_size(i32 %41)
  store i64 %42, i64* %17, align 8
  %43 = load i64, i64* %17, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %38
  %46 = load i64, i64* %17, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %46, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = load i64, i64* %17, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %54, %59
  store i64 %60, i64* %16, align 8
  br label %61

61:                                               ; preds = %53, %45, %38
  br label %62

62:                                               ; preds = %61, %4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %99

67:                                               ; preds = %62
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %72
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %99, label %80

80:                                               ; preds = %75, %67
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i64 @av_index_search_timestamp(%struct.TYPE_14__* %81, i64 %82, i32 %83)
  store i64 %84, i64* %18, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %86 = load i32, i32* @AV_LOG_WARNING, align 4
  %87 = call i32 @av_log(%struct.TYPE_16__* %85, i32 %86, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %88 = load i64, i64* %18, align 8
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %80
  %91 = load i64, i64* %18, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %5, align 4
  br label %205

93:                                               ; preds = %80
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = load i64, i64* %18, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i64 %97
  store %struct.TYPE_15__* %98, %struct.TYPE_15__** %11, align 8
  br label %147

99:                                               ; preds = %75, %72, %62
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %145

102:                                              ; preds = %99
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %145

107:                                              ; preds = %102
  %108 = load i64, i64* %16, align 8
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %145

110:                                              ; preds = %107
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %110
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %117 = load i32, i32* @AV_LOG_WARNING, align 4
  %118 = call i32 @av_log(%struct.TYPE_16__* %116, i32 %117, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %119

119:                                              ; preds = %115, %110
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %11, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @av_clip64(i64 %120, i32 0, i64 %123)
  store i64 %124, i64* %8, align 8
  %125 = load i64, i64* %8, align 8
  %126 = trunc i64 %125 to i32
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load i64, i64* %8, align 8
  %130 = load i64, i64* %16, align 8
  %131 = trunc i64 %130 to i32
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @av_rescale(i64 %129, i32 %131, i64 %134)
  %136 = sext i32 %135 to i64
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %136, %141
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  br label %146

145:                                              ; preds = %107, %102, %99
  store i32 -1, i32* %5, align 4
  br label %205

146:                                              ; preds = %119
  br label %147

147:                                              ; preds = %146, %93
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = call i64 @mp3_sync(%struct.TYPE_16__* %148, i64 %151, i32 %152)
  store i64 %153, i64* %14, align 8
  %154 = load i64, i64* %14, align 8
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %147
  %157 = load i64, i64* %14, align 8
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %5, align 4
  br label %205

159:                                              ; preds = %147
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %198

164:                                              ; preds = %159
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %166 = icmp eq %struct.TYPE_15__* %165, %12
  br i1 %166, label %167, label %198

167:                                              ; preds = %164
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %198

172:                                              ; preds = %167
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @av_rescale(i64 %175, i32 1, i64 %178)
  store i32 %179, i32* %19, align 4
  %180 = load i32, i32* %19, align 4
  %181 = load i64, i64* %14, align 8
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = sub nsw i64 %181, %186
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = trunc i64 %190 to i32
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @av_rescale(i64 %187, i32 %191, i64 %194)
  %196 = mul nsw i32 %180, %195
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  store i32 %196, i32* %197, align 8
  br label %198

198:                                              ; preds = %172, %167, %164, %159
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @ff_update_cur_dts(%struct.TYPE_16__* %199, %struct.TYPE_14__* %200, i32 %203)
  store i32 0, i32* %5, align 4
  br label %205

205:                                              ; preds = %198, %156, %145, %90
  %206 = load i32, i32* %5, align 4
  ret i32 %206
}

declare dso_local i64 @avio_size(i32) #1

declare dso_local i64 @av_index_search_timestamp(%struct.TYPE_14__*, i64, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i64 @av_clip64(i64, i32, i64) #1

declare dso_local i32 @av_rescale(i64, i32, i64) #1

declare dso_local i64 @mp3_sync(%struct.TYPE_16__*, i64, i32) #1

declare dso_local i32 @ff_update_cur_dts(%struct.TYPE_16__*, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
