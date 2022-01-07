; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_mem.c_ResampleSfx.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_mem.c_ResampleSfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float }
%struct.TYPE_7__ = type { float, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_6__* }

@dma = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@SND_CHUNK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32, i32*, i32)* @ResampleSfx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ResampleSfx(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_6__*, align 8
  %20 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sitofp i32 %21 to float
  %23 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dma, i32 0, i32 0), align 4
  %24 = fdiv float %22, %23
  store float %24, float* %13, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load float, float* %26, align 8
  %28 = load float, float* %13, align 4
  %29 = fdiv float %27, %28
  %30 = fptosi float %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = sitofp i32 %31 to float
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store float %32, float* %34, align 8
  store i32 0, i32* %16, align 4
  %35 = load float, float* %13, align 4
  %36 = fmul float %35, 2.560000e+02
  %37 = fptosi float %36 to i32
  store i32 %37, i32* %17, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %19, align 8
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %100, %5
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %103

45:                                               ; preds = %41
  %46 = load i32, i32* %16, align 4
  %47 = ashr i32 %46, 8
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %16, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = load i32*, i32** %9, align 8
  %55 = bitcast i32* %54 to i16*
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i16, i16* %55, i64 %57
  %59 = load i16, i16* %58, align 2
  %60 = call i32 @LittleShort(i16 signext %59)
  store i32 %60, i32* %15, align 4
  br label %71

61:                                               ; preds = %45
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = trunc i32 %66 to i8
  %68 = zext i8 %67 to i32
  %69 = sub nsw i32 %68, 128
  %70 = shl i32 %69, 8
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %61, %53
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @SND_CHUNK_SIZE, align 4
  %74 = sub nsw i32 %73, 1
  %75 = and i32 %72, %74
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %18, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %71
  %79 = call %struct.TYPE_6__* (...) @SND_malloc()
  store %struct.TYPE_6__* %79, %struct.TYPE_6__** %20, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %81 = icmp eq %struct.TYPE_6__* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  store %struct.TYPE_6__* %83, %struct.TYPE_6__** %85, align 8
  br label %90

86:                                               ; preds = %78
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  store %struct.TYPE_6__* %87, %struct.TYPE_6__** %89, align 8
  br label %90

90:                                               ; preds = %86, %82
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  store %struct.TYPE_6__* %91, %struct.TYPE_6__** %19, align 8
  br label %92

92:                                               ; preds = %90, %71
  %93 = load i32, i32* %15, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %18, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %93, i32* %99, align 4
  br label %100

100:                                              ; preds = %92
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  br label %41

103:                                              ; preds = %41
  ret void
}

declare dso_local i32 @LittleShort(i16 signext) #1

declare dso_local %struct.TYPE_6__* @SND_malloc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
