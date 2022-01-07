; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libxvid.c_xvid_ff_2pass_before.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libxvid.c_xvid_ff_2pass_before.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xvid_context = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@XVID_ZONE_QUANT = common dso_local global i64 0, align 8
@XVID_ME_CHROMA_PVOP = common dso_local global i32 0, align 4
@XVID_ME_CHROMA_BVOP = common dso_local global i32 0, align 4
@XVID_ME_EXTSEARCH16 = common dso_local global i32 0, align 4
@XVID_ME_ADVANCEDDIAMOND16 = common dso_local global i32 0, align 4
@XVID_ME_FAST_MODEINTERPOLATE = common dso_local global i32 0, align 4
@XVID_ME_SKIP_DELTASEARCH = common dso_local global i32 0, align 4
@XVID_ME_FASTREFINE16 = common dso_local global i32 0, align 4
@XVID_ME_BFRAME_EARLYSTOP = common dso_local global i32 0, align 4
@XVID_VOP_MODEDECISION_RD = common dso_local global i32 0, align 4
@XVID_VOP_FAST_MODEDECISION_RD = common dso_local global i32 0, align 4
@XVID_VOP_TRELLISQUANT = common dso_local global i32 0, align 4
@XVID_VOP_INTER4V = common dso_local global i32 0, align 4
@XVID_VOP_HQACPRED = common dso_local global i32 0, align 4
@XVID_VOL_GMC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xvid_context*, %struct.TYPE_5__*)* @xvid_ff_2pass_before to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xvid_ff_2pass_before(%struct.xvid_context* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xvid_context*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xvid_context* %0, %struct.xvid_context** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @XVID_ZONE_QUANT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %78

22:                                               ; preds = %13, %2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 2, i32* %24, align 8
  %25 = load i32, i32* @XVID_ME_CHROMA_PVOP, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* @XVID_ME_CHROMA_BVOP, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load i32, i32* @XVID_ME_EXTSEARCH16, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = load i32, i32* @XVID_ME_ADVANCEDDIAMOND16, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @XVID_ME_FAST_MODEINTERPOLATE, align 4
  %37 = load i32, i32* @XVID_ME_SKIP_DELTASEARCH, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @XVID_ME_FASTREFINE16, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @XVID_ME_BFRAME_EARLYSTOP, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @XVID_VOP_MODEDECISION_RD, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* @XVID_VOP_FAST_MODEDECISION_RD, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = load i32, i32* @XVID_VOP_TRELLISQUANT, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = load i32, i32* @XVID_VOP_INTER4V, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = load i32, i32* @XVID_VOP_HQACPRED, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* @XVID_VOL_GMC, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %22, %21
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
