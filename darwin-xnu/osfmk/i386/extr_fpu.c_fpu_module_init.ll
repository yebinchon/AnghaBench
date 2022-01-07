; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpu_module_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpu_module_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fpu_default = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"fpu_module_init: invalid extended state %u\0A\00", align 1
@fp_state_size = common dso_local global i32* null, align 8
@thread_max = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"x86 fpsave state\00", align 1
@ifps_zone = common dso_local global i32* null, align 8
@Z_ALIGNMENT_REQUIRED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@fpu_capability = common dso_local global i64 0, align 8
@AVX512 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"x86 avx512 save state\00", align 1
@initial_fp_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpu_module_init() #0 {
  %1 = load i64, i64* @fpu_default, align 8
  %2 = call i32 @IS_VALID_XSTATE(i64 %1)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i64, i64* @fpu_default, align 8
  %6 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %5)
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i32*, i32** @fp_state_size, align 8
  %9 = load i64, i64* @fpu_default, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @thread_max, align 4
  %13 = load i32*, i32** @fp_state_size, align 8
  %14 = load i64, i64* @fpu_default, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %12, %16
  %18 = load i32*, i32** @fp_state_size, align 8
  %19 = load i64, i64* @fpu_default, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 64, %21
  %23 = call i32 @zinit(i32 %11, i32 %17, i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32*, i32** @ifps_zone, align 8
  %25 = load i64, i64* @fpu_default, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 %23, i32* %26, align 4
  %27 = load i32*, i32** @ifps_zone, align 8
  %28 = load i64, i64* @fpu_default, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @Z_ALIGNMENT_REQUIRED, align 4
  %32 = load i32, i32* @TRUE, align 4
  %33 = call i32 @zone_change(i32 %30, i32 %31, i32 %32)
  %34 = load i64, i64* @fpu_capability, align 8
  %35 = load i64, i64* @AVX512, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %64

37:                                               ; preds = %7
  %38 = load i32*, i32** @fp_state_size, align 8
  %39 = load i64, i64* @AVX512, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @thread_max, align 4
  %43 = load i32*, i32** @fp_state_size, align 8
  %44 = load i64, i64* @AVX512, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %42, %46
  %48 = load i32*, i32** @fp_state_size, align 8
  %49 = load i64, i64* @AVX512, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 32, %51
  %53 = call i32 @zinit(i32 %41, i32 %47, i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32*, i32** @ifps_zone, align 8
  %55 = load i64, i64* @AVX512, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %53, i32* %56, align 4
  %57 = load i32*, i32** @ifps_zone, align 8
  %58 = load i64, i64* @AVX512, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @Z_ALIGNMENT_REQUIRED, align 4
  %62 = load i32, i32* @TRUE, align 4
  %63 = call i32 @zone_change(i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %37, %7
  %65 = call i32 @configure_mxcsr_capability_mask(i32* @initial_fp_state)
  ret void
}

declare dso_local i32 @IS_VALID_XSTATE(i64) #1

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local i32 @zinit(i32, i32, i32, i8*) #1

declare dso_local i32 @zone_change(i32, i32, i32) #1

declare dso_local i32 @configure_mxcsr_capability_mask(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
