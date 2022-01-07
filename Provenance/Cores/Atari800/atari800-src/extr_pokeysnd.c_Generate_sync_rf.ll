; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pokeysnd.c_Generate_sync_rf.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pokeysnd.c_Generate_sync_rf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POKEYSND_process_buffer = common dso_local global i32* null, align 8
@POKEYSND_process_buffer_fill = common dso_local global i32 0, align 4
@POKEYSND_process_buffer_length = common dso_local global i32 0, align 4
@samp_pos = common dso_local global i32 0, align 4
@ticks_per_sample = common dso_local global i32 0, align 4
@POKEYSND_snd_flags = common dso_local global i32 0, align 4
@POKEYSND_BIT16 = common dso_local global i32 0, align 4
@POKEYSND_num_pokeys = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @Generate_sync_rf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Generate_sync_rf(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca double, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32*, i32** @POKEYSND_process_buffer, align 8
  %9 = load i32, i32* @POKEYSND_process_buffer_fill, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** @POKEYSND_process_buffer, align 8
  %13 = load i32, i32* @POKEYSND_process_buffer_length, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  store i32* %15, i32** %6, align 8
  br label %16

16:                                               ; preds = %62, %1
  %17 = load i32, i32* @samp_pos, align 4
  %18 = load i32, i32* @ticks_per_sample, align 4
  %19 = add i32 %17, %18
  %20 = uitofp i32 %19 to double
  store double %20, double* %3, align 8
  %21 = load double, double* %3, align 8
  %22 = call double @modf(double %21, double* %7) #3
  store double %22, double* %3, align 8
  %23 = load double, double* %7, align 8
  %24 = fptoui double %23 to i32
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp ugt i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %16
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @samp_pos, align 4
  %31 = sub i32 %30, %29
  store i32 %31, i32* @samp_pos, align 4
  br label %63

32:                                               ; preds = %16
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = icmp uge i32* %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %63

37:                                               ; preds = %32
  %38 = load double, double* %3, align 8
  %39 = fptoui double %38 to i32
  store i32 %39, i32* @samp_pos, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %2, align 4
  %42 = sub i32 %41, %40
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* @POKEYSND_snd_flags, align 4
  %44 = load i32, i32* @POKEYSND_BIT16, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %37
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @pokeysnd_process_16(i32* %48, i32 1)
  %50 = load i32, i32* @POKEYSND_num_pokeys, align 4
  %51 = mul nsw i32 2, %50
  %52 = load i32*, i32** %5, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %5, align 8
  br label %62

55:                                               ; preds = %37
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @pokeysnd_process_8(i32* %56, i32 1)
  %58 = load i32, i32* @POKEYSND_num_pokeys, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %5, align 8
  br label %62

62:                                               ; preds = %55, %47
  br label %16

63:                                               ; preds = %36, %28
  %64 = load i32*, i32** %5, align 8
  %65 = load i32*, i32** @POKEYSND_process_buffer, align 8
  %66 = ptrtoint i32* %64 to i64
  %67 = ptrtoint i32* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 4
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* @POKEYSND_process_buffer_fill, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local double @modf(double, double*) #1

declare dso_local i32 @pokeysnd_process_16(i32*, i32) #2

declare dso_local i32 @pokeysnd_process_8(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
