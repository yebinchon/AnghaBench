; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_segment.c_seg_write_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_segment.c_seg_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32 (%struct.TYPE_19__*, %struct.TYPE_21__**, i32, i32, i32*)*, %struct.TYPE_21__*, i32, %struct.TYPE_18__**, %struct.TYPE_16__*, %struct.TYPE_17__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, i64, i32, i32, %struct.TYPE_19__* }

@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*)* @seg_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seg_write_header(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 6
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %4, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %5, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %131, label %21

21:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %120, %21
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %123

28:                                               ; preds = %22
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %31, i64 %33
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  store %struct.TYPE_18__* %35, %struct.TYPE_18__** %8, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %38, i64 %40
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %43, align 8
  store %struct.TYPE_20__* %44, %struct.TYPE_20__** %9, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %47, i64 %49
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %52, align 8
  store %struct.TYPE_20__* %53, %struct.TYPE_20__** %10, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %56 = call i32 @avcodec_parameters_copy(%struct.TYPE_20__* %54, %struct.TYPE_20__* %55)
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 5
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %28
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 5
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @av_codec_get_id(i32 %68, i64 %71)
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %88, label %77

77:                                               ; preds = %63
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 5
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @av_codec_get_tag(i32 %82, i64 %85)
  %87 = icmp sle i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %77, %63, %28
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  br label %97

94:                                               ; preds = %77
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %94, %88
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %100, i64 %102
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 4
  %111 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %111, i64 %113
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %97
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %22

123:                                              ; preds = %22
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %125 = call i32 @avformat_write_header(%struct.TYPE_19__* %124, i32* null)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %2, align 4
  br label %184

130:                                              ; preds = %123
  br label %131

131:                                              ; preds = %130, %1
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %183

141:                                              ; preds = %136, %131
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %141
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %148 = call i32 @av_write_frame(%struct.TYPE_19__* %147, i32* null)
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 2
  %152 = call i32 @ff_format_io_close(%struct.TYPE_19__* %149, %struct.TYPE_21__** %151)
  br label %157

153:                                              ; preds = %141
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 2
  %156 = call i32 @close_null_ctxp(%struct.TYPE_21__** %155)
  br label %157

157:                                              ; preds = %153, %146
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 1
  %160 = load i32 (%struct.TYPE_19__*, %struct.TYPE_21__**, i32, i32, i32*)*, i32 (%struct.TYPE_19__*, %struct.TYPE_21__**, i32, i32, i32*)** %159, align 8
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %168 = call i32 %160(%struct.TYPE_19__* %161, %struct.TYPE_21__** %163, i32 %166, i32 %167, i32* null)
  store i32 %168, i32* %6, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %157
  %171 = load i32, i32* %6, align 4
  store i32 %171, i32* %2, align 4
  br label %184

172:                                              ; preds = %157
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %172
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 0
  store i64 0, i64* %181, align 8
  br label %182

182:                                              ; preds = %177, %172
  br label %183

183:                                              ; preds = %182, %136
  store i32 0, i32* %2, align 4
  br label %184

184:                                              ; preds = %183, %170, %128
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32 @avcodec_parameters_copy(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i64 @av_codec_get_id(i32, i64) #1

declare dso_local i64 @av_codec_get_tag(i32, i64) #1

declare dso_local i32 @avformat_write_header(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @av_write_frame(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @ff_format_io_close(%struct.TYPE_19__*, %struct.TYPE_21__**) #1

declare dso_local i32 @close_null_ctxp(%struct.TYPE_21__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
