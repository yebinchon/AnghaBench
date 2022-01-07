; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_motionpixels.c_mp_decode_frame_helper.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_motionpixels.c_mp_decode_frame_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64*, %struct.TYPE_12__*, %struct.TYPE_13__*, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32*)* @mp_decode_frame_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp_decode_frame_helper(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @av_assert1(i64 %13)
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %103, %2
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %106

23:                                               ; preds = %15
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %27, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %26, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %23
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @memset(i32 %41, i32 1, i32 4)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %44 = load i32, i32* %6, align 4
  call void @mp_get_yuv_from_rgb(%struct.TYPE_13__* sret %8, %struct.TYPE_14__* %43, i32 0, i32 %44)
  %45 = bitcast %struct.TYPE_13__* %5 to i8*
  %46 = bitcast %struct.TYPE_13__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 24, i1 false)
  br label %102

47:                                               ; preds = %23
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @mp_get_vlc(%struct.TYPE_14__* %49, i32* %50)
  %52 = call i64 @mp_gradient(%struct.TYPE_14__* %48, i32 0, i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %52
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @av_clip_uintp2(i32 %59, i32 5)
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 2
  store i32 %60, i32* %61, align 8
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, 3
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %47
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @mp_get_vlc(%struct.TYPE_14__* %67, i32* %68)
  %70 = call i64 @mp_gradient(%struct.TYPE_14__* %66, i32 1, i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr i8, i8* %72, i64 %70
  store i8* %73, i8** %71, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i8* @av_clip_intp2(i8* %75, i32 5)
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 1
  store i8* %76, i8** %77, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @mp_get_vlc(%struct.TYPE_14__* %79, i32* %80)
  %82 = call i64 @mp_gradient(%struct.TYPE_14__* %78, i32 2, i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr i8, i8* %84, i64 %82
  store i8* %85, i8** %83, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i8* @av_clip_intp2(i8* %87, i32 5)
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  store i8* %88, i8** %89, align 8
  br label %90

90:                                               ; preds = %65, %47
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i64 %95
  %97 = bitcast %struct.TYPE_13__* %96 to i8*
  %98 = bitcast %struct.TYPE_13__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 24, i1 false)
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @mp_set_rgb_from_yuv(%struct.TYPE_14__* %99, i32 0, i32 %100, %struct.TYPE_13__* %5)
  br label %102

102:                                              ; preds = %90, %38
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %15

106:                                              ; preds = %15
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %129, %106
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %108, 2
  br i1 %109, label %110, label %132

110:                                              ; preds = %107
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %125, %110
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %113, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %112
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %122 = load i32*, i32** %4, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @mp_decode_line(%struct.TYPE_14__* %121, i32* %122, i32 %123)
  br label %125

125:                                              ; preds = %120
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 2
  store i32 %127, i32* %6, align 4
  br label %112

128:                                              ; preds = %112
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %107

132:                                              ; preds = %107
  ret void
}

declare dso_local i32 @av_assert1(i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local void @mp_get_yuv_from_rgb(%struct.TYPE_13__* sret, %struct.TYPE_14__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mp_gradient(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @mp_get_vlc(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @av_clip_uintp2(i32, i32) #1

declare dso_local i8* @av_clip_intp2(i8*, i32) #1

declare dso_local i32 @mp_set_rgb_from_yuv(%struct.TYPE_14__*, i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @mp_decode_line(%struct.TYPE_14__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
