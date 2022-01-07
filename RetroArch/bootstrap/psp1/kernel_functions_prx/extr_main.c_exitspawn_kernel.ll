; ModuleID = '/home/carl/AnghaBench/RetroArch/bootstrap/psp1/kernel_functions_prx/extr_main.c_exitspawn_kernel.c'
source_filename = "/home/carl/AnghaBench/RetroArch/bootstrap/psp1/kernel_functions_prx/extr_main.c_exitspawn_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SceKernelLoadExecVSHParam = type { i32, i8*, i32, i64, i64, i32*, i64, i8*, i32 }

@thread_active = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"game\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exitspawn_kernel(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.SceKernelLoadExecVSHParam, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i64 0, i64* @thread_active, align 8
  %10 = call i32 @memset(%struct.SceKernelLoadExecVSHParam* %7, i32 0, i32 72)
  %11 = getelementptr inbounds %struct.SceKernelLoadExecVSHParam, %struct.SceKernelLoadExecVSHParam* %7, i32 0, i32 0
  store i32 72, i32* %11, align 8
  %12 = load i32, i32* %5, align 4
  %13 = getelementptr inbounds %struct.SceKernelLoadExecVSHParam, %struct.SceKernelLoadExecVSHParam* %7, i32 0, i32 8
  store i32 %12, i32* %13, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds %struct.SceKernelLoadExecVSHParam, %struct.SceKernelLoadExecVSHParam* %7, i32 0, i32 7
  store i8* %14, i8** %15, align 8
  %16 = getelementptr inbounds %struct.SceKernelLoadExecVSHParam, %struct.SceKernelLoadExecVSHParam* %7, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = getelementptr inbounds %struct.SceKernelLoadExecVSHParam, %struct.SceKernelLoadExecVSHParam* %7, i32 0, i32 6
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.SceKernelLoadExecVSHParam, %struct.SceKernelLoadExecVSHParam* %7, i32 0, i32 5
  store i32* null, i32** %18, align 8
  %19 = getelementptr inbounds %struct.SceKernelLoadExecVSHParam, %struct.SceKernelLoadExecVSHParam* %7, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.SceKernelLoadExecVSHParam, %struct.SceKernelLoadExecVSHParam* %7, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.SceKernelLoadExecVSHParam, %struct.SceKernelLoadExecVSHParam* %7, i32 0, i32 2
  store i32 65536, i32* %21, align 8
  %22 = call i32 @pspSdkSetK1(i32 0)
  store i32 %22, i32* %8, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @sceKernelLoadExecVSHMs2(i8* %23, %struct.SceKernelLoadExecVSHParam* %7)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @pspSdkSetK1(i32 %25)
  ret void
}

declare dso_local i32 @memset(%struct.SceKernelLoadExecVSHParam*, i32, i32) #1

declare dso_local i32 @pspSdkSetK1(i32) #1

declare dso_local i32 @sceKernelLoadExecVSHMs2(i8*, %struct.SceKernelLoadExecVSHParam*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
