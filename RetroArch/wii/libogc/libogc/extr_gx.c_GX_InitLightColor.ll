; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InitLightColor.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InitLightColor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.__gx_litobj = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_InitLightColor(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.__gx_litobj*, align 8
  %7 = bitcast %struct.TYPE_3__* %4 to { i64, i64 }*
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %1, i64* %8, align 4
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %2, i64* %9, align 4
  store i32* %0, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = bitcast i32* %10 to %struct.__gx_litobj*
  store %struct.__gx_litobj* %11, %struct.__gx_litobj** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @_SHIFTL(i32 %13, i32 24, i32 8)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @_SHIFTL(i32 %16, i32 16, i32 8)
  %18 = or i32 %14, %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @_SHIFTL(i32 %20, i32 8, i32 8)
  %22 = or i32 %18, %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 255
  %26 = or i32 %22, %25
  %27 = load %struct.__gx_litobj*, %struct.__gx_litobj** %6, align 8
  %28 = getelementptr inbounds %struct.__gx_litobj, %struct.__gx_litobj* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  ret void
}

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
