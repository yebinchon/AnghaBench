; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_glimp.c_GLW_CreatePFD.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_glimp.c_GLW_CreatePFD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32, i8*)* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PFD_DRAW_TO_WINDOW = common dso_local global i32 0, align 4
@PFD_SUPPORT_OPENGL = common dso_local global i32 0, align 4
@PFD_DOUBLEBUFFER = common dso_local global i32 0, align 4
@PFD_TYPE_RGBA = common dso_local global i32 0, align 4
@PFD_MAIN_PLANE = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PRINT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"...attempting to use stereo\0A\00", align 1
@PFD_STEREO = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@glConfig = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@qfalse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32, i32, i64)* @GLW_CreatePFD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GLW_CreatePFD(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 120, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %15 = load i32, i32* @PFD_DRAW_TO_WINDOW, align 4
  %16 = load i32, i32* @PFD_SUPPORT_OPENGL, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @PFD_DOUBLEBUFFER, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %14, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %21 = load i32, i32* @PFD_TYPE_RGBA, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 4
  store i32 24, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 5
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 6
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 7
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 8
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 9
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 10
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 11
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 12
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 13
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 14
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 15
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 16
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 17
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 18
  store i32 24, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 19
  store i32 8, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 20
  store i32 0, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 21
  %40 = load i32, i32* @PFD_MAIN_PLANE, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 22
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 23
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 24
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 25
  store i32 0, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 26
  store i32 0, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 27
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 28
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 29
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 6
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %8, align 4
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 7
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %9, align 4
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 8
  store i32 %53, i32* %54, align 4
  %55 = load i64, i64* %10, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %5
  %58 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ri, i32 0, i32 0), align 8
  %59 = load i32, i32* @PRINT_ALL, align 4
  %60 = call i32 %58(i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @PFD_STEREO, align 4
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @qtrue, align 4
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @glConfig, i32 0, i32 0), align 4
  br label %68

66:                                               ; preds = %5
  %67 = load i32, i32* @qfalse, align 4
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @glConfig, i32 0, i32 0), align 4
  br label %68

68:                                               ; preds = %66, %57
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = bitcast %struct.TYPE_5__* %69 to i8*
  %71 = bitcast %struct.TYPE_5__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 120, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
