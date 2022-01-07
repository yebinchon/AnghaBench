; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_init_pbo_readback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl.c_gl2_init_pbo_readback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, %struct.TYPE_4__, %struct.scaler_ctx }
%struct.TYPE_4__ = type { i32, i32 }
%struct.scaler_ctx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SCALER_FMT_ARGB8888 = common dso_local global i32 0, align 4
@SCALER_FMT_BGR24 = common dso_local global i32 0, align 4
@SCALER_TYPE_POINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"[GL]: Failed to initialize pixel conversion for PBO.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @gl2_init_pbo_readback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl2_init_pbo_readback(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scaler_ctx*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @glGenBuffers(i32 4, i32* %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %35, %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %38

13:                                               ; preds = %10
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @gl2_renderchain_bind_pbo(i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %25, %29
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i32 @gl2_renderchain_init_pbo(i32 %33, i32* null)
  br label %35

35:                                               ; preds = %13
  %36 = load i32, i32* %4, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %10

38:                                               ; preds = %10
  %39 = call i32 (...) @gl2_renderchain_unbind_pbo()
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  store %struct.scaler_ctx* %41, %struct.scaler_ctx** %5, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.scaler_ctx*, %struct.scaler_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.scaler_ctx*, %struct.scaler_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.scaler_ctx*, %struct.scaler_ctx** %5, align 8
  %59 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.scaler_ctx*, %struct.scaler_ctx** %5, align 8
  %65 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = load %struct.scaler_ctx*, %struct.scaler_ctx** %5, align 8
  %74 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = mul nsw i32 %78, 3
  %80 = load %struct.scaler_ctx*, %struct.scaler_ctx** %5, align 8
  %81 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @SCALER_FMT_ARGB8888, align 4
  %83 = load %struct.scaler_ctx*, %struct.scaler_ctx** %5, align 8
  %84 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %83, i32 0, i32 8
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @SCALER_FMT_BGR24, align 4
  %86 = load %struct.scaler_ctx*, %struct.scaler_ctx** %5, align 8
  %87 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @SCALER_TYPE_POINT, align 4
  %89 = load %struct.scaler_ctx*, %struct.scaler_ctx** %5, align 8
  %90 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 4
  %91 = load %struct.scaler_ctx*, %struct.scaler_ctx** %5, align 8
  %92 = call i32 @scaler_ctx_gen_filter(%struct.scaler_ctx* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %38
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i32 0, i32* %96, align 8
  %97 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @glDeleteBuffers(i32 4, i32* %100)
  store i32 0, i32* %2, align 4
  br label %103

102:                                              ; preds = %38
  store i32 1, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %94
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @glGenBuffers(i32, i32*) #1

declare dso_local i32 @gl2_renderchain_bind_pbo(i32) #1

declare dso_local i32 @gl2_renderchain_init_pbo(i32, i32*) #1

declare dso_local i32 @gl2_renderchain_unbind_pbo(...) #1

declare dso_local i32 @scaler_ctx_gen_filter(%struct.scaler_ctx*) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i32 @glDeleteBuffers(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
