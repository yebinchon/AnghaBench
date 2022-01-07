; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_setup.c_P_LoadSubsectors.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_setup.c_P_LoadSubsectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i32, i32 }

@numsubsectors = common dso_local global i32 0, align 4
@PU_LEVEL = common dso_local global i32 0, align 4
@subsectors = common dso_local global %struct.TYPE_6__* null, align 8
@PU_STATIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_LoadSubsectors(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @W_LumpLength(i32 %7)
  %9 = sext i32 %8 to i64
  %10 = udiv i64 %9, 8
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* @numsubsectors, align 4
  %12 = load i32, i32* @numsubsectors, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 16
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @PU_LEVEL, align 4
  %17 = call %struct.TYPE_6__* @Z_Malloc(i32 %15, i32 %16, i32 0)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** @subsectors, align 8
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @PU_STATIC, align 4
  %20 = call i32* @W_CacheLumpNum(i32 %18, i32 %19)
  store i32* %20, i32** %3, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = bitcast i32* %21 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %5, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @subsectors, align 8
  %24 = load i32, i32* @numsubsectors, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 16
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memset(%struct.TYPE_6__* %23, i32 0, i32 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @subsectors, align 8
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %6, align 8
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %47, %1
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @numsubsectors, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %30
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @SHORT(i32 %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @SHORT(i32 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %34
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 1
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %6, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 1
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %5, align 8
  br label %30

54:                                               ; preds = %30
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @Z_Free(i32* %55)
  ret void
}

declare dso_local i32 @W_LumpLength(i32) #1

declare dso_local %struct.TYPE_6__* @Z_Malloc(i32, i32, i32) #1

declare dso_local i32* @W_CacheLumpNum(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @SHORT(i32) #1

declare dso_local i32 @Z_Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
