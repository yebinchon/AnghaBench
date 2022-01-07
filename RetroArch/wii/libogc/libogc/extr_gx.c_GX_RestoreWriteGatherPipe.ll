; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_RestoreWriteGatherPipe.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_RestoreWriteGatherPipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.__gxfifo = type { i64, i32, i32 }

@_cpufifo = common dso_local global i32 0, align 4
@wgPipe = common dso_local global %struct.TYPE_2__* null, align 8
@_piReg = common dso_local global i32* null, align 8
@_cpgplinked = common dso_local global i64 0, align 8
@GX_TRUE = common dso_local global i32 0, align 4
@GX_ENABLE = common dso_local global i32 0, align 4
@GX_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_RestoreWriteGatherPipe() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.__gxfifo*, align 8
  store %struct.__gxfifo* bitcast (i32* @_cpufifo to %struct.__gxfifo*), %struct.__gxfifo** %2, align 8
  %3 = load i32, i32* %1, align 4
  %4 = call i32 @_CPU_ISR_Disable(i32 %3)
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wgPipe, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wgPipe, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wgPipe, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wgPipe, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wgPipe, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wgPipe, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wgPipe, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wgPipe, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = call i32 (...) @ppcsync()
  br label %22

22:                                               ; preds = %26, %0
  %23 = call i32 (...) @IsWriteGatherBufferEmpty()
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %22

27:                                               ; preds = %22
  %28 = call i32 @mtwpar(i32 201359360)
  %29 = load %struct.__gxfifo*, %struct.__gxfifo** %2, align 8
  %30 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @MEM_VIRTUAL_TO_PHYSICAL(i32 %31)
  %33 = load i32*, i32** @_piReg, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.__gxfifo*, %struct.__gxfifo** %2, align 8
  %36 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @MEM_VIRTUAL_TO_PHYSICAL(i32 %37)
  %39 = load i32*, i32** @_piReg, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.__gxfifo*, %struct.__gxfifo** %2, align 8
  %42 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = and i32 %44, 1073741792
  %46 = and i32 %45, -67108865
  %47 = load i32*, i32** @_piReg, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 5
  store i32 %46, i32* %48, align 4
  %49 = load i64, i64* @_cpgplinked, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %27
  %52 = load i32, i32* @GX_TRUE, align 4
  %53 = load i32, i32* @GX_TRUE, align 4
  %54 = call i32 @__GX_WriteFifoIntReset(i32 %52, i32 %53)
  %55 = load i32, i32* @GX_ENABLE, align 4
  %56 = load i32, i32* @GX_DISABLE, align 4
  %57 = call i32 @__GX_WriteFifoIntEnable(i32 %55, i32 %56)
  %58 = load i32, i32* @GX_TRUE, align 4
  %59 = call i32 @__GX_FifoLink(i32 %58)
  br label %60

60:                                               ; preds = %51, %27
  %61 = load i32, i32* %1, align 4
  %62 = call i32 @_CPU_ISR_Restore(i32 %61)
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @ppcsync(...) #1

declare dso_local i32 @IsWriteGatherBufferEmpty(...) #1

declare dso_local i32 @mtwpar(i32) #1

declare dso_local i32 @MEM_VIRTUAL_TO_PHYSICAL(i32) #1

declare dso_local i32 @__GX_WriteFifoIntReset(i32, i32) #1

declare dso_local i32 @__GX_WriteFifoIntEnable(i32, i32) #1

declare dso_local i32 @__GX_FifoLink(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
