; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c___GX_SaveFifo.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c___GX_SaveFifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__gxfifo = type { i32, i32, i32, i32, i32 }

@_cpufifo = common dso_local global i32 0, align 4
@_gpfifo = common dso_local global i32 0, align 4
@_gxcpufifoready = common dso_local global i64 0, align 8
@_piReg = common dso_local global i32* null, align 8
@_gxgpfifoready = common dso_local global i64 0, align 8
@_cpReg = common dso_local global i32* null, align 8
@_cpgplinked = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__GX_SaveFifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__GX_SaveFifo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.__gxfifo*, align 8
  %5 = alloca %struct.__gxfifo*, align 8
  store %struct.__gxfifo* bitcast (i32* @_cpufifo to %struct.__gxfifo*), %struct.__gxfifo** %4, align 8
  store %struct.__gxfifo* bitcast (i32* @_gpfifo to %struct.__gxfifo*), %struct.__gxfifo** %5, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @_CPU_ISR_Disable(i32 %6)
  %8 = load i64, i64* @_gxcpufifoready, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %0
  %11 = load i32*, i32** @_piReg, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 5
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 536870880
  %16 = call i64 @MEM_PHYSICAL_TO_K0(i32 %15)
  %17 = trunc i64 %16 to i32
  %18 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %19 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, 536870912
  %22 = icmp eq i32 %21, 536870912
  %23 = zext i1 %22 to i32
  %24 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %25 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %10, %0
  %27 = load i64, i64* @_gxgpfifoready, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %26
  %30 = load i32*, i32** @_cpReg, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 29
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @_SHIFTL(i32 %32, i32 16, i32 16)
  %34 = load i32*, i32** @_cpReg, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 28
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 65535
  %38 = or i32 %33, %37
  %39 = call i64 @MEM_PHYSICAL_TO_K0(i32 %38)
  %40 = trunc i64 %39 to i32
  %41 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %42 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32*, i32** @_cpReg, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 25
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @_SHIFTL(i32 %45, i32 16, i32 16)
  %47 = load i32*, i32** @_cpReg, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 24
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 65535
  %51 = or i32 %46, %50
  %52 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %53 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %29, %26
  %55 = load i64, i64* @_cpgplinked, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %54
  %58 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %59 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %62 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %64 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %67 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %69 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.__gxfifo*, %struct.__gxfifo** %5, align 8
  %72 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %102

73:                                               ; preds = %54
  %74 = load i64, i64* @_gxcpufifoready, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %101

76:                                               ; preds = %73
  %77 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %78 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %81 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %79, %82
  store i32 %83, i32* %1, align 4
  %84 = load i32, i32* %1, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %76
  %87 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %88 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %91 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %89, %92
  %94 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %95 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  br label %100

96:                                               ; preds = %76
  %97 = load i32, i32* %1, align 4
  %98 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %99 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %96, %86
  br label %101

101:                                              ; preds = %100, %73
  br label %102

102:                                              ; preds = %101, %57
  %103 = load i32, i32* %2, align 4
  %104 = call i32 @_CPU_ISR_Restore(i32 %103)
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i64 @MEM_PHYSICAL_TO_K0(i32) #1

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
