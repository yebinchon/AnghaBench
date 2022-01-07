; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c___GX_CleanGPFifo.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c___GX_CleanGPFifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.__gxfifo = type { i32, i32, i64 }

@_gpfifo = common dso_local global i32 0, align 4
@_cpufifo = common dso_local global i32 0, align 4
@_gxgpfifoready = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@_cpReg = common dso_local global i32* null, align 8
@_cpgplinked = common dso_local global i64 0, align 8
@_piReg = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@__gx = common dso_local global %struct.TYPE_2__* null, align 8
@breakPtCB = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__GX_CleanGPFifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__GX_CleanGPFifo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.__gxfifo*, align 8
  %3 = alloca %struct.__gxfifo*, align 8
  store %struct.__gxfifo* bitcast (i32* @_gpfifo to %struct.__gxfifo*), %struct.__gxfifo** %2, align 8
  store %struct.__gxfifo* bitcast (i32* @_cpufifo to %struct.__gxfifo*), %struct.__gxfifo** %3, align 8
  %4 = load i32, i32* @_gxgpfifoready, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %107

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @_CPU_ISR_Disable(i32 %8)
  %10 = call i32 (...) @__GX_FifoReadDisable()
  %11 = load i32, i32* @FALSE, align 4
  %12 = load i32, i32* @FALSE, align 4
  %13 = call i32 @__GX_WriteFifoIntEnable(i32 %11, i32 %12)
  %14 = load %struct.__gxfifo*, %struct.__gxfifo** %2, align 8
  %15 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.__gxfifo*, %struct.__gxfifo** %2, align 8
  %18 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.__gxfifo*, %struct.__gxfifo** %2, align 8
  %20 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.__gxfifo*, %struct.__gxfifo** %2, align 8
  %22 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @_SHIFTL(i64 %23, i32 0, i32 16)
  %25 = load i32*, i32** @_cpReg, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 24
  store i32 %24, i32* %26, align 4
  %27 = load %struct.__gxfifo*, %struct.__gxfifo** %2, align 8
  %28 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @_SHIFTR(i64 %29, i32 16, i32 16)
  %31 = load i32*, i32** @_cpReg, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 25
  store i32 %30, i32* %32, align 4
  %33 = load %struct.__gxfifo*, %struct.__gxfifo** %2, align 8
  %34 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @MEM_VIRTUAL_TO_PHYSICAL(i32 %35)
  %37 = call i32 @_SHIFTL(i64 %36, i32 0, i32 16)
  %38 = load i32*, i32** @_cpReg, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 26
  store i32 %37, i32* %39, align 4
  %40 = load %struct.__gxfifo*, %struct.__gxfifo** %2, align 8
  %41 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @MEM_VIRTUAL_TO_PHYSICAL(i32 %42)
  %44 = call i32 @_SHIFTR(i64 %43, i32 16, i32 16)
  %45 = load i32*, i32** @_cpReg, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 27
  store i32 %44, i32* %46, align 4
  %47 = load %struct.__gxfifo*, %struct.__gxfifo** %2, align 8
  %48 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @MEM_VIRTUAL_TO_PHYSICAL(i32 %49)
  %51 = call i32 @_SHIFTL(i64 %50, i32 0, i32 16)
  %52 = load i32*, i32** @_cpReg, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 28
  store i32 %51, i32* %53, align 4
  %54 = load %struct.__gxfifo*, %struct.__gxfifo** %2, align 8
  %55 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @MEM_VIRTUAL_TO_PHYSICAL(i32 %56)
  %58 = call i32 @_SHIFTR(i64 %57, i32 16, i32 16)
  %59 = load i32*, i32** @_cpReg, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 29
  store i32 %58, i32* %60, align 4
  %61 = call i32 (...) @ppcsync()
  %62 = load i64, i64* @_cpgplinked, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %91

64:                                               ; preds = %7
  %65 = load %struct.__gxfifo*, %struct.__gxfifo** %2, align 8
  %66 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.__gxfifo*, %struct.__gxfifo** %3, align 8
  %69 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.__gxfifo*, %struct.__gxfifo** %2, align 8
  %71 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.__gxfifo*, %struct.__gxfifo** %3, align 8
  %74 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.__gxfifo*, %struct.__gxfifo** %2, align 8
  %76 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.__gxfifo*, %struct.__gxfifo** %3, align 8
  %79 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  %80 = load %struct.__gxfifo*, %struct.__gxfifo** %3, align 8
  %81 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 536870880
  %84 = load i32*, i32** @_piReg, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 5
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @TRUE, align 4
  %87 = load i32, i32* @FALSE, align 4
  %88 = call i32 @__GX_WriteFifoIntEnable(i32 %86, i32 %87)
  %89 = load i32, i32* @TRUE, align 4
  %90 = call i32 @__GX_FifoLink(i32 %89)
  br label %91

91:                                               ; preds = %64, %7
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, -35
  store i32 %95, i32* %93, align 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** @_cpReg, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  store i32 %98, i32* %100, align 4
  store i32* null, i32** @breakPtCB, align 8
  %101 = load i32, i32* @TRUE, align 4
  %102 = load i32, i32* @TRUE, align 4
  %103 = call i32 @__GX_WriteFifoIntReset(i32 %101, i32 %102)
  %104 = call i32 (...) @__GX_FifoReadEnable()
  %105 = load i32, i32* %1, align 4
  %106 = call i32 @_CPU_ISR_Restore(i32 %105)
  br label %107

107:                                              ; preds = %91, %6
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @__GX_FifoReadDisable(...) #1

declare dso_local i32 @__GX_WriteFifoIntEnable(i32, i32) #1

declare dso_local i32 @_SHIFTL(i64, i32, i32) #1

declare dso_local i32 @_SHIFTR(i64, i32, i32) #1

declare dso_local i64 @MEM_VIRTUAL_TO_PHYSICAL(i32) #1

declare dso_local i32 @ppcsync(...) #1

declare dso_local i32 @__GX_FifoLink(i32) #1

declare dso_local i32 @__GX_WriteFifoIntReset(i32, i32) #1

declare dso_local i32 @__GX_FifoReadEnable(...) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
