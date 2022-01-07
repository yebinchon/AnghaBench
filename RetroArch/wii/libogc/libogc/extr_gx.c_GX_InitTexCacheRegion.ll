; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InitTexCacheRegion.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InitTexCacheRegion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__gx_texregion = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_InitTexCacheRegion(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.__gx_texregion*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = bitcast i32* %15 to %struct.__gx_texregion*
  store %struct.__gx_texregion* %16, %struct.__gx_texregion** %14, align 8
  %17 = load i32, i32* %10, align 4
  switch i32 %17, label %21 [
    i32 129, label %18
    i32 130, label %19
    i32 128, label %20
  ]

18:                                               ; preds = %6
  store i32 3, i32* %13, align 4
  br label %22

19:                                               ; preds = %6
  store i32 4, i32* %13, align 4
  br label %22

20:                                               ; preds = %6
  store i32 5, i32* %13, align 4
  br label %22

21:                                               ; preds = %6
  store i32 3, i32* %13, align 4
  br label %22

22:                                               ; preds = %21, %20, %19, %18
  %23 = load %struct.__gx_texregion*, %struct.__gx_texregion** %14, align 8
  %24 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.__gx_texregion*, %struct.__gx_texregion** %14, align 8
  %26 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, -32768
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @_SHIFTR(i32 %29, i32 5, i32 15)
  %31 = or i32 %28, %30
  %32 = load %struct.__gx_texregion*, %struct.__gx_texregion** %14, align 8
  %33 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.__gx_texregion*, %struct.__gx_texregion** %14, align 8
  %35 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, -229377
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @_SHIFTL(i32 %38, i32 15, i32 3)
  %40 = or i32 %37, %39
  %41 = load %struct.__gx_texregion*, %struct.__gx_texregion** %14, align 8
  %42 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.__gx_texregion*, %struct.__gx_texregion** %14, align 8
  %44 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, -1835009
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @_SHIFTL(i32 %47, i32 18, i32 3)
  %49 = or i32 %46, %48
  %50 = load %struct.__gx_texregion*, %struct.__gx_texregion** %14, align 8
  %51 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %12, align 4
  switch i32 %52, label %56 [
    i32 129, label %53
    i32 130, label %54
    i32 128, label %55
  ]

53:                                               ; preds = %22
  store i32 3, i32* %13, align 4
  br label %57

54:                                               ; preds = %22
  store i32 4, i32* %13, align 4
  br label %57

55:                                               ; preds = %22
  store i32 5, i32* %13, align 4
  br label %57

56:                                               ; preds = %22
  store i32 3, i32* %13, align 4
  br label %57

57:                                               ; preds = %56, %55, %54, %53
  %58 = load %struct.__gx_texregion*, %struct.__gx_texregion** %14, align 8
  %59 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  %60 = load %struct.__gx_texregion*, %struct.__gx_texregion** %14, align 8
  %61 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, -32768
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @_SHIFTR(i32 %64, i32 5, i32 15)
  %66 = or i32 %63, %65
  %67 = load %struct.__gx_texregion*, %struct.__gx_texregion** %14, align 8
  %68 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.__gx_texregion*, %struct.__gx_texregion** %14, align 8
  %70 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, -229377
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @_SHIFTL(i32 %73, i32 15, i32 3)
  %75 = or i32 %72, %74
  %76 = load %struct.__gx_texregion*, %struct.__gx_texregion** %14, align 8
  %77 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.__gx_texregion*, %struct.__gx_texregion** %14, align 8
  %79 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, -1835009
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @_SHIFTL(i32 %82, i32 18, i32 3)
  %84 = or i32 %81, %83
  %85 = load %struct.__gx_texregion*, %struct.__gx_texregion** %14, align 8
  %86 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.__gx_texregion*, %struct.__gx_texregion** %14, align 8
  %89 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.__gx_texregion*, %struct.__gx_texregion** %14, align 8
  %91 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %90, i32 0, i32 3
  store i32 1, i32* %91, align 4
  ret void
}

declare dso_local i32 @_SHIFTR(i32, i32, i32) #1

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
