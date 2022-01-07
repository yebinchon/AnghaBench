; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_votraxsnd.c_VOTRAXSND_PutByte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_votraxsnd.c_VOTRAXSND_PutByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ratio = common dso_local global double 0.000000e+00, align 8
@votrax_written_byte = common dso_local global i32 0, align 4
@votrax_sync_samples = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@votrax_written = common dso_local global i8* null, align 8
@VOTRAXSND_busy = common dso_local global i8* null, align 8
@PBI_XLD_enabled = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VOTRAXSND_PutByte(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load double, double* @ratio, align 8
  %4 = fdiv double 1.000000e+00, %3
  %5 = load i32, i32* @votrax_written_byte, align 4
  %6 = and i32 %5, 63
  %7 = load i32, i32* %2, align 4
  %8 = and i32 %7, 63
  %9 = load i32, i32* @votrax_sync_samples, align 4
  %10 = call i64 @Votrax_Samples(i32 %6, i32 %8, i32 %9)
  %11 = sitofp i64 %10 to double
  %12 = fmul double %4, %11
  %13 = fptosi double %12 to i32
  store i32 %13, i32* @votrax_sync_samples, align 4
  %14 = load i8*, i8** @TRUE, align 8
  store i8* %14, i8** @votrax_written, align 8
  %15 = load i32, i32* %2, align 4
  store i32 %15, i32* @votrax_written_byte, align 4
  %16 = load i8*, i8** @VOTRAXSND_busy, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load i8*, i8** @TRUE, align 8
  store i8* %19, i8** @VOTRAXSND_busy, align 8
  br label %20

20:                                               ; preds = %18, %1
  ret void
}

declare dso_local i64 @Votrax_Samples(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
