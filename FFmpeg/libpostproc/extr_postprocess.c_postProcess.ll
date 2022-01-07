; ModuleID = '/home/carl/AnghaBench/FFmpeg/libpostproc/extr_postprocess.c_postProcess.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libpostproc/extr_postprocess.c_postProcess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@BITEXACT = common dso_local global i32 0, align 4
@AV_CPU_FLAG_3DNOW = common dso_local global i32 0, align 4
@AV_CPU_FLAG_ALTIVEC = common dso_local global i32 0, align 4
@AV_CPU_FLAG_MMX = common dso_local global i32 0, align 4
@AV_CPU_FLAG_MMXEXT = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32, i32, i32*, i32, i32, i32*, i32*)* @postProcess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @postProcess(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32* %6, i32 %7, i32 %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32 (i32*, i32, i32*, i32, i32, i32, i32*, i32, i32, %struct.TYPE_10__*)*, align 8
  %24 = alloca %struct.TYPE_10__*, align 8
  %25 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32* %6, i32** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  store i32 (i32*, i32, i32*, i32, i32, i32, i32*, i32, i32, %struct.TYPE_10__*)* @postProcess_C, i32 (i32*, i32, i32*, i32, i32, i32, i32*, i32, i32, %struct.TYPE_10__*)** %23, align 8
  %26 = load i32*, i32** %22, align 8
  %27 = bitcast i32* %26 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %24, align 8
  %28 = load i32*, i32** %21, align 8
  %29 = bitcast i32* %28 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %25, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %33 = bitcast %struct.TYPE_11__* %31 to i8*
  %34 = bitcast %struct.TYPE_11__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BITEXACT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %11
  br label %42

42:                                               ; preds = %41, %11
  %43 = load i32 (i32*, i32, i32*, i32, i32, i32, i32*, i32, i32, %struct.TYPE_10__*)*, i32 (i32*, i32, i32*, i32, i32, i32, i32*, i32, i32, %struct.TYPE_10__*)** %23, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i32*, i32** %14, align 8
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %17, align 4
  %50 = load i32*, i32** %18, align 8
  %51 = load i32, i32* %19, align 4
  %52 = load i32, i32* %20, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %54 = call i32 %43(i32* %44, i32 %45, i32* %46, i32 %47, i32 %48, i32 %49, i32* %50, i32 %51, i32 %52, %struct.TYPE_10__* %53)
  ret void
}

declare dso_local i32 @postProcess_C(i32*, i32, i32*, i32, i32, i32, i32*, i32, i32, %struct.TYPE_10__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
