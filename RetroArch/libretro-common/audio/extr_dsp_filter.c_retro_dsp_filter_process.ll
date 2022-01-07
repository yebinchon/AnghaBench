; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/extr_dsp_filter.c_retro_dsp_filter_process.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/extr_dsp_filter.c_retro_dsp_filter_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, %struct.dspfilter_output*, %struct.dspfilter_input*)* }
%struct.dspfilter_output = type { i32, i32, i32 }
%struct.dspfilter_input = type { i32, i32, i32 }
%struct.retro_dsp_data = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @retro_dsp_filter_process(%struct.TYPE_7__* %0, %struct.retro_dsp_data* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.retro_dsp_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dspfilter_output, align 4
  %7 = alloca %struct.dspfilter_input, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.retro_dsp_data* %1, %struct.retro_dsp_data** %4, align 8
  %8 = bitcast %struct.dspfilter_output* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 12, i1 false)
  %9 = bitcast %struct.dspfilter_input* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 12, i1 false)
  %10 = load %struct.retro_dsp_data*, %struct.retro_dsp_data** %4, align 8
  %11 = getelementptr inbounds %struct.retro_dsp_data, %struct.retro_dsp_data* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %6, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load %struct.retro_dsp_data*, %struct.retro_dsp_data** %4, align 8
  %15 = getelementptr inbounds %struct.retro_dsp_data, %struct.retro_dsp_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %6, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %50, %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %6, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.dspfilter_input, %struct.dspfilter_input* %7, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.dspfilter_input, %struct.dspfilter_input* %7, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32 (i32, %struct.dspfilter_output*, %struct.dspfilter_input*)*, i32 (i32, %struct.dspfilter_output*, %struct.dspfilter_input*)** %39, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 %40(i32 %48, %struct.dspfilter_output* %6, %struct.dspfilter_input* %7)
  br label %50

50:                                               ; preds = %24
  %51 = load i32, i32* %5, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %18

53:                                               ; preds = %18
  %54 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %6, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.retro_dsp_data*, %struct.retro_dsp_data** %4, align 8
  %57 = getelementptr inbounds %struct.retro_dsp_data, %struct.retro_dsp_data* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %6, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.retro_dsp_data*, %struct.retro_dsp_data** %4, align 8
  %61 = getelementptr inbounds %struct.retro_dsp_data, %struct.retro_dsp_data* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
