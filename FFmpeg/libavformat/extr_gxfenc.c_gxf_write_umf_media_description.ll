; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_gxfenc.c_gxf_write_umf_media_description.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_gxfenc.c_gxf_write_umf_media_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__**, i32*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { %struct.TYPE_13__*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_14__, i32 }
%struct.TYPE_12__ = type { i32 }

@ES_NAME_PATTERN = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @gxf_write_umf_media_description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gxf_write_umf_media_description(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %3, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @avio_tell(i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %20, %23
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %174, %1
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sle i32 %28, %31
  br i1 %32, label %33, label %177

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 3
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %8, align 8
  br label %52

42:                                               ; preds = %33
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %45, i64 %47
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  store %struct.TYPE_14__* %51, %struct.TYPE_14__** %8, align 8
  br label %52

52:                                               ; preds = %42, %39
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @avio_tell(i32* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @avio_wl16(i32* %55, i32 0)
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @avio_wl16(i32* %57, i32 %60)
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @avio_wl16(i32* %62, i32 0)
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @avio_wl16(i32* %64, i32 0)
  %66 = load i32*, i32** %4, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @avio_wl32(i32* %66, i32 %69)
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @avio_wl32(i32* %71, i32 0)
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @avio_wl32(i32* %73, i32 0)
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @avio_wl32(i32* %75, i32 %78)
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* @ES_NAME_PATTERN, align 4
  %82 = load i32, i32* @ES_NAME_PATTERN, align 4
  %83 = call i32 @strlen(i32 %82)
  %84 = call i32 @avio_write(i32* %80, i32 %81, i32 %83)
  %85 = load i32*, i32** %4, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @avio_wb16(i32* %85, i32 %88)
  %90 = load i32, i32* @ES_NAME_PATTERN, align 4
  %91 = call i32 @strlen(i32 %90)
  %92 = add nsw i32 %91, 2
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %99, %52
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 88
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @avio_w8(i32* %97, i32 0)
  br label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %93

102:                                              ; preds = %93
  %103 = load i32*, i32** %4, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @avio_wl32(i32* %103, i32 %106)
  %108 = load i32*, i32** %4, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @avio_wl32(i32* %108, i32 %111)
  %113 = load i32*, i32** %4, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @avio_wl32(i32* %113, i32 %116)
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 @avio_wl32(i32* %118, i32 0)
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 3
  %123 = icmp eq %struct.TYPE_14__* %120, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %102
  %125 = load i32*, i32** %4, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @gxf_write_umf_media_timecode(i32* %125, i32 %129)
  br label %158

131:                                              ; preds = %102
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %134, i64 %136
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %137, align 8
  store %struct.TYPE_16__* %138, %struct.TYPE_16__** %11, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  switch i32 %143, label %157 [
    i32 130, label %144
    i32 129, label %144
    i32 128, label %148
    i32 131, label %152
  ]

144:                                              ; preds = %131, %131
  %145 = load i32*, i32** %4, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %147 = call i32 @gxf_write_umf_media_mpeg(i32* %145, %struct.TYPE_16__* %146)
  br label %157

148:                                              ; preds = %131
  %149 = load i32*, i32** %4, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %151 = call i32 @gxf_write_umf_media_audio(i32* %149, %struct.TYPE_14__* %150)
  br label %157

152:                                              ; preds = %131
  %153 = load i32*, i32** %4, align 8
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %156 = call i32 @gxf_write_umf_media_dv(i32* %153, %struct.TYPE_14__* %154, %struct.TYPE_16__* %155)
  br label %157

157:                                              ; preds = %131, %152, %148, %144
  br label %158

158:                                              ; preds = %157, %124
  %159 = load i32*, i32** %4, align 8
  %160 = call i32 @avio_tell(i32* %159)
  store i32 %160, i32* %10, align 4
  %161 = load i32*, i32** %4, align 8
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* @SEEK_SET, align 4
  %164 = call i32 @avio_seek(i32* %161, i32 %162, i32 %163)
  %165 = load i32*, i32** %4, align 8
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* %9, align 4
  %168 = sub nsw i32 %166, %167
  %169 = call i32 @avio_wl16(i32* %165, i32 %168)
  %170 = load i32*, i32** %4, align 8
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* @SEEK_SET, align 4
  %173 = call i32 @avio_seek(i32* %170, i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %158
  %175 = load i32, i32* %6, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %6, align 4
  br label %27

177:                                              ; preds = %27
  %178 = load i32*, i32** %4, align 8
  %179 = call i32 @avio_tell(i32* %178)
  %180 = load i32, i32* %5, align 4
  %181 = sub nsw i32 %179, %180
  ret i32 %181
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_wl16(i32*, i32) #1

declare dso_local i32 @avio_wl32(i32*, i32) #1

declare dso_local i32 @avio_write(i32*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @gxf_write_umf_media_timecode(i32*, i32) #1

declare dso_local i32 @gxf_write_umf_media_mpeg(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @gxf_write_umf_media_audio(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @gxf_write_umf_media_dv(i32*, %struct.TYPE_14__*, %struct.TYPE_16__*) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
