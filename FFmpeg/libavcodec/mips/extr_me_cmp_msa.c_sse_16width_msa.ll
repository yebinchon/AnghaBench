; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_me_cmp_msa.c_sse_16width_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_me_cmp_msa.c_sse_16width_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32)* @sse_16width_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sse_16width_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = bitcast %struct.TYPE_4__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  %17 = load i32, i32* %10, align 4
  %18 = ashr i32 %17, 2
  store i32 %18, i32* %11, align 4
  br label %19

19:                                               ; preds = %23, %5
  %20 = load i32, i32* %11, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %11, align 4
  %22 = icmp ne i32 %20, 0
  br i1 %22, label %23, label %92

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @LD_UB(i32* %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @LD_UB(i32* %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** %8, align 8
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %14, align 4
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @CALC_MSE_B(i32 %36, i32 %37, i32 %39)
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @LD_UB(i32* %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %6, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @LD_UB(i32* %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32* %52, i32** %8, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @CALC_MSE_B(i32 %53, i32 %54, i32 %56)
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @LD_UB(i32* %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32* %63, i32** %6, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @LD_UB(i32* %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %8, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %14, align 4
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @CALC_MSE_B(i32 %70, i32 %71, i32 %73)
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @LD_UB(i32* %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %6, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @LD_UB(i32* %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %8, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %14, align 4
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @CALC_MSE_B(i32 %87, i32 %88, i32 %90)
  br label %19

92:                                               ; preds = %19
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @HADD_SW_S32(i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  ret i32 %96
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LD_UB(i32*) #2

declare dso_local i32 @CALC_MSE_B(i32, i32, i32) #2

declare dso_local i32 @HADD_SW_S32(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
