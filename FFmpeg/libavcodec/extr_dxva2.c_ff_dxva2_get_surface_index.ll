; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2.c_ff_dxva2_get_surface_index.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2.c_ff_dxva2_get_surface_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8** }
%struct.TYPE_18__ = type { i32* }

@AV_PIX_FMT_D3D11 = common dso_local global i64 0, align 8
@AV_PIX_FMT_D3D11VA_VLD = common dso_local global i64 0, align 8
@AV_PIX_FMT_DXVA2_VLD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_dxva2_get_surface_index(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %6, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %11 = call i8* @get_surface(%struct.TYPE_20__* %9, %struct.TYPE_18__* %10)
  store i8* %11, i8** %7, align 8
  %12 = call i32 @assert(i32 0)
  ret i32 0
}

declare dso_local i8* @get_surface(%struct.TYPE_20__*, %struct.TYPE_18__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
