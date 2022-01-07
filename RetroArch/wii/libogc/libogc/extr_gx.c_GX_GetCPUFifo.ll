; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_GetCPUFifo.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_GetCPUFifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__gxfifo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@_cpufifo = common dso_local global i32 0, align 4
@_gxcpufifoready = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_GetCPUFifo(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.__gxfifo*, align 8
  %4 = alloca %struct.__gxfifo*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = bitcast i32* %5 to %struct.__gxfifo*
  store %struct.__gxfifo* %6, %struct.__gxfifo** %3, align 8
  store %struct.__gxfifo* bitcast (i32* @_cpufifo to %struct.__gxfifo*), %struct.__gxfifo** %4, align 8
  %7 = load i32, i32* @_gxcpufifoready, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %68

10:                                               ; preds = %1
  %11 = call i32 (...) @GX_Flush()
  %12 = call i32 (...) @__GX_SaveFifo()
  %13 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %14 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.__gxfifo*, %struct.__gxfifo** %3, align 8
  %17 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %16, i32 0, i32 10
  store i32 %15, i32* %17, align 4
  %18 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %19 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.__gxfifo*, %struct.__gxfifo** %3, align 8
  %22 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %21, i32 0, i32 9
  store i32 %20, i32* %22, align 4
  %23 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %24 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.__gxfifo*, %struct.__gxfifo** %3, align 8
  %27 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 4
  %28 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %29 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.__gxfifo*, %struct.__gxfifo** %3, align 8
  %32 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 4
  %33 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %34 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.__gxfifo*, %struct.__gxfifo** %3, align 8
  %37 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %39 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.__gxfifo*, %struct.__gxfifo** %3, align 8
  %42 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %44 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.__gxfifo*, %struct.__gxfifo** %3, align 8
  %47 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %49 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.__gxfifo*, %struct.__gxfifo** %3, align 8
  %52 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %54 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.__gxfifo*, %struct.__gxfifo** %3, align 8
  %57 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %59 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.__gxfifo*, %struct.__gxfifo** %3, align 8
  %62 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.__gxfifo*, %struct.__gxfifo** %4, align 8
  %64 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.__gxfifo*, %struct.__gxfifo** %3, align 8
  %67 = getelementptr inbounds %struct.__gxfifo, %struct.__gxfifo* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @GX_Flush(...) #1

declare dso_local i32 @__GX_SaveFifo(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
