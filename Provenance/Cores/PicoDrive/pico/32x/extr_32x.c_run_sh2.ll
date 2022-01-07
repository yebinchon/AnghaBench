; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_32x.c_run_sh2.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_32x.c_run_sh2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }

@EVT_RUN_START = common dso_local global i32 0, align 4
@SH2_STATE_RUN = common dso_local global i32 0, align 4
@EL_32X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"+run %u %d @%08x\00", align 1
@PicoOpt = common dso_local global i32 0, align 4
@POPT_EN_DRC = common dso_local global i32 0, align 4
@EVT_RUN_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"-run %u %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32)* @run_sh2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_sh2(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca { i64, i32 }, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = load i32, i32* @EVT_RUN_START, align 4
  %11 = call i32 @pevt_log_sh2_o(%struct.TYPE_8__* %9, i32 %10)
  %12 = load i32, i32* @SH2_STATE_RUN, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = bitcast { i64, i32 }* %7 to i8*
  %20 = bitcast %struct.TYPE_8__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 12, i1 false)
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  %22 = load i64, i64* %21, align 4
  %23 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @C_M68K_TO_SH2(i64 %22, i32 %24, i32 %18)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = load i32, i32* @EL_32X, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.TYPE_8__*, i32, i8*, i32, i32, ...) @elprintf_sh2(%struct.TYPE_8__* %26, i32 %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @PicoOpt, align 4
  %39 = load i32, i32* @POPT_EN_DRC, align 4
  %40 = and i32 %38, %39
  %41 = call i32 @sh2_execute(%struct.TYPE_8__* %36, i32 %37, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = bitcast { i64, i32 }* %8 to i8*
  %45 = bitcast %struct.TYPE_8__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 12, i1 false)
  %46 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  %47 = load i64, i64* %46, align 4
  %48 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @C_SH2_TO_M68K(i64 %47, i32 %49, i32 %43)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %50
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 4
  %57 = load i32, i32* @SH2_STATE_RUN, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %64 = load i32, i32* @EVT_RUN_END, align 4
  %65 = call i32 @pevt_log_sh2_o(%struct.TYPE_8__* %63, i32 %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = load i32, i32* @EL_32X, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 (%struct.TYPE_8__*, i32, i8*, i32, i32, ...) @elprintf_sh2(%struct.TYPE_8__* %66, i32 %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %71)
  ret void
}

declare dso_local i32 @pevt_log_sh2_o(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @C_M68K_TO_SH2(i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @elprintf_sh2(%struct.TYPE_8__*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @sh2_execute(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @C_SH2_TO_M68K(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
