; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_si.c_SI_GetResponseRaw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_si.c_SI_GetResponseRaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SISR_RDST = common dso_local global i32 0, align 4
@_siReg = common dso_local global i32* null, align 8
@inputBuffer = common dso_local global i32** null, align 8
@inputBufferValid = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SI_GetResponseRaw(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i64, i64* %2, align 8
  %6 = call i32 @SI_GetStatus(i64 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @SISR_RDST, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %1
  %12 = load i32*, i32** @_siReg, align 8
  %13 = load i64, i64* %2, align 8
  %14 = mul i64 %13, 3
  %15 = add i64 %14, 1
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32**, i32*** @inputBuffer, align 8
  %19 = load i64, i64* %2, align 8
  %20 = getelementptr inbounds i32*, i32** %18, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %17, i32* %22, align 4
  %23 = load i32*, i32** @_siReg, align 8
  %24 = load i64, i64* %2, align 8
  %25 = mul i64 %24, 3
  %26 = add i64 %25, 2
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32**, i32*** @inputBuffer, align 8
  %30 = load i64, i64* %2, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %28, i32* %33, align 4
  %34 = load i32*, i32** @inputBufferValid, align 8
  %35 = load i64, i64* %2, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 1, i32* %36, align 4
  store i32 1, i32* %4, align 4
  br label %37

37:                                               ; preds = %11, %1
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @SI_GetStatus(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
