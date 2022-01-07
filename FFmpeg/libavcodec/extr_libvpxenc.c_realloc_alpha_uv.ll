; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libvpxenc.c_realloc_alpha_uv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libvpxenc.c_realloc_alpha_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.vpx_image }
%struct.vpx_image = type { i8**, i32*, i64, i64 }

@VPX_PLANE_U = common dso_local global i64 0, align 8
@VPX_PLANE_V = common dso_local global i64 0, align 8
@VPX_IMG_FMT_I420 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32)* @realloc_alpha_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @realloc_alpha_uv(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.vpx_image*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %8, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.vpx_image* %16, %struct.vpx_image** %9, align 8
  %17 = load %struct.vpx_image*, %struct.vpx_image** %9, align 8
  %18 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  store i8** %19, i8*** %10, align 8
  %20 = load %struct.vpx_image*, %struct.vpx_image** %9, align 8
  %21 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %11, align 8
  %23 = load i8**, i8*** %10, align 8
  %24 = load i64, i64* @VPX_PLANE_U, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %48

28:                                               ; preds = %3
  %29 = load i8**, i8*** %10, align 8
  %30 = load i64, i64* @VPX_PLANE_V, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.vpx_image*, %struct.vpx_image** %9, align 8
  %37 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = icmp ne i32 %35, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.vpx_image*, %struct.vpx_image** %9, align 8
  %44 = getelementptr inbounds %struct.vpx_image, %struct.vpx_image* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = icmp ne i32 %42, %46
  br i1 %47, label %48, label %117

48:                                               ; preds = %41, %34, %28, %3
  %49 = load i8**, i8*** %10, align 8
  %50 = load i64, i64* @VPX_PLANE_U, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  %52 = call i32 @av_freep(i8** %51)
  %53 = load i8**, i8*** %10, align 8
  %54 = load i64, i64* @VPX_PLANE_V, align 8
  %55 = getelementptr inbounds i8*, i8** %53, i64 %54
  %56 = call i32 @av_freep(i8** %55)
  %57 = load %struct.vpx_image*, %struct.vpx_image** %9, align 8
  %58 = load i32, i32* @VPX_IMG_FMT_I420, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @vpx_img_wrap(%struct.vpx_image* %57, i32 %58, i32 %59, i32 %60, i32 1, i8* inttoptr (i64 1 to i8*))
  %62 = load i32*, i32** %11, align 8
  %63 = load i64, i64* @VPX_PLANE_U, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i8* @av_malloc_array(i32 %65, i32 %66)
  %68 = load i8**, i8*** %10, align 8
  %69 = load i64, i64* @VPX_PLANE_U, align 8
  %70 = getelementptr inbounds i8*, i8** %68, i64 %69
  store i8* %67, i8** %70, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = load i64, i64* @VPX_PLANE_V, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i8* @av_malloc_array(i32 %74, i32 %75)
  %77 = load i8**, i8*** %10, align 8
  %78 = load i64, i64* @VPX_PLANE_V, align 8
  %79 = getelementptr inbounds i8*, i8** %77, i64 %78
  store i8* %76, i8** %79, align 8
  %80 = load i8**, i8*** %10, align 8
  %81 = load i64, i64* @VPX_PLANE_U, align 8
  %82 = getelementptr inbounds i8*, i8** %80, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %48
  %86 = load i8**, i8*** %10, align 8
  %87 = load i64, i64* @VPX_PLANE_V, align 8
  %88 = getelementptr inbounds i8*, i8** %86, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %85, %48
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = call i32 @AVERROR(i32 %92)
  store i32 %93, i32* %4, align 4
  br label %118

94:                                               ; preds = %85
  %95 = load i8**, i8*** %10, align 8
  %96 = load i64, i64* @VPX_PLANE_U, align 8
  %97 = getelementptr inbounds i8*, i8** %95, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = load i64, i64* @VPX_PLANE_U, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %7, align 4
  %104 = mul nsw i32 %102, %103
  %105 = call i32 @memset(i8* %98, i32 128, i32 %104)
  %106 = load i8**, i8*** %10, align 8
  %107 = load i64, i64* @VPX_PLANE_V, align 8
  %108 = getelementptr inbounds i8*, i8** %106, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = load i64, i64* @VPX_PLANE_V, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %7, align 4
  %115 = mul nsw i32 %113, %114
  %116 = call i32 @memset(i8* %109, i32 128, i32 %115)
  br label %117

117:                                              ; preds = %94, %41
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %117, %91
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i32 @vpx_img_wrap(%struct.vpx_image*, i32, i32, i32, i32, i8*) #1

declare dso_local i8* @av_malloc_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
