; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_sound.c_I_SetChannels.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_sound.c_I_SetChannels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@steptable = common dso_local global i32* null, align 8
@vol_lookup = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @I_SetChannels() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = load i32*, i32** @steptable, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 128
  store i32* %5, i32** %3, align 8
  store i32 -128, i32* %1, align 4
  br label %6

6:                                                ; preds = %21, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 128
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = load i32, i32* %1, align 4
  %11 = sitofp i32 %10 to double
  %12 = fdiv double %11, 6.400000e+01
  %13 = fptosi double %12 to i32
  %14 = call double @pow(double 2.000000e+00, i32 %13)
  %15 = fmul double %14, 6.553600e+04
  %16 = fptosi double %15 to i32
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 %16, i32* %20, align 4
  br label %21

21:                                               ; preds = %9
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %1, align 4
  br label %6

24:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %50, %24
  %26 = load i32, i32* %1, align 4
  %27 = icmp slt i32 %26, 128
  br i1 %27, label %28, label %53

28:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %46, %28
  %30 = load i32, i32* %2, align 4
  %31 = icmp slt i32 %30, 256
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  %33 = load i32, i32* %1, align 4
  %34 = load i32, i32* %2, align 4
  %35 = sub nsw i32 %34, 128
  %36 = mul nsw i32 %33, %35
  %37 = mul nsw i32 %36, 256
  %38 = sdiv i32 %37, 127
  %39 = load i32*, i32** @vol_lookup, align 8
  %40 = load i32, i32* %1, align 4
  %41 = mul nsw i32 %40, 256
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %39, i64 %44
  store i32 %38, i32* %45, align 4
  br label %46

46:                                               ; preds = %32
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %2, align 4
  br label %29

49:                                               ; preds = %29
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %25

53:                                               ; preds = %25
  ret void
}

declare dso_local double @pow(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
