; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_bsp.c_ShaderForShaderNum.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_bsp.c_ShaderForShaderNum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32 (i32, i8*, i32)* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@s_worldData = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@ri = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ShaderForShaderNum: bad num %i\00", align 1
@r_vertexLight = common dso_local global %struct.TYPE_16__* null, align 8
@glConfig = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@GLHW_PERMEDIA2 = common dso_local global i64 0, align 8
@LIGHTMAP_BY_VERTEX = common dso_local global i32 0, align 4
@r_fullbright = common dso_local global %struct.TYPE_17__* null, align 8
@LIGHTMAP_WHITEIMAGE = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i32, i32)* @ShaderForShaderNum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @ShaderForShaderNum(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @LittleLong(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @s_worldData, i32 0, i32 0), align 8
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %12, %2
  %17 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ri, i32 0, i32 0), align 8
  %18 = load i32, i32* @ERR_DROP, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 %17(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %16, %12
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @s_worldData, i32 0, i32 1), align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i64 %24
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %7, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** @r_vertexLight, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %21
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @glConfig, i32 0, i32 0), align 8
  %32 = load i64, i64* @GLHW_PERMEDIA2, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %21
  %35 = load i32, i32* @LIGHTMAP_BY_VERTEX, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** @r_fullbright, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @LIGHTMAP_WHITEIMAGE, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %41, %36
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @qtrue, align 4
  %49 = call %struct.TYPE_11__* @R_FindShader(i32 %46, i32 %47, i32 %48)
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %6, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tr, i32 0, i32 0), align 8
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %3, align 8
  br label %58

56:                                               ; preds = %43
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %3, align 8
  br label %58

58:                                               ; preds = %56, %54
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %59
}

declare dso_local i32 @LittleLong(i32) #1

declare dso_local %struct.TYPE_11__* @R_FindShader(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
