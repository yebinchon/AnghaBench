; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_LoadTlut.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_LoadTlut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__gx_tlutregion = type { i32, i32, i32, i32 }
%struct.__gx_tlutobj = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_LoadTlut(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.__gx_tlutregion*, align 8
  %6 = alloca %struct.__gx_tlutobj*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.__gx_tlutregion* null, %struct.__gx_tlutregion** %5, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to %struct.__gx_tlutobj*
  store %struct.__gx_tlutobj* %8, %struct.__gx_tlutobj** %6, align 8
  br i1 true, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @tlut_regionCB(i32 %10)
  %12 = inttoptr i64 %11 to %struct.__gx_tlutregion*
  store %struct.__gx_tlutregion* %12, %struct.__gx_tlutregion** %5, align 8
  br label %13

13:                                               ; preds = %9, %2
  %14 = call i32 (...) @__GX_FlushTextureState()
  %15 = load %struct.__gx_tlutobj*, %struct.__gx_tlutobj** %6, align 8
  %16 = getelementptr inbounds %struct.__gx_tlutobj, %struct.__gx_tlutobj* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @GX_LOAD_BP_REG(i32 %17)
  %19 = load %struct.__gx_tlutregion*, %struct.__gx_tlutregion** %5, align 8
  %20 = getelementptr inbounds %struct.__gx_tlutregion, %struct.__gx_tlutregion* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @GX_LOAD_BP_REG(i32 %21)
  %23 = call i32 (...) @__GX_FlushTextureState()
  %24 = load %struct.__gx_tlutobj*, %struct.__gx_tlutobj** %6, align 8
  %25 = getelementptr inbounds %struct.__gx_tlutobj, %struct.__gx_tlutobj* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, -1024
  %28 = load %struct.__gx_tlutregion*, %struct.__gx_tlutregion** %5, align 8
  %29 = getelementptr inbounds %struct.__gx_tlutregion, %struct.__gx_tlutregion* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 1023
  %32 = or i32 %27, %31
  %33 = load %struct.__gx_tlutregion*, %struct.__gx_tlutregion** %5, align 8
  %34 = getelementptr inbounds %struct.__gx_tlutregion, %struct.__gx_tlutregion* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.__gx_tlutobj*, %struct.__gx_tlutobj** %6, align 8
  %36 = getelementptr inbounds %struct.__gx_tlutobj, %struct.__gx_tlutobj* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.__gx_tlutregion*, %struct.__gx_tlutregion** %5, align 8
  %39 = getelementptr inbounds %struct.__gx_tlutregion, %struct.__gx_tlutregion* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.__gx_tlutobj*, %struct.__gx_tlutobj** %6, align 8
  %41 = getelementptr inbounds %struct.__gx_tlutobj, %struct.__gx_tlutobj* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.__gx_tlutregion*, %struct.__gx_tlutregion** %5, align 8
  %44 = getelementptr inbounds %struct.__gx_tlutregion, %struct.__gx_tlutregion* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  ret void
}

declare dso_local i64 @tlut_regionCB(i32) #1

declare dso_local i32 @__GX_FlushTextureState(...) #1

declare dso_local i32 @GX_LOAD_BP_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
