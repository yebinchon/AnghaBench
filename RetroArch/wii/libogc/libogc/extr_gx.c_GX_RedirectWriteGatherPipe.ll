; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_RedirectWriteGatherPipe.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_RedirectWriteGatherPipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__gxfifo = type { i32 }

@_cpufifo = common dso_local global i32 0, align 4
@_cpgplinked = common dso_local global i64 0, align 8
@GX_FALSE = common dso_local global i32 0, align 4
@GX_DISABLE = common dso_local global i32 0, align 4
@_piReg = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GX_RedirectWriteGatherPipe(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.__gxfifo*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.__gxfifo* bitcast (i32* @_cpufifo to %struct.__gxfifo*), %struct.__gxfifo** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @_CPU_ISR_Disable(i32 %5)
  %7 = call i32 (...) @GX_Flush()
  br label %8

8:                                                ; preds = %12, %1
  %9 = call i32 (...) @IsWriteGatherBufferEmpty()
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %8

13:                                               ; preds = %8
  %14 = call i32 @mtwpar(i32 201359360)
  %15 = load i64, i64* @_cpgplinked, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i32, i32* @GX_FALSE, align 4
  %19 = call i32 @__GX_FifoLink(i32 %18)
  %20 = load i32, i32* @GX_DISABLE, align 4
  %21 = load i32, i32* @GX_DISABLE, align 4
  %22 = call i32 @__GX_WriteFifoIntEnable(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %17, %13
  %24 = load i32*, i32** @_piReg, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 5
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, -67108865
  %28 = call i64 @MEM_PHYSICAL_TO_K0(i32 %27)
  %29 = trunc i64 %28 to i32
  %30 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %31 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32*, i32** @_piReg, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  store i32 0, i32* %33, align 4
  %34 = load i32*, i32** @_piReg, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  store i32 67108864, i32* %35, align 4
  %36 = load i8*, i8** %2, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = and i32 %37, 1073741792
  %39 = and i32 %38, -67108865
  %40 = load i32*, i32** @_piReg, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 5
  store i32 %39, i32* %41, align 4
  %42 = call i32 (...) @_sync()
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @_CPU_ISR_Restore(i32 %43)
  ret i8* inttoptr (i64 201359360 to i8*)
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @GX_Flush(...) #1

declare dso_local i32 @IsWriteGatherBufferEmpty(...) #1

declare dso_local i32 @mtwpar(i32) #1

declare dso_local i32 @__GX_FifoLink(i32) #1

declare dso_local i32 @__GX_WriteFifoIntEnable(i32, i32) #1

declare dso_local i64 @MEM_PHYSICAL_TO_K0(i32) #1

declare dso_local i32 @_sync(...) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
