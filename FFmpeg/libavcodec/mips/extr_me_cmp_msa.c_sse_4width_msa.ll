; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_me_cmp_msa.c_sse_4width_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_me_cmp_msa.c_sse_4width_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32)* @sse_4width_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sse_4width_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_9__, align 4
  %22 = alloca %struct.TYPE_9__, align 4
  %23 = alloca %struct.TYPE_8__, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %24 = bitcast %struct.TYPE_9__* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 4, i1 false)
  %25 = bitcast %struct.TYPE_9__* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 4, i1 false)
  %26 = bitcast %struct.TYPE_8__* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 4, i1 false)
  %27 = load i32, i32* %10, align 4
  %28 = ashr i32 %27, 2
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %33, %5
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %11, align 4
  %32 = icmp ne i32 %30, 0
  br i1 %32, label %33, label %79

33:                                               ; preds = %29
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @LW4(i32* %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 4, %41
  %43 = load i32*, i32** %6, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %6, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %19, align 4
  %51 = load i32, i32* %20, align 4
  %52 = call i32 @LW4(i32* %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = mul nsw i32 4, %53
  %55 = load i32*, i32** %8, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %8, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %16, align 4
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @INSERT_W4_UB(i32 %58, i32 %59, i32 %60, i32 %61, i32 %63)
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* %20, align 4
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @INSERT_W4_UB(i32 %65, i32 %66, i32 %67, i32 %68, i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @CALC_MSE_B(i32 %73, i32 %75, i32 %77)
  br label %29

79:                                               ; preds = %29
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @HADD_SW_S32(i32 %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  ret i32 %83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LW4(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @INSERT_W4_UB(i32, i32, i32, i32, i32) #2

declare dso_local i32 @CALC_MSE_B(i32, i32, i32) #2

declare dso_local i32 @HADD_SW_S32(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
