; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_primer_pack.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_mxf_write_primer_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__**, i32*, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@mxf_local_tag_batch = common dso_local global %struct.TYPE_17__* null, align 8
@mxf_user_comments_local_tag = common dso_local global %struct.TYPE_17__* null, align 8
@AV_CODEC_ID_H264 = common dso_local global i64 0, align 8
@mxf_avc_subdescriptor_local_tags = common dso_local global %struct.TYPE_17__* null, align 8
@primer_pack_key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @mxf_write_primer_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxf_write_primer_pack(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %3, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** @mxf_local_tag_batch, align 8
  %16 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_17__* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** @mxf_user_comments_local_tag, align 8
  %21 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_17__* %20)
  %22 = mul nsw i32 %19, %21
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %66, %1
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %69

31:                                               ; preds = %25
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %34, i64 %36
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %8, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %43, i64 %45
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AV_CODEC_ID_H264, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %31
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** @mxf_avc_subdescriptor_local_tags, align 8
  %61 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_17__* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %59, %54, %31
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %25

69:                                               ; preds = %25
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* @primer_pack_key, align 4
  %72 = call i32 @avio_write(i32* %70, i32 %71, i32 16)
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = mul nsw i32 %74, 18
  %76 = add nsw i32 %75, 8
  %77 = call i32 @klv_encode_ber_length(i32* %73, i32 %76)
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @avio_wb32(i32* %78, i32 %79)
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @avio_wb32(i32* %81, i32 18)
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %105, %69
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** @mxf_local_tag_batch, align 8
  %86 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_17__* %85)
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %108

88:                                               ; preds = %83
  %89 = load i32*, i32** %4, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** @mxf_local_tag_batch, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @avio_wb16(i32* %89, i32 %95)
  %97 = load i32*, i32** %4, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** @mxf_local_tag_batch, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @avio_write(i32* %97, i32 %103, i32 16)
  br label %105

105:                                              ; preds = %88
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %83

108:                                              ; preds = %83
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %140

113:                                              ; preds = %108
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %136, %113
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** @mxf_user_comments_local_tag, align 8
  %117 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_17__* %116)
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %119, label %139

119:                                              ; preds = %114
  %120 = load i32*, i32** %4, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** @mxf_user_comments_local_tag, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @avio_wb16(i32* %120, i32 %126)
  %128 = load i32*, i32** %4, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** @mxf_user_comments_local_tag, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @avio_write(i32* %128, i32 %134, i32 16)
  br label %136

136:                                              ; preds = %119
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %114

139:                                              ; preds = %114
  br label %140

140:                                              ; preds = %139, %108
  %141 = load i32, i32* %7, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load i32*, i32** %4, align 8
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** @mxf_avc_subdescriptor_local_tags, align 8
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @mxf_write_local_tags(i32* %144, %struct.TYPE_17__* %145, i32 %146)
  br label %148

148:                                              ; preds = %143, %140
  ret void
}

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_17__*) #1

declare dso_local i32 @avio_write(i32*, i32, i32) #1

declare dso_local i32 @klv_encode_ber_length(i32*, i32) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @mxf_write_local_tags(i32*, %struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
