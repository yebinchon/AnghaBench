; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_LoadLightObj.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_LoadLightObj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.__gx_litobj = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@wgPipe = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_LoadLightObj(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.__gx_litobj*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.__gx_litobj*
  store %struct.__gx_litobj* %9, %struct.__gx_litobj** %7, align 8
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %19 [
    i32 135, label %11
    i32 134, label %12
    i32 133, label %13
    i32 132, label %14
    i32 131, label %15
    i32 130, label %16
    i32 129, label %17
    i32 128, label %18
  ]

11:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %20

12:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %20

13:                                               ; preds = %2
  store i32 2, i32* %5, align 4
  br label %20

14:                                               ; preds = %2
  store i32 3, i32* %5, align 4
  br label %20

15:                                               ; preds = %2
  store i32 4, i32* %5, align 4
  br label %20

16:                                               ; preds = %2
  store i32 5, i32* %5, align 4
  br label %20

17:                                               ; preds = %2
  store i32 6, i32* %5, align 4
  br label %20

18:                                               ; preds = %2
  store i32 7, i32* %5, align 4
  br label %20

19:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %19, %18, %17, %16, %15, %14, %13, %12, %11
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @_SHIFTL(i32 %21, i32 4, i32 8)
  %23 = or i32 1536, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @GX_LOAD_XF_REGS(i32 %24, i32 16)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wgPipe, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wgPipe, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wgPipe, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.__gx_litobj*, %struct.__gx_litobj** %7, align 8
  %33 = getelementptr inbounds %struct.__gx_litobj, %struct.__gx_litobj* %32, i32 0, i32 12
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wgPipe, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.__gx_litobj*, %struct.__gx_litobj** %7, align 8
  %38 = getelementptr inbounds %struct.__gx_litobj, %struct.__gx_litobj* %37, i32 0, i32 11
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wgPipe, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.__gx_litobj*, %struct.__gx_litobj** %7, align 8
  %43 = getelementptr inbounds %struct.__gx_litobj, %struct.__gx_litobj* %42, i32 0, i32 10
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wgPipe, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.__gx_litobj*, %struct.__gx_litobj** %7, align 8
  %48 = getelementptr inbounds %struct.__gx_litobj, %struct.__gx_litobj* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wgPipe, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.__gx_litobj*, %struct.__gx_litobj** %7, align 8
  %53 = getelementptr inbounds %struct.__gx_litobj, %struct.__gx_litobj* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wgPipe, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.__gx_litobj*, %struct.__gx_litobj** %7, align 8
  %58 = getelementptr inbounds %struct.__gx_litobj, %struct.__gx_litobj* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wgPipe, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.__gx_litobj*, %struct.__gx_litobj** %7, align 8
  %63 = getelementptr inbounds %struct.__gx_litobj, %struct.__gx_litobj* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wgPipe, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.__gx_litobj*, %struct.__gx_litobj** %7, align 8
  %68 = getelementptr inbounds %struct.__gx_litobj, %struct.__gx_litobj* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wgPipe, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.__gx_litobj*, %struct.__gx_litobj** %7, align 8
  %73 = getelementptr inbounds %struct.__gx_litobj, %struct.__gx_litobj* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wgPipe, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.__gx_litobj*, %struct.__gx_litobj** %7, align 8
  %78 = getelementptr inbounds %struct.__gx_litobj, %struct.__gx_litobj* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wgPipe, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.__gx_litobj*, %struct.__gx_litobj** %7, align 8
  %83 = getelementptr inbounds %struct.__gx_litobj, %struct.__gx_litobj* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wgPipe, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.__gx_litobj*, %struct.__gx_litobj** %7, align 8
  %88 = getelementptr inbounds %struct.__gx_litobj, %struct.__gx_litobj* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wgPipe, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.__gx_litobj*, %struct.__gx_litobj** %7, align 8
  %93 = getelementptr inbounds %struct.__gx_litobj, %struct.__gx_litobj* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wgPipe, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  ret void
}

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

declare dso_local i32 @GX_LOAD_XF_REGS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
