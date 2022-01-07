; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_mzpokeysnd.c_mzpokeysnd_process_8.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_mzpokeysnd.c_mzpokeysnd_process_8.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @mzpokeysnd_process_8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mzpokeysnd_process_8(i8* %0, i32 %1) #0 {
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
  br label %87

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %79, %14
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @num_cur_pokeys, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %87

19:                                               ; preds = %15
  %20 = load i64, i64* @pokey_states, align 8
  %21 = call double @generate_sample(i64 %20)
  %22 = load double, double* @MAX_SAMPLE, align 8
  %23 = fdiv double %22, 2.000000e+00
  %24 = fsub double %21, %23
  %25 = load double, double* @MAX_SAMPLE, align 8
  %26 = fdiv double 2.550000e+02, %25
  %27 = fdiv double %26, 4.000000e+00
  %28 = load double, double* @M_PI, align 8
  %29 = fmul double %27, %28
  %30 = fmul double %29, 0x3FEE666666666666
  %31 = fmul double %24, %30
  %32 = fadd double %31, 1.280000e+02
  %33 = fadd double %32, 5.000000e-01
  %34 = call double (...) @rand()
  %35 = fmul double 5.000000e-01, %34
  %36 = load double, double* @RAND_MAX, align 8
  %37 = fdiv double %35, %36
  %38 = fadd double %33, %37
  %39 = fsub double %38, 2.500000e-01
  %40 = call i64 @floor(double %39)
  %41 = load i64*, i64** %7, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  store i64 %40, i64* %42, align 8
  store i32 1, i32* %5, align 4
  br label %43

43:                                               ; preds = %76, %19
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @num_cur_pokeys, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %79

47:                                               ; preds = %43
  %48 = load i64, i64* @pokey_states, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = call double @generate_sample(i64 %51)
  %53 = load double, double* @MAX_SAMPLE, align 8
  %54 = fdiv double %53, 2.000000e+00
  %55 = fsub double %52, %54
  %56 = load double, double* @MAX_SAMPLE, align 8
  %57 = fdiv double 2.550000e+02, %56
  %58 = fdiv double %57, 4.000000e+00
  %59 = load double, double* @M_PI, align 8
  %60 = fmul double %58, %59
  %61 = fmul double %60, 0x3FEE666666666666
  %62 = fmul double %55, %61
  %63 = fadd double %62, 1.280000e+02
  %64 = fadd double %63, 5.000000e-01
  %65 = call double (...) @rand()
  %66 = fmul double 5.000000e-01, %65
  %67 = load double, double* @RAND_MAX, align 8
  %68 = fdiv double %66, %67
  %69 = fadd double %64, %68
  %70 = fsub double %69, 2.500000e-01
  %71 = call i64 @floor(double %70)
  %72 = load i64*, i64** %7, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  store i64 %71, i64* %75, align 8
  br label %76

76:                                               ; preds = %47
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %43

79:                                               ; preds = %43
  %80 = load i32, i32* @num_cur_pokeys, align 4
  %81 = load i64*, i64** %7, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  store i64* %83, i64** %7, align 8
  %84 = load i32, i32* @num_cur_pokeys, align 4
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %85, %84
  store i32 %86, i32* %6, align 4
  br label %15

87:                                               ; preds = %13, %15
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
