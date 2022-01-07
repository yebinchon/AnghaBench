; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_on2avc.c_wtf_end_1024.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_on2avc.c_wtf_end_1024.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__, %struct.TYPE_15__ }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*, i32*)*, i32 (%struct.TYPE_14__*, i32*)* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, i32*)*, i32 (%struct.TYPE_15__*, i32*)* }

@ff_on2avc_ctab_1 = common dso_local global i32 0, align 4
@ff_on2avc_ctab_2 = common dso_local global i32 0, align 4
@ff_on2avc_ctab_3 = common dso_local global i32 0, align 4
@ff_on2avc_ctab_4 = common dso_local global i32 0, align 4
@ff_on2avc_tabs_20_84_1 = common dso_local global i32 0, align 4
@ff_on2avc_tabs_20_84_2 = common dso_local global i32 0, align 4
@ff_on2avc_tabs_20_84_3 = common dso_local global i32 0, align 4
@ff_on2avc_tabs_20_84_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, float*, float*, float*, float*)* @wtf_end_1024 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wtf_end_1024(%struct.TYPE_13__* %0, float* %1, float* %2, float* %3, float* %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  %11 = load float*, float** %8, align 8
  %12 = load float*, float** %9, align 8
  %13 = call i32 @memcpy(float* %11, float* %12, i32 3072)
  %14 = load float*, float** %9, align 8
  %15 = getelementptr inbounds float, float* %14, i64 768
  %16 = load float*, float** %8, align 8
  %17 = getelementptr inbounds float, float* %16, i64 768
  %18 = call i32 @memcpy(float* %15, float* %17, i32 1024)
  %19 = load float*, float** %8, align 8
  %20 = call i32 @zero_head_and_tail(float* %19, i32 256, i32 16, i32 4)
  %21 = load float*, float** %8, align 8
  %22 = getelementptr inbounds float, float* %21, i64 256
  %23 = call i32 @zero_head_and_tail(float* %22, i32 256, i32 16, i32 4)
  %24 = load float*, float** %8, align 8
  %25 = getelementptr inbounds float, float* %24, i64 512
  %26 = call i32 @zero_head_and_tail(float* %25, i32 256, i32 13, i32 7)
  %27 = load float*, float** %8, align 8
  %28 = getelementptr inbounds float, float* %27, i64 768
  %29 = call i32 @zero_head_and_tail(float* %28, i32 256, i32 15, i32 5)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = load i32 (%struct.TYPE_15__*, i32*)*, i32 (%struct.TYPE_15__*, i32*)** %32, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load float*, float** %8, align 8
  %37 = bitcast float* %36 to i32*
  %38 = call i32 %33(%struct.TYPE_15__* %35, i32* %37)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load i32 (%struct.TYPE_15__*, i32*)*, i32 (%struct.TYPE_15__*, i32*)** %41, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load float*, float** %8, align 8
  %46 = getelementptr inbounds float, float* %45, i64 256
  %47 = bitcast float* %46 to i32*
  %48 = call i32 %42(%struct.TYPE_15__* %44, i32* %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i32 (%struct.TYPE_15__*, i32*)*, i32 (%struct.TYPE_15__*, i32*)** %51, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load float*, float** %8, align 8
  %56 = getelementptr inbounds float, float* %55, i64 512
  %57 = bitcast float* %56 to i32*
  %58 = call i32 %52(%struct.TYPE_15__* %54, i32* %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = load i32 (%struct.TYPE_15__*, i32*)*, i32 (%struct.TYPE_15__*, i32*)** %61, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load float*, float** %8, align 8
  %66 = getelementptr inbounds float, float* %65, i64 768
  %67 = bitcast float* %66 to i32*
  %68 = call i32 %62(%struct.TYPE_15__* %64, i32* %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i32 (%struct.TYPE_15__*, i32*)*, i32 (%struct.TYPE_15__*, i32*)** %71, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load float*, float** %8, align 8
  %76 = bitcast float* %75 to i32*
  %77 = call i32 %72(%struct.TYPE_15__* %74, i32* %76)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32 (%struct.TYPE_15__*, i32*)*, i32 (%struct.TYPE_15__*, i32*)** %80, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load float*, float** %8, align 8
  %85 = getelementptr inbounds float, float* %84, i64 256
  %86 = bitcast float* %85 to i32*
  %87 = call i32 %81(%struct.TYPE_15__* %83, i32* %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i32 (%struct.TYPE_15__*, i32*)*, i32 (%struct.TYPE_15__*, i32*)** %90, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load float*, float** %8, align 8
  %95 = getelementptr inbounds float, float* %94, i64 512
  %96 = bitcast float* %95 to i32*
  %97 = call i32 %91(%struct.TYPE_15__* %93, i32* %96)
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i32 (%struct.TYPE_15__*, i32*)*, i32 (%struct.TYPE_15__*, i32*)** %100, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load float*, float** %8, align 8
  %105 = getelementptr inbounds float, float* %104, i64 768
  %106 = bitcast float* %105 to i32*
  %107 = call i32 %101(%struct.TYPE_15__* %103, i32* %106)
  %108 = load float*, float** %8, align 8
  %109 = load float*, float** %8, align 8
  %110 = getelementptr inbounds float, float* %109, i64 256
  %111 = load float*, float** %8, align 8
  %112 = getelementptr inbounds float, float* %111, i64 512
  %113 = load float*, float** %8, align 8
  %114 = getelementptr inbounds float, float* %113, i64 768
  %115 = load float*, float** %10, align 8
  %116 = load i32, i32* @ff_on2avc_ctab_1, align 4
  %117 = load i32, i32* @ff_on2avc_ctab_2, align 4
  %118 = load i32, i32* @ff_on2avc_ctab_3, align 4
  %119 = load i32, i32* @ff_on2avc_ctab_4, align 4
  %120 = call i32 @combine_fft(float* %108, float* %110, float* %112, float* %114, float* %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 1024, i32 1)
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = load i32 (%struct.TYPE_14__*, i32*)*, i32 (%struct.TYPE_14__*, i32*)** %123, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load float*, float** %10, align 8
  %128 = bitcast float* %127 to i32*
  %129 = call i32 %124(%struct.TYPE_14__* %126, i32* %128)
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i32 (%struct.TYPE_14__*, i32*)*, i32 (%struct.TYPE_14__*, i32*)** %132, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load float*, float** %10, align 8
  %137 = bitcast float* %136 to i32*
  %138 = call i32 %133(%struct.TYPE_14__* %135, i32* %137)
  %139 = load float*, float** %9, align 8
  %140 = getelementptr inbounds float, float* %139, i64 0
  %141 = load float*, float** %10, align 8
  %142 = load i32, i32* @ff_on2avc_tabs_20_84_1, align 4
  %143 = call i32 @pretwiddle(float* %140, float* %141, i32 1024, i32 84, i32 4, i32 16, i32 4, i32 %142)
  %144 = load float*, float** %9, align 8
  %145 = getelementptr inbounds float, float* %144, i64 256
  %146 = load float*, float** %10, align 8
  %147 = load i32, i32* @ff_on2avc_tabs_20_84_2, align 4
  %148 = call i32 @pretwiddle(float* %145, float* %146, i32 1024, i32 84, i32 4, i32 16, i32 4, i32 %147)
  %149 = load float*, float** %9, align 8
  %150 = getelementptr inbounds float, float* %149, i64 512
  %151 = load float*, float** %10, align 8
  %152 = load i32, i32* @ff_on2avc_tabs_20_84_3, align 4
  %153 = call i32 @pretwiddle(float* %150, float* %151, i32 1024, i32 84, i32 4, i32 13, i32 7, i32 %152)
  %154 = load float*, float** %9, align 8
  %155 = getelementptr inbounds float, float* %154, i64 768
  %156 = load float*, float** %10, align 8
  %157 = load i32, i32* @ff_on2avc_tabs_20_84_4, align 4
  %158 = call i32 @pretwiddle(float* %155, float* %156, i32 1024, i32 84, i32 4, i32 15, i32 5, i32 %157)
  %159 = load float*, float** %8, align 8
  %160 = load float*, float** %10, align 8
  %161 = call i32 @memcpy(float* %159, float* %160, i32 4096)
  ret void
}

declare dso_local i32 @memcpy(float*, float*, i32) #1

declare dso_local i32 @zero_head_and_tail(float*, i32, i32, i32) #1

declare dso_local i32 @combine_fft(float*, float*, float*, float*, float*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pretwiddle(float*, float*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
