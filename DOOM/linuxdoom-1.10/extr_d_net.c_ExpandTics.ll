; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_net.c_ExpandTics.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_net.c_ExpandTics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@maketic = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ExpandTics: strange value %i at maketic %i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ExpandTics(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @maketic, align 4
  %7 = and i32 %6, 255
  %8 = sub nsw i32 %5, %7
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sge i32 %9, -64
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp sle i32 %12, 64
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* @maketic, align 4
  %16 = and i32 %15, -256
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %2, align 4
  br label %41

19:                                               ; preds = %11, %1
  %20 = load i32, i32* %4, align 4
  %21 = icmp sgt i32 %20, 64
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, i32* @maketic, align 4
  %24 = and i32 %23, -256
  %25 = sub nsw i32 %24, 256
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %2, align 4
  br label %41

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, -64
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* @maketic, align 4
  %33 = and i32 %32, -256
  %34 = add nsw i32 %33, 256
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %2, align 4
  br label %41

37:                                               ; preds = %28
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @maketic, align 4
  %40 = call i32 @I_Error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %31, %22, %14
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @I_Error(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
