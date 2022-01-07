; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_ReadXfRasMetric.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_ReadXfRasMetric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_cpReg = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_ReadXfRasMetric(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32*, i32** @_cpReg, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 33
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @_SHIFTL(i32 %11, i32 16, i32 16)
  %13 = load i32*, i32** @_cpReg, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 32
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 65535
  %17 = or i32 %12, %16
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** @_cpReg, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 35
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @_SHIFTL(i32 %21, i32 16, i32 16)
  %23 = load i32*, i32** @_cpReg, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 34
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 65535
  %27 = or i32 %22, %26
  %28 = load i32*, i32** %8, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** @_cpReg, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 37
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @_SHIFTL(i32 %31, i32 16, i32 16)
  %33 = load i32*, i32** @_cpReg, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 36
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 65535
  %37 = or i32 %32, %36
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** @_cpReg, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @_SHIFTL(i32 %41, i32 16, i32 16)
  %43 = load i32*, i32** @_cpReg, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 38
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 65535
  %47 = or i32 %42, %46
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  ret void
}

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
