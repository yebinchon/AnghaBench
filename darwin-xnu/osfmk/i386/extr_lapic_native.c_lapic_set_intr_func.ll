; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_lapic_native.c_lapic_set_intr_func.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_lapic_native.c_lapic_set_intr_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lapic_interrupt_base = common dso_local global i32 0, align 4
@lapic_intr_func = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"lapic_set_intr_func(%d,%p) invalid vector\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lapic_set_intr_func(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @lapic_interrupt_base, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* @lapic_interrupt_base, align 4
  %10 = load i32, i32* %3, align 4
  %11 = sub nsw i32 %10, %9
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %8, %2
  %13 = load i32, i32* %3, align 4
  switch i32 %13, label %20 [
    i32 132, label %14
    i32 133, label %14
    i32 128, label %14
    i32 129, label %14
    i32 131, label %14
    i32 134, label %14
    i32 130, label %14
  ]

14:                                               ; preds = %12, %12, %12, %12, %12, %12, %12
  %15 = load i32, i32* %4, align 4
  %16 = load i32*, i32** @lapic_intr_func, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32 %15, i32* %19, align 4
  br label %24

20:                                               ; preds = %12
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %14
  ret void
}

declare dso_local i32 @panic(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
