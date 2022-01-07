; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_vscale.c_ff_init_vscale.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_vscale.c_ff_init_vscale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32*, i32*, i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@lum_planar_vscale = common dso_local global i32 0, align 4
@chr_planar_vscale = common dso_local global i32 0, align 4
@packed_vscale = common dso_local global i32 0, align 4
@any_vscale = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_init_vscale(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @isPlanarYUV(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @isGray(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %89

23:                                               ; preds = %17
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @isALPHA(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %89, label %29

29:                                               ; preds = %23, %4
  %30 = call i32* @av_mallocz(i32 4)
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = call i32 @AVERROR(i32 %34)
  store i32 %35, i32* %5, align 4
  br label %157

36:                                               ; preds = %29
  %37 = load i32, i32* @lum_planar_vscale, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 4
  store i32 %37, i32* %40, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  store i32* %41, i32** %44, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  store i32* %45, i32** %48, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32* %49, i32** %52, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @isGray(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %88, label %64

64:                                               ; preds = %36
  %65 = call i32* @av_mallocz(i32 4)
  store i32* %65, i32** %11, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = call i32 @AVERROR(i32 %69)
  store i32 %70, i32* %5, align 4
  br label %157

71:                                               ; preds = %64
  %72 = load i32, i32* @chr_planar_vscale, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 4
  store i32 %72, i32* %75, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 3
  store i32* %76, i32** %79, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  store i32* %80, i32** %83, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  store i32* %84, i32** %87, align 8
  br label %88

88:                                               ; preds = %71, %36
  br label %130

89:                                               ; preds = %23, %17
  %90 = call i32* @av_mallocz_array(i32 4, i32 2)
  store i32* %90, i32** %10, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = call i32 @AVERROR(i32 %94)
  store i32 %95, i32* %5, align 4
  br label %157

96:                                               ; preds = %89
  %97 = load i32*, i32** %10, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  store i32* %98, i32** %11, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* @packed_vscale, align 4
  br label %107

105:                                              ; preds = %96
  %106 = load i32, i32* @any_vscale, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 4
  store i32 %108, i32* %111, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 3
  store i32* %112, i32** %115, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  store i32* %116, i32** %119, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  store i32* %120, i32** %123, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 8
  br label %130

130:                                              ; preds = %107, %88
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @ff_init_vscale_pfn(%struct.TYPE_7__* %131, i32 %134, i32 %137, i32 %140, i32 %143, i32 %146, i64 %149, i32 %152, i32 %155)
  store i32 0, i32* %5, align 4
  br label %157

157:                                              ; preds = %130, %93, %68, %33
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i64 @isPlanarYUV(i32) #1

declare dso_local i64 @isGray(i32) #1

declare dso_local i32 @isALPHA(i32) #1

declare dso_local i32* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @av_mallocz_array(i32, i32) #1

declare dso_local i32 @ff_init_vscale_pfn(%struct.TYPE_7__*, i32, i32, i32, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
