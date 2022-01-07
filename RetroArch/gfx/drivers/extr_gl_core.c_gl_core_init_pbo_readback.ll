; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl_core.c_gl_core_init_pbo_readback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gl_core.c_gl_core_init_pbo_readback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, %struct.TYPE_4__, %struct.scaler_ctx }
%struct.TYPE_4__ = type { i32, i32 }
%struct.scaler_ctx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GL_CORE_NUM_PBOS = common dso_local global i32 0, align 4
@GL_PIXEL_PACK_BUFFER = common dso_local global i32 0, align 4
@GL_STREAM_READ = common dso_local global i32 0, align 4
@SCALER_FMT_ABGR8888 = common dso_local global i32 0, align 4
@SCALER_FMT_BGR24 = common dso_local global i32 0, align 4
@SCALER_TYPE_POINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"[GLCore]: Failed to initialize pixel conversion for PBO.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @gl_core_init_pbo_readback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_core_init_pbo_readback(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scaler_ctx*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.scaler_ctx* null, %struct.scaler_ctx** %5, align 8
  %6 = load i32, i32* @GL_CORE_NUM_PBOS, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @glGenBuffers(i32 %6, i32* %9)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %40, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @GL_CORE_NUM_PBOS, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %43

15:                                               ; preds = %11
  %16 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @glBindBuffer(i32 %16, i32 %23)
  %25 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %29, %33
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @GL_STREAM_READ, align 4
  %39 = call i32 @glBufferData(i32 %25, i32 %37, i32* null, i32 %38)
  br label %40

40:                                               ; preds = %15
  %41 = load i32, i32* %4, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %11

43:                                               ; preds = %11
  %44 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %45 = call i32 @glBindBuffer(i32 %44, i32 0)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  store %struct.scaler_ctx* %47, %struct.scaler_ctx** %5, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.scaler_ctx*, %struct.scaler_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.scaler_ctx*, %struct.scaler_ctx** %5, align 8
  %59 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.scaler_ctx*, %struct.scaler_ctx** %5, align 8
  %65 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.scaler_ctx*, %struct.scaler_ctx** %5, align 8
  %71 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = trunc i64 %77 to i32
  %79 = load %struct.scaler_ctx*, %struct.scaler_ctx** %5, align 8
  %80 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %84, 3
  %86 = load %struct.scaler_ctx*, %struct.scaler_ctx** %5, align 8
  %87 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @SCALER_FMT_ABGR8888, align 4
  %89 = load %struct.scaler_ctx*, %struct.scaler_ctx** %5, align 8
  %90 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %89, i32 0, i32 8
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @SCALER_FMT_BGR24, align 4
  %92 = load %struct.scaler_ctx*, %struct.scaler_ctx** %5, align 8
  %93 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %92, i32 0, i32 7
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @SCALER_TYPE_POINT, align 4
  %95 = load %struct.scaler_ctx*, %struct.scaler_ctx** %5, align 8
  %96 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 4
  %97 = load %struct.scaler_ctx*, %struct.scaler_ctx** %5, align 8
  %98 = call i32 @scaler_ctx_gen_filter(%struct.scaler_ctx* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %43
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i32 0, i32* %102, align 8
  %103 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @glDeleteBuffers(i32 4, i32* %106)
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @memset(i32* %110, i32 0, i32 8)
  store i32 0, i32* %2, align 4
  br label %113

112:                                              ; preds = %43
  store i32 1, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %100
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @glGenBuffers(i32, i32*) #1

declare dso_local i32 @glBindBuffer(i32, i32) #1

declare dso_local i32 @glBufferData(i32, i32, i32*, i32) #1

declare dso_local i32 @scaler_ctx_gen_filter(%struct.scaler_ctx*) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i32 @glDeleteBuffers(i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
