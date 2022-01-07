; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_setup.c_P_LoadSideDefs.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_setup.c_P_LoadSideDefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }

@numsides = common dso_local global i32 0, align 4
@PU_LEVEL = common dso_local global i32 0, align 4
@sides = common dso_local global %struct.TYPE_6__* null, align 8
@PU_STATIC = common dso_local global i32 0, align 4
@FRACBITS = common dso_local global i64 0, align 8
@sectors = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_LoadSideDefs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @W_LumpLength(i32 %7)
  %9 = sext i32 %8 to i64
  %10 = udiv i64 %9, 24
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* @numsides, align 4
  %12 = load i32, i32* @numsides, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 48
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @PU_LEVEL, align 4
  %17 = call %struct.TYPE_6__* @Z_Malloc(i32 %15, i32 %16, i32 0)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** @sides, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sides, align 8
  %19 = load i32, i32* @numsides, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 48
  %22 = trunc i64 %21 to i32
  %23 = call i32 @memset(%struct.TYPE_6__* %18, i32 0, i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @PU_STATIC, align 4
  %26 = call i32* @W_CacheLumpNum(i32 %24, i32 %25)
  store i32* %26, i32** %3, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = bitcast i32* %27 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %5, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sides, align 8
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %6, align 8
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %77, %1
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @numsides, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %84

34:                                               ; preds = %30
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @SHORT(i32 %37)
  %39 = load i64, i64* @FRACBITS, align 8
  %40 = shl i64 %38, %39
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @SHORT(i32 %45)
  %47 = load i64, i64* @FRACBITS, align 8
  %48 = shl i64 %46, %47
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @R_TextureNumForName(i32 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 5
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @R_TextureNumForName(i32 %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @R_TextureNumForName(i32 %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  %69 = load i32*, i32** @sectors, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @SHORT(i32 %72)
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  store i32* %74, i32** %76, align 8
  br label %77

77:                                               ; preds = %34
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 1
  store %struct.TYPE_7__* %81, %struct.TYPE_7__** %5, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 1
  store %struct.TYPE_6__* %83, %struct.TYPE_6__** %6, align 8
  br label %30

84:                                               ; preds = %30
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @Z_Free(i32* %85)
  ret void
}

declare dso_local i32 @W_LumpLength(i32) #1

declare dso_local %struct.TYPE_6__* @Z_Malloc(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32* @W_CacheLumpNum(i32, i32) #1

declare dso_local i64 @SHORT(i32) #1

declare dso_local i8* @R_TextureNumForName(i32) #1

declare dso_local i32 @Z_Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
