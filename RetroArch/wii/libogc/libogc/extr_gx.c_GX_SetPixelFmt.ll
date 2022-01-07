; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetPixelFmt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetPixelFmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@__const.GX_SetPixelFmt.realfmt = private unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 4, i32 4, i32 5], align 16
@__gx = common dso_local global %struct.TYPE_2__* null, align 8
@GX_PF_RGB565_Z16 = common dso_local global i64 0, align 8
@GX_PF_Y8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_SetPixelFmt(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [8 x i32], align 16
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %7 = bitcast [8 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([8 x i32]* @__const.GX_SetPixelFmt.realfmt to i8*), i64 32, i1 false)
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, -8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 7
  %16 = or i32 %11, %15
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, -57
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @_SHIFTL(i64 %23, i32 3, i32 3)
  %25 = or i32 %22, %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @GX_LOAD_BP_REG(i32 %30)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, 4
  store i32 %35, i32* %33, align 4
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @GX_PF_RGB565_Z16, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  store i64 1, i64* %5, align 8
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, -513
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @_SHIFTL(i64 %45, i32 9, i32 1)
  %47 = or i32 %44, %46
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i64, i64* %3, align 8
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @GX_PF_Y8, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %40
  %56 = load i32, i32* @GX_PF_Y8, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %3, align 8
  %59 = sub i64 %58, %57
  store i64 %59, i64* %3, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, -3073
  %64 = load i64, i64* %3, align 8
  %65 = call i32 @_SHIFTL(i64 %64, i32 10, i32 2)
  %66 = or i32 %63, %65
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @GX_LOAD_BP_REG(i32 %71)
  br label %73

73:                                               ; preds = %55, %40
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_SHIFTL(i64, i32, i32) #2

declare dso_local i32 @GX_LOAD_BP_REG(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
