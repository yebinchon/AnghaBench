; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/x86/extr_diracdsp_init.c_ff_diracdsp_init_x86.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/x86/extr_diracdsp_init.c_ff_diracdsp_init_x86.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, i32*, i32**, i32**, i32*, i32, i32 }

@ff_add_dirac_obmc8_mmx = common dso_local global i32 0, align 4
@ff_add_dirac_obmc16_mmx = common dso_local global i32 0, align 4
@ff_add_dirac_obmc32_mmx = common dso_local global i32 0, align 4
@dirac_hpel_filter_mmx = common dso_local global i32 0, align 4
@ff_add_rect_clamped_mmx = common dso_local global i32 0, align 4
@ff_put_signed_rect_clamped_mmx = common dso_local global i64 0, align 8
@put = common dso_local global i32 0, align 4
@mmx = common dso_local global i32 0, align 4
@avg = common dso_local global i32 0, align 4
@mmxext = common dso_local global i32 0, align 4
@dirac_hpel_filter_sse2 = common dso_local global i32 0, align 4
@ff_add_rect_clamped_sse2 = common dso_local global i32 0, align 4
@ff_put_signed_rect_clamped_sse2 = common dso_local global i64 0, align 8
@ff_add_dirac_obmc16_sse2 = common dso_local global i32 0, align 4
@ff_add_dirac_obmc32_sse2 = common dso_local global i32 0, align 4
@ff_put_dirac_pixels16_sse2 = common dso_local global i32 0, align 4
@ff_avg_dirac_pixels16_sse2 = common dso_local global i32 0, align 4
@ff_put_dirac_pixels32_sse2 = common dso_local global i32 0, align 4
@ff_avg_dirac_pixels32_sse2 = common dso_local global i32 0, align 4
@ff_dequant_subband_32_sse4 = common dso_local global i32 0, align 4
@ff_put_signed_rect_clamped_10_sse4 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_diracdsp_init_x86(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = call i32 (...) @av_get_cpu_flags()
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @EXTERNAL_MMX(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %1
  %9 = load i32, i32* @ff_add_dirac_obmc8_mmx, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %9, i32* %13, align 4
  %14 = load i32, i32* @ff_add_dirac_obmc16_mmx, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %14, i32* %18, align 4
  %19 = load i32, i32* @ff_add_dirac_obmc32_mmx, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  store i32 %19, i32* %23, align 4
  %24 = load i32, i32* @dirac_hpel_filter_mmx, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @ff_add_rect_clamped_mmx, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load i64, i64* @ff_put_signed_rect_clamped_mmx, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  store i8* %31, i8** %35, align 8
  %36 = load i32, i32* @put, align 4
  %37 = load i32, i32* @mmx, align 4
  %38 = call i32 @PIXFUNC(i32 %36, i32 0, i32 %37)
  %39 = load i32, i32* @avg, align 4
  %40 = load i32, i32* @mmx, align 4
  %41 = call i32 @PIXFUNC(i32 %39, i32 0, i32 %40)
  br label %42

42:                                               ; preds = %8, %1
  %43 = load i32, i32* %3, align 4
  %44 = call i64 @EXTERNAL_MMXEXT(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* @avg, align 4
  %48 = load i32, i32* @mmxext, align 4
  %49 = call i32 @PIXFUNC(i32 %47, i32 0, i32 %48)
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* %3, align 4
  %52 = call i64 @EXTERNAL_SSE2(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %105

54:                                               ; preds = %50
  %55 = load i32, i32* @dirac_hpel_filter_sse2, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @ff_add_rect_clamped_sse2, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  %61 = load i64, i64* @ff_put_signed_rect_clamped_sse2, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  store i8* %62, i8** %66, align 8
  %67 = load i32, i32* @ff_add_dirac_obmc16_sse2, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* @ff_add_dirac_obmc32_sse2, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* @ff_put_dirac_pixels16_sse2, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  %80 = load i32**, i32*** %79, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %77, i32* %83, align 4
  %84 = load i32, i32* @ff_avg_dirac_pixels16_sse2, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32**, i32*** %86, align 8
  %88 = getelementptr inbounds i32*, i32** %87, i64 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  store i32 %84, i32* %90, align 4
  %91 = load i32, i32* @ff_put_dirac_pixels32_sse2, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = load i32**, i32*** %93, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 %91, i32* %97, align 4
  %98 = load i32, i32* @ff_avg_dirac_pixels32_sse2, align 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load i32**, i32*** %100, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i64 2
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 %98, i32* %104, align 4
  br label %105

105:                                              ; preds = %54, %50
  %106 = load i32, i32* %3, align 4
  %107 = call i64 @EXTERNAL_SSE4(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %105
  %110 = load i32, i32* @ff_dequant_subband_32_sse4, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 %110, i32* %114, align 4
  %115 = load i8*, i8** @ff_put_signed_rect_clamped_10_sse4, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i8**, i8*** %117, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 1
  store i8* %115, i8** %119, align 8
  br label %120

120:                                              ; preds = %109, %105
  ret void
}

declare dso_local i32 @av_get_cpu_flags(...) #1

declare dso_local i64 @EXTERNAL_MMX(i32) #1

declare dso_local i32 @PIXFUNC(i32, i32, i32) #1

declare dso_local i64 @EXTERNAL_MMXEXT(i32) #1

declare dso_local i64 @EXTERNAL_SSE2(i32) #1

declare dso_local i64 @EXTERNAL_SSE4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
