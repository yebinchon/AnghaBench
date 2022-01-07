; ModuleID = '/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-ledc.c_ledcWriteNote.c'
source_filename = "/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-ledc.c_ledcWriteNote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.ledcWriteNote.noteFrequencyBase = private unnamed_addr constant [12 x i32] [i32 4186, i32 4435, i32 4699, i32 4978, i32 5274, i32 5588, i32 5920, i32 6272, i32 6645, i32 7040, i32 7459, i32 7902], align 16
@NOTE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @ledcWriteNote(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [12 x i32], align 16
  %9 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = bitcast [12 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([12 x i32]* @__const.ledcWriteNote.noteFrequencyBase to i8*), i64 48, i1 false)
  %11 = load i32, i32* %7, align 4
  %12 = icmp sgt i32 %11, 8
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @NOTE_MAX, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %3
  store double 0.000000e+00, double* %4, align 8
  br label %31

18:                                               ; preds = %13
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = sitofp i32 %21 to double
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 8, %23
  %25 = shl i32 1, %24
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %22, %26
  store double %27, double* %9, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load double, double* %9, align 8
  %30 = call double @ledcWriteTone(i32 %28, double %29)
  store double %30, double* %4, align 8
  br label %31

31:                                               ; preds = %18, %17
  %32 = load double, double* %4, align 8
  ret double %32
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local double @ledcWriteTone(i32, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
