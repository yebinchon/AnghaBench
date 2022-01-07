; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8dsp_mmi.c_ff_vp8_luma_dc_wht_dc_mmi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8dsp_mmi.c_ff_vp8_luma_dc_wht_dc_mmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_vp8_luma_dc_wht_dc_mmi([4 x [16 x i32]]* %0, i32* %1) #0 {
  %3 = alloca [4 x [16 x i32]]*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store [4 x [16 x i32]]* %0, [4 x [16 x i32]]** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, 3
  %10 = ashr i32 %9, 3
  store i32 %10, i32* %5, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load [4 x [16 x i32]]*, [4 x [16 x i32]]** %3, align 8
  %15 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %14, i64 0
  %16 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %15, i64 0, i64 0
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  store i32 %13, i32* %17, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load [4 x [16 x i32]]*, [4 x [16 x i32]]** %3, align 8
  %20 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %19, i64 0
  %21 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %20, i64 0, i64 1
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load [4 x [16 x i32]]*, [4 x [16 x i32]]** %3, align 8
  %25 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %24, i64 0
  %26 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %25, i64 0, i64 2
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %26, i64 0, i64 0
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load [4 x [16 x i32]]*, [4 x [16 x i32]]** %3, align 8
  %30 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %29, i64 0
  %31 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %30, i64 0, i64 3
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %31, i64 0, i64 0
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load [4 x [16 x i32]]*, [4 x [16 x i32]]** %3, align 8
  %35 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %34, i64 1
  %36 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %35, i64 0, i64 0
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %36, i64 0, i64 0
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load [4 x [16 x i32]]*, [4 x [16 x i32]]** %3, align 8
  %40 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %39, i64 1
  %41 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %40, i64 0, i64 1
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %41, i64 0, i64 0
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load [4 x [16 x i32]]*, [4 x [16 x i32]]** %3, align 8
  %45 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %44, i64 1
  %46 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %45, i64 0, i64 2
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %46, i64 0, i64 0
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load [4 x [16 x i32]]*, [4 x [16 x i32]]** %3, align 8
  %50 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %49, i64 1
  %51 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %50, i64 0, i64 3
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %51, i64 0, i64 0
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load [4 x [16 x i32]]*, [4 x [16 x i32]]** %3, align 8
  %55 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %54, i64 2
  %56 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %55, i64 0, i64 0
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* %56, i64 0, i64 0
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load [4 x [16 x i32]]*, [4 x [16 x i32]]** %3, align 8
  %60 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %59, i64 2
  %61 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %60, i64 0, i64 1
  %62 = getelementptr inbounds [16 x i32], [16 x i32]* %61, i64 0, i64 0
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load [4 x [16 x i32]]*, [4 x [16 x i32]]** %3, align 8
  %65 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %64, i64 2
  %66 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %65, i64 0, i64 2
  %67 = getelementptr inbounds [16 x i32], [16 x i32]* %66, i64 0, i64 0
  store i32 %63, i32* %67, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load [4 x [16 x i32]]*, [4 x [16 x i32]]** %3, align 8
  %70 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %69, i64 2
  %71 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %70, i64 0, i64 3
  %72 = getelementptr inbounds [16 x i32], [16 x i32]* %71, i64 0, i64 0
  store i32 %68, i32* %72, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load [4 x [16 x i32]]*, [4 x [16 x i32]]** %3, align 8
  %75 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %74, i64 3
  %76 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %75, i64 0, i64 0
  %77 = getelementptr inbounds [16 x i32], [16 x i32]* %76, i64 0, i64 0
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load [4 x [16 x i32]]*, [4 x [16 x i32]]** %3, align 8
  %80 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %79, i64 3
  %81 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %80, i64 0, i64 1
  %82 = getelementptr inbounds [16 x i32], [16 x i32]* %81, i64 0, i64 0
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load [4 x [16 x i32]]*, [4 x [16 x i32]]** %3, align 8
  %85 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %84, i64 3
  %86 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %85, i64 0, i64 2
  %87 = getelementptr inbounds [16 x i32], [16 x i32]* %86, i64 0, i64 0
  store i32 %83, i32* %87, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load [4 x [16 x i32]]*, [4 x [16 x i32]]** %3, align 8
  %90 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %89, i64 3
  %91 = getelementptr inbounds [4 x [16 x i32]], [4 x [16 x i32]]* %90, i64 0, i64 3
  %92 = getelementptr inbounds [16 x i32], [16 x i32]* %91, i64 0, i64 0
  store i32 %88, i32* %92, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
