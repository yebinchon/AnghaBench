; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion2.c_tm2_hi_res_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion2.c_tm2_hi_res_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@TM2_C_HI = common dso_local global i32 0, align 4
@U = common dso_local global i32 0, align 4
@Ustride = common dso_local global i32 0, align 4
@clast = common dso_local global i64 0, align 8
@V = common dso_local global i32 0, align 4
@Vstride = common dso_local global i32 0, align 4
@TM2_L_HI = common dso_local global i32 0, align 4
@Y = common dso_local global i32 0, align 4
@Ystride = common dso_local global i32 0, align 4
@last = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32, i32)* @tm2_hi_res_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tm2_hi_res_block(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3) #0 {
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
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %29, %4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %32

15:                                               ; preds = %12
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = load i32, i32* @TM2_C_HI, align 4
  %18 = call i32 @GET_TOK(%struct.TYPE_5__* %16, i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %20
  store i32 %18, i32* %21, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = load i32, i32* @TM2_C_HI, align 4
  %24 = call i32 @GET_TOK(%struct.TYPE_5__* %22, i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %27
  store i32 %24, i32* %28, align 4
  br label %29

29:                                               ; preds = %15
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %12

32:                                               ; preds = %12
  %33 = load i32, i32* @U, align 4
  %34 = load i32, i32* @Ustride, align 4
  %35 = load i64, i64* @clast, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %40 = call i32 @tm2_high_chroma(i32 %33, i32 %34, i64 %35, i64 %38, i32* %39)
  %41 = load i32, i32* @V, align 4
  %42 = load i32, i32* @Vstride, align 4
  %43 = load i64, i64* @clast, align 8
  %44 = add nsw i64 %43, 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 2
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  %51 = call i32 @tm2_high_chroma(i32 %41, i32 %42, i64 %44, i64 %48, i32* %50)
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %62, %32
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 16
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = load i32, i32* @TM2_L_HI, align 4
  %58 = call i32 @GET_TOK(%struct.TYPE_5__* %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 %60
  store i32 %58, i32* %61, align 4
  br label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %52

65:                                               ; preds = %52
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = load i32, i32* @Y, align 4
  %68 = load i32, i32* @Ystride, align 4
  %69 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %70 = load i32, i32* @last, align 4
  %71 = call i32 @tm2_apply_deltas(%struct.TYPE_5__* %66, i32 %67, i32 %68, i32* %69, i32 %70)
  ret void
}

declare dso_local i32 @TM2_INIT_POINTERS(...) #1

declare dso_local i32 @GET_TOK(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @tm2_high_chroma(i32, i32, i64, i64, i32*) #1

declare dso_local i32 @tm2_apply_deltas(%struct.TYPE_5__*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
