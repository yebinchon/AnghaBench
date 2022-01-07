; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_mzpokeysnd.c_mzpokeysnd_process_16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_mzpokeysnd.c_mzpokeysnd_process_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_cur_pokeys = common dso_local global i32 0, align 4
@pokey_states = common dso_local global i64 0, align 8
@MAX_SAMPLE = common dso_local global double 0.000000e+00, align 8
@M_PI = common dso_local global double 0.000000e+00, align 8
@RAND_MAX = common dso_local global double 0.000000e+00, align 8
@POKEYSND_SAMPBUF_MAX = common dso_local global i64 0, align 8
@POKEYSND_sampbuf_cnt = common dso_local global i32* null, align 8
@POKEYSND_sampbuf_ptr = common dso_local global i64 0, align 8
@POKEYSND_sampbuf_rptr = common dso_local global i64 0, align 8
@POKEYSND_sampbuf_val = common dso_local global double* null, align 8
@POKEYSND_sampout = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @mzpokeysnd_process_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mzpokeysnd_process_16(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to i64*
  store i64* %10, i64** %7, align 8
  %11 = load i32, i32* @num_cur_pokeys, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %85

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %77, %14
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @num_cur_pokeys, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %85

19:                                               ; preds = %15
  %20 = load i64, i64* @pokey_states, align 8
  %21 = call double @generate_sample(i64 %20)
  %22 = load double, double* @MAX_SAMPLE, align 8
  %23 = fdiv double %22, 2.000000e+00
  %24 = fsub double %21, %23
  %25 = load double, double* @MAX_SAMPLE, align 8
  %26 = fdiv double 6.553500e+04, %25
  %27 = fdiv double %26, 4.000000e+00
  %28 = load double, double* @M_PI, align 8
  %29 = fmul double %27, %28
  %30 = fmul double %29, 0x3FEE666666666666
  %31 = fmul double %24, %30
  %32 = fadd double %31, 5.000000e-01
  %33 = call double (...) @rand()
  %34 = fmul double 5.000000e-01, %33
  %35 = load double, double* @RAND_MAX, align 8
  %36 = fdiv double %34, %35
  %37 = fadd double %32, %36
  %38 = fsub double %37, 2.500000e-01
  %39 = call i64 @floor(double %38)
  %40 = load i64*, i64** %7, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  store i64 %39, i64* %41, align 8
  store i32 1, i32* %5, align 4
  br label %42

42:                                               ; preds = %74, %19
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @num_cur_pokeys, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %77

46:                                               ; preds = %42
  %47 = load i64, i64* @pokey_states, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = call double @generate_sample(i64 %50)
  %52 = load double, double* @MAX_SAMPLE, align 8
  %53 = fdiv double %52, 2.000000e+00
  %54 = fsub double %51, %53
  %55 = load double, double* @MAX_SAMPLE, align 8
  %56 = fdiv double 6.553500e+04, %55
  %57 = fdiv double %56, 4.000000e+00
  %58 = load double, double* @M_PI, align 8
  %59 = fmul double %57, %58
  %60 = fmul double %59, 0x3FEE666666666666
  %61 = fmul double %54, %60
  %62 = fadd double %61, 5.000000e-01
  %63 = call double (...) @rand()
  %64 = fmul double 5.000000e-01, %63
  %65 = load double, double* @RAND_MAX, align 8
  %66 = fdiv double %64, %65
  %67 = fadd double %62, %66
  %68 = fsub double %67, 2.500000e-01
  %69 = call i64 @floor(double %68)
  %70 = load i64*, i64** %7, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  store i64 %69, i64* %73, align 8
  br label %74

74:                                               ; preds = %46
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %42

77:                                               ; preds = %42
  %78 = load i32, i32* @num_cur_pokeys, align 4
  %79 = load i64*, i64** %7, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  store i64* %81, i64** %7, align 8
  %82 = load i32, i32* @num_cur_pokeys, align 4
  %83 = load i32, i32* %6, align 4
  %84 = sub nsw i32 %83, %82
  store i32 %84, i32* %6, align 4
  br label %15

85:                                               ; preds = %13, %15
  ret void
}

declare dso_local i64 @floor(double) #1

declare dso_local double @generate_sample(i64) #1

declare dso_local double @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
