; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_aram.c_AR_StartDMA.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_aram.c_AR_StartDMA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_dspReg = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AR_StartDMA(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @_CPU_ISR_Disable(i32 %10)
  %12 = load i32*, i32** @_dspReg, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 16
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, -1024
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @_SHIFTR(i32 %16, i32 16, i32 16)
  %18 = or i32 %15, %17
  %19 = load i32*, i32** @_dspReg, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 16
  store i32 %18, i32* %20, align 4
  %21 = load i32*, i32** @_dspReg, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 17
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, -65505
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @_SHIFTR(i32 %25, i32 0, i32 16)
  %27 = or i32 %24, %26
  %28 = load i32*, i32** @_dspReg, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 17
  store i32 %27, i32* %29, align 4
  %30 = load i32*, i32** @_dspReg, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 18
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, -1024
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @_SHIFTR(i32 %34, i32 16, i32 16)
  %36 = or i32 %33, %35
  %37 = load i32*, i32** @_dspReg, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 18
  store i32 %36, i32* %38, align 4
  %39 = load i32*, i32** @_dspReg, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 19
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, -65505
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @_SHIFTR(i32 %43, i32 0, i32 16)
  %45 = or i32 %42, %44
  %46 = load i32*, i32** @_dspReg, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 19
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** @_dspReg, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 20
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, -32769
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @_SHIFTL(i32 %52, i32 15, i32 1)
  %54 = or i32 %51, %53
  %55 = load i32*, i32** @_dspReg, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 20
  store i32 %54, i32* %56, align 4
  %57 = load i32*, i32** @_dspReg, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 20
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, -1024
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @_SHIFTR(i32 %61, i32 16, i32 16)
  %63 = or i32 %60, %62
  %64 = load i32*, i32** @_dspReg, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 20
  store i32 %63, i32* %65, align 4
  %66 = load i32*, i32** @_dspReg, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 21
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, -65505
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @_SHIFTR(i32 %70, i32 0, i32 16)
  %72 = or i32 %69, %71
  %73 = load i32*, i32** @_dspReg, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 21
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @_CPU_ISR_Restore(i32 %75)
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @_SHIFTR(i32, i32, i32) #1

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
