; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetCPUFifo.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetCPUFifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__gxfifo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@_cpufifo = common dso_local global i32 0, align 4
@_gxcpufifoready = common dso_local global i32 0, align 4
@_cpgplinked = common dso_local global i32 0, align 4
@_piReg = common dso_local global i32* null, align 8
@GX_TRUE = common dso_local global i32 0, align 4
@GX_ENABLE = common dso_local global i32 0, align 4
@GX_DISABLE = common dso_local global i32 0, align 4
@GX_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_SetCPUFifo(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.__gxfifo*, align 8
  %5 = alloca %struct.__gxfifo*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = bitcast i32* %6 to %struct.__gxfifo*
  store %struct.__gxfifo* %7, %struct.__gxfifo** %4, align 8
  store %struct.__gxfifo* bitcast (i32* @_cpufifo to %struct.__gxfifo*), %struct.__gxfifo** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @_CPU_ISR_Disable(i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  store i32 0, i32* @_gxcpufifoready, align 4
  store i32 0, i32* @_cpgplinked, align 4
  %13 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %14 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %16 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @_CPU_ISR_Restore(i32 %17)
  br label %136

19:                                               ; preds = %1
  %20 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %21 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %24 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %26 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %29 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %31 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %34 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %33, i32 0, i32 10
  store i32 %32, i32* %34, align 4
  %35 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %36 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %39 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 4
  %40 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %41 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %44 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 4
  %45 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %46 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %49 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 4
  %50 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %51 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %54 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %56 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %59 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 4
  %60 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %61 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %64 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %66 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %69 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %71 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  store i32 1, i32* @_gxcpufifoready, align 4
  %72 = call i64 (...) @__GX_CPGPLinkCheck()
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %105

74:                                               ; preds = %19
  store i32 1, i32* @_cpgplinked, align 4
  %75 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %76 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %75, i32 0, i32 0
  store i32 1, i32* %76, align 4
  %77 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %78 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @MEM_VIRTUAL_TO_PHYSICAL(i32 %79)
  %81 = load i32*, i32** @_piReg, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  store i32 %80, i32* %82, align 4
  %83 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %84 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @MEM_VIRTUAL_TO_PHYSICAL(i32 %85)
  %87 = load i32*, i32** @_piReg, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 4
  store i32 %86, i32* %88, align 4
  %89 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %90 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 536870880
  %93 = load i32*, i32** @_piReg, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 5
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @GX_TRUE, align 4
  %96 = load i32, i32* @GX_TRUE, align 4
  %97 = call i32 @__GX_WriteFifoIntReset(i32 %95, i32 %96)
  %98 = load i32, i32* @GX_ENABLE, align 4
  %99 = load i32, i32* @GX_DISABLE, align 4
  %100 = call i32 @__GX_WriteFifoIntEnable(i32 %98, i32 %99)
  %101 = load i32, i32* @GX_TRUE, align 4
  %102 = call i32 @__GX_FifoLink(i32 %101)
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @_CPU_ISR_Restore(i32 %103)
  br label %136

105:                                              ; preds = %19
  %106 = load i32, i32* @_cpgplinked, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* @GX_FALSE, align 4
  %110 = call i32 @__GX_FifoLink(i32 %109)
  store i32 0, i32* @_cpgplinked, align 4
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* @GX_DISABLE, align 4
  %113 = load i32, i32* @GX_DISABLE, align 4
  %114 = call i32 @__GX_WriteFifoIntEnable(i32 %112, i32 %113)
  %115 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %116 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @MEM_VIRTUAL_TO_PHYSICAL(i32 %117)
  %119 = load i32*, i32** @_piReg, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 3
  store i32 %118, i32* %120, align 4
  %121 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %122 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @MEM_VIRTUAL_TO_PHYSICAL(i32 %123)
  %125 = load i32*, i32** @_piReg, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 4
  store i32 %124, i32* %126, align 4
  %127 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %128 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 536870880
  %131 = load i32*, i32** @_piReg, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 5
  store i32 %130, i32* %132, align 4
  %133 = call i32 (...) @ppcsync()
  %134 = load i32, i32* %3, align 4
  %135 = call i32 @_CPU_ISR_Restore(i32 %134)
  br label %136

136:                                              ; preds = %111, %74, %12
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i64 @__GX_CPGPLinkCheck(...) #1

declare dso_local i32 @MEM_VIRTUAL_TO_PHYSICAL(i32) #1

declare dso_local i32 @__GX_WriteFifoIntReset(i32, i32) #1

declare dso_local i32 @__GX_WriteFifoIntEnable(i32, i32) #1

declare dso_local i32 @__GX_FifoLink(i32) #1

declare dso_local i32 @ppcsync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
