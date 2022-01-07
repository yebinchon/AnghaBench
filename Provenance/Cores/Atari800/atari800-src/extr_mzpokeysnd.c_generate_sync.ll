; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_mzpokeysnd.c_generate_sync.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_mzpokeysnd.c_generate_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POKEYSND_process_buffer = common dso_local global i64* null, align 8
@POKEYSND_process_buffer_fill = common dso_local global i32 0, align 4
@POKEYSND_process_buffer_length = common dso_local global i32 0, align 4
@samp_pos = common dso_local global i32 0, align 4
@ticks_per_sample = common dso_local global i32 0, align 4
@num_cur_pokeys = common dso_local global i32 0, align 4
@pokey_states = common dso_local global i64 0, align 8
@POKEYSND_snd_flags = common dso_local global i32 0, align 4
@POKEYSND_BIT16 = common dso_local global i32 0, align 4
@MAX_SAMPLE = common dso_local global double 0.000000e+00, align 8
@M_PI = common dso_local global double 0.000000e+00, align 8
@RAND_MAX = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @generate_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_sync(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i64*, i64** @POKEYSND_process_buffer, align 8
  %10 = load i32, i32* @POKEYSND_process_buffer_fill, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  store i64* %12, i64** %5, align 8
  %13 = load i64*, i64** @POKEYSND_process_buffer, align 8
  %14 = load i32, i32* @POKEYSND_process_buffer_length, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  store i64* %16, i64** %6, align 8
  br label %17

17:                                               ; preds = %119, %1
  %18 = load i32, i32* @samp_pos, align 4
  %19 = load i32, i32* @ticks_per_sample, align 4
  %20 = add i32 %18, %19
  %21 = uitofp i32 %20 to double
  store double %21, double* %3, align 8
  %22 = load double, double* %3, align 8
  %23 = call double @modf(double %22, double* %8) #3
  store double %23, double* %3, align 8
  %24 = load double, double* %8, align 8
  %25 = fptoui double %24 to i32
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %2, align 4
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %17
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @samp_pos, align 4
  %32 = sub i32 %31, %30
  store i32 %32, i32* @samp_pos, align 4
  br label %120

33:                                               ; preds = %17
  %34 = load i64*, i64** %5, align 8
  %35 = load i64*, i64** %6, align 8
  %36 = icmp uge i64* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %120

38:                                               ; preds = %33
  %39 = load double, double* %3, align 8
  %40 = fptoui double %39 to i32
  store i32 %40, i32* @samp_pos, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %2, align 4
  %43 = sub i32 %42, %41
  store i32 %43, i32* %2, align 4
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %116, %38
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @num_cur_pokeys, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %119

48:                                               ; preds = %44
  %49 = load i64, i64* @pokey_states, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @advance_ticks(i64 %52, i32 %53)
  %55 = load i32, i32* @POKEYSND_snd_flags, align 4
  %56 = load i32, i32* @POKEYSND_BIT16, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %87

59:                                               ; preds = %48
  %60 = load i64, i64* @pokey_states, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = load i32, i32* @samp_pos, align 4
  %65 = call double @interp_read_resam_all(i64 %63, i32 %64)
  %66 = load double, double* @MAX_SAMPLE, align 8
  %67 = fdiv double %66, 2.000000e+00
  %68 = fsub double %65, %67
  %69 = load double, double* @MAX_SAMPLE, align 8
  %70 = fdiv double 6.553500e+04, %69
  %71 = fdiv double %70, 4.000000e+00
  %72 = load double, double* @M_PI, align 8
  %73 = fmul double %71, %72
  %74 = fmul double %73, 0x3FEE666666666666
  %75 = fmul double %68, %74
  %76 = fadd double %75, 5.000000e-01
  %77 = call double (...) @rand()
  %78 = fmul double 5.000000e-01, %77
  %79 = load double, double* @RAND_MAX, align 8
  %80 = fdiv double %78, %79
  %81 = fadd double %76, %80
  %82 = fsub double %81, 2.500000e-01
  %83 = call i64 @floor(double %82)
  %84 = load i64*, i64** %5, align 8
  store i64 %83, i64* %84, align 8
  %85 = load i64*, i64** %5, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 2
  store i64* %86, i64** %5, align 8
  br label %115

87:                                               ; preds = %48
  %88 = load i64, i64* @pokey_states, align 8
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  %92 = load i32, i32* @samp_pos, align 4
  %93 = call double @interp_read_resam_all(i64 %91, i32 %92)
  %94 = load double, double* @MAX_SAMPLE, align 8
  %95 = fdiv double %94, 2.000000e+00
  %96 = fsub double %93, %95
  %97 = load double, double* @MAX_SAMPLE, align 8
  %98 = fdiv double 2.550000e+02, %97
  %99 = fdiv double %98, 4.000000e+00
  %100 = load double, double* @M_PI, align 8
  %101 = fmul double %99, %100
  %102 = fmul double %101, 0x3FEE666666666666
  %103 = fmul double %96, %102
  %104 = fadd double %103, 1.280000e+02
  %105 = fadd double %104, 5.000000e-01
  %106 = call double (...) @rand()
  %107 = fmul double 5.000000e-01, %106
  %108 = load double, double* @RAND_MAX, align 8
  %109 = fdiv double %107, %108
  %110 = fadd double %105, %109
  %111 = fsub double %110, 2.500000e-01
  %112 = call i64 @floor(double %111)
  %113 = load i64*, i64** %5, align 8
  %114 = getelementptr inbounds i64, i64* %113, i32 1
  store i64* %114, i64** %5, align 8
  store i64 %112, i64* %113, align 8
  br label %115

115:                                              ; preds = %87, %59
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %7, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %44

119:                                              ; preds = %44
  br label %17

120:                                              ; preds = %37, %29
  %121 = load i64*, i64** %5, align 8
  %122 = load i64*, i64** @POKEYSND_process_buffer, align 8
  %123 = ptrtoint i64* %121 to i64
  %124 = ptrtoint i64* %122 to i64
  %125 = sub i64 %123, %124
  %126 = sdiv exact i64 %125, 8
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* @POKEYSND_process_buffer_fill, align 4
  %128 = load i32, i32* %2, align 4
  %129 = icmp ugt i32 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %120
  store i32 0, i32* %7, align 4
  br label %131

131:                                              ; preds = %142, %130
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @num_cur_pokeys, align 4
  %134 = icmp ult i32 %132, %133
  br i1 %134, label %135, label %145

135:                                              ; preds = %131
  %136 = load i64, i64* @pokey_states, align 8
  %137 = load i32, i32* %7, align 4
  %138 = zext i32 %137 to i64
  %139 = add nsw i64 %136, %138
  %140 = load i32, i32* %2, align 4
  %141 = call i32 @advance_ticks(i64 %139, i32 %140)
  br label %142

142:                                              ; preds = %135
  %143 = load i32, i32* %7, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %7, align 4
  br label %131

145:                                              ; preds = %131
  br label %146

146:                                              ; preds = %145, %120
  ret void
}

; Function Attrs: nounwind
declare dso_local double @modf(double, double*) #1

declare dso_local i32 @advance_ticks(i64, i32) #2

declare dso_local i64 @floor(double) #2

declare dso_local double @interp_read_resam_all(i64, i32) #2

declare dso_local double @rand(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
