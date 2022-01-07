; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetTexCopyDst.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetTexCopyDst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@__gx = common dso_local global %struct.TYPE_2__* null, align 8
@GX_TF_Z16 = common dso_local global i32 0, align 4
@GX_CTF_YUVA8 = common dso_local global i32 0, align 4
@GX_TF_I4 = common dso_local global i32 0, align 4
@GX_TF_RGB565 = common dso_local global i32 0, align 4
@_GX_TF_ZTF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_SetTexCopyDst(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 15
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @__GetImageTileCount(i32 %15, i32 %16, i32 %17, i32* %10, i32* %11, i32* %12)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, -1024
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %12, align 4
  %25 = mul nsw i32 %23, %24
  %26 = and i32 %25, 1023
  %27 = or i32 %22, %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @GX_TF_Z16, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  store i32 11, i32* %9, align 4
  br label %34

34:                                               ; preds = %33, %4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @GX_CTF_YUVA8, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @GX_TF_I4, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @GX_TF_RGB565, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42, %34
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, -98305
  %51 = or i32 %50, 98304
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %62

54:                                               ; preds = %42, %38
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, -98305
  %59 = or i32 %58, 65536
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %54, %46
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, -9
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, 8
  %69 = or i32 %66, %68
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, -513
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @_SHIFTL(i32 %76, i32 9, i32 1)
  %78 = or i32 %75, %77
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, -113
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @_SHIFTL(i32 %85, i32 4, i32 3)
  %87 = or i32 %84, %86
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 16777215
  %94 = call i32 @_SHIFTL(i32 77, i32 24, i32 8)
  %95 = or i32 %93, %94
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @_GX_TF_ZTF, align 4
  %100 = and i32 %98, %99
  %101 = load i32, i32* @_GX_TF_ZTF, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  ret void
}

declare dso_local i32 @__GetImageTileCount(i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
