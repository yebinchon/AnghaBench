; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_msa.c_common_hz_bil_4w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hpeldsp_msa.c_common_hz_bil_4w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32)* @common_hz_bil_4w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_bil_4w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %21 = bitcast %struct.TYPE_4__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 4, i1 false)
  %22 = load i32, i32* %10, align 4
  %23 = ashr i32 %22, 1
  store i32 %23, i32* %11, align 4
  br label %24

24:                                               ; preds = %28, %5
  %25 = load i32, i32* %11, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %11, align 4
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %28, label %75

28:                                               ; preds = %24
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* %15, align 8
  %33 = call i32 @LD_UB2(i32* %29, i32 %30, i64 %31, i64 %32)
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 2, %34
  %36 = load i32*, i32** %6, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %6, align 8
  %39 = load i64, i64* %14, align 8
  %40 = load i64, i64* %15, align 8
  %41 = load i64, i64* %16, align 8
  %42 = load i64, i64* %17, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @SLDI_B2_UB(i32 %44, i64 %39, i32 %46, i64 %40, i32 1, i64 %41, i64 %42)
  %48 = load i64, i64* %16, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* %17, align 8
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* %18, align 8
  %53 = load i64, i64* %19, align 8
  %54 = call i32 @AVER_UB2_UB(i64 %48, i64 %49, i64 %50, i64 %51, i64 %52, i64 %53)
  %55 = load i64, i64* %18, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @__msa_copy_u_w(i32 %56, i32 0)
  store i32 %57, i32* %12, align 4
  %58 = load i64, i64* %19, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @__msa_copy_u_w(i32 %59, i32 0)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @SW(i32 %61, i32* %62)
  %64 = load i32, i32* %9, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %8, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @SW(i32 %68, i32* %69)
  %71 = load i32, i32* %9, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %8, align 8
  br label %24

75:                                               ; preds = %24
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @LD_UB2(i32*, i32, i64, i64) #2

declare dso_local i32 @SLDI_B2_UB(i32, i64, i32, i64, i32, i64, i64) #2

declare dso_local i32 @AVER_UB2_UB(i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @__msa_copy_u_w(i32, i32) #2

declare dso_local i32 @SW(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
