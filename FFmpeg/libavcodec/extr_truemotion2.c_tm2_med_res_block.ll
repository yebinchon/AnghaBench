; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion2.c_tm2_med_res_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion2.c_tm2_med_res_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@TM2_C_LO = common dso_local global i32 0, align 4
@U = common dso_local global i32 0, align 4
@Ustride = common dso_local global i32 0, align 4
@clast = common dso_local global i64 0, align 8
@V = common dso_local global i32 0, align 4
@Vstride = common dso_local global i32 0, align 4
@TM2_L_HI = common dso_local global i32 0, align 4
@Y = common dso_local global i32 0, align 4
@Ystride = common dso_local global i32 0, align 4
@last = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32, i32)* @tm2_med_res_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tm2_med_res_block(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [16 x i32], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = call i32 (...) @TM2_INIT_POINTERS()
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = load i32, i32* @TM2_C_LO, align 4
  %14 = call i32 @GET_TOK(%struct.TYPE_5__* %12, i32 %13)
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  store i32 %14, i32* %15, align 16
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 3
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 2
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* @U, align 4
  %20 = load i32, i32* @Ustride, align 4
  %21 = load i64, i64* @clast, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @tm2_low_chroma(i32 %19, i32 %20, i64 %21, i64 %24, i32* %25, i32 %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = load i32, i32* @TM2_C_LO, align 4
  %30 = call i32 @GET_TOK(%struct.TYPE_5__* %28, i32 %29)
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  store i32 %30, i32* %31, align 16
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 3
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 2
  store i32 0, i32* %33, align 8
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* @V, align 4
  %36 = load i32, i32* @Vstride, align 4
  %37 = load i64, i64* @clast, align 8
  %38 = add nsw i64 %37, 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 2
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @tm2_low_chroma(i32 %35, i32 %36, i64 %38, i64 %42, i32* %43, i32 %44)
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %56, %4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 16
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = load i32, i32* @TM2_L_HI, align 4
  %52 = call i32 @GET_TOK(%struct.TYPE_5__* %50, i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %54
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %46

59:                                               ; preds = %46
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = load i32, i32* @Y, align 4
  %62 = load i32, i32* @Ystride, align 4
  %63 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %64 = load i32, i32* @last, align 4
  %65 = call i32 @tm2_apply_deltas(%struct.TYPE_5__* %60, i32 %61, i32 %62, i32* %63, i32 %64)
  ret void
}

declare dso_local i32 @TM2_INIT_POINTERS(...) #1

declare dso_local i32 @GET_TOK(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @tm2_low_chroma(i32, i32, i64, i64, i32*, i32) #1

declare dso_local i32 @tm2_apply_deltas(%struct.TYPE_5__*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
