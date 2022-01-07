; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_timer_sysctl_set.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_timer_call.c_timer_sysctl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }

@master_cpu = common dso_local global i32 0, align 4
@timer_sysctl_set_threshold = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@timer_longterm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timer_sysctl_set(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %21 [
    i32 128, label %7
    i32 129, label %15
    i32 130, label %18
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @master_cpu, align 4
  %9 = load i32, i32* @timer_sysctl_set_threshold, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to void (i8*)*
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @timer_call_cpu(i32 %8, void (i8*)* %11, i8* %12)
  %14 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %14, i32* %3, align 4
  br label %23

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timer_longterm, i32 0, i32 1), align 8
  %17 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %17, i32* %3, align 4
  br label %23

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @timer_longterm, i32 0, i32 0), align 8
  %20 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %20, i32* %3, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %18, %15, %7
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @timer_call_cpu(i32, void (i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
