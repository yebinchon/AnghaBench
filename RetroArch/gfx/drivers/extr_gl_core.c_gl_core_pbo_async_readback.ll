; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl_core.c_gl_core_pbo_async_readback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl_core.c_gl_core_pbo_async_readback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32*, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@GL_PIXEL_PACK_BUFFER = common dso_local global i32 0, align 4
@GL_PACK_ALIGNMENT = common dso_local global i32 0, align 4
@GL_PACK_ROW_LENGTH = common dso_local global i32 0, align 4
@GL_BACK = common dso_local global i32 0, align 4
@GL_CORE_NUM_PBOS = common dso_local global i64 0, align 8
@GL_RGBA = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @gl_core_pbo_async_readback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_core_pbo_async_readback(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %9, 1
  store i64 %10, i64* %8, align 8
  %11 = getelementptr inbounds i32, i32* %6, i64 %9
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @glBindBuffer(i32 %3, i32 %12)
  %14 = load i32, i32* @GL_PACK_ALIGNMENT, align 4
  %15 = call i32 @glPixelStorei(i32 %14, i32 4)
  %16 = load i32, i32* @GL_PACK_ROW_LENGTH, align 4
  %17 = call i32 @glPixelStorei(i32 %16, i32 0)
  %18 = load i32, i32* @GL_BACK, align 4
  %19 = call i32 @glReadBuffer(i32 %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @GL_CORE_NUM_PBOS, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32 1, i32* %35, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @GL_RGBA, align 4
  %53 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %54 = call i32 @glReadPixels(i32 %39, i32 %43, i32 %47, i32 %51, i32 %52, i32 %53, i32* null)
  %55 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %56 = call i32 @glBindBuffer(i32 %55, i32 0)
  ret void
}

declare dso_local i32 @glBindBuffer(i32, i32) #1

declare dso_local i32 @glPixelStorei(i32, i32) #1

declare dso_local i32 @glReadBuffer(i32) #1

declare dso_local i32 @glReadPixels(i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
