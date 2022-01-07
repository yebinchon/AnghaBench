; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_debug.c_kdp_register_callout.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_debug.c_kdp_register_callout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kdp_callout = type { %struct.kdp_callout*, i32, i8*, i32 }

@.str = private unnamed_addr constant [37 x i8] c"kdp_register_callout() kalloc failed\00", align 1
@FALSE = common dso_local global i32 0, align 4
@kdp_callout_list = common dso_local global %struct.kdp_callout* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kdp_register_callout(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kdp_callout*, align 8
  %6 = alloca %struct.kdp_callout*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = call %struct.kdp_callout* @kalloc(i32 32)
  store %struct.kdp_callout* %7, %struct.kdp_callout** %5, align 8
  %8 = load %struct.kdp_callout*, %struct.kdp_callout** %5, align 8
  %9 = icmp eq %struct.kdp_callout* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.kdp_callout*, %struct.kdp_callout** %5, align 8
  %15 = getelementptr inbounds %struct.kdp_callout, %struct.kdp_callout* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load %struct.kdp_callout*, %struct.kdp_callout** %5, align 8
  %18 = getelementptr inbounds %struct.kdp_callout, %struct.kdp_callout* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* @FALSE, align 4
  %20 = load %struct.kdp_callout*, %struct.kdp_callout** %5, align 8
  %21 = getelementptr inbounds %struct.kdp_callout, %struct.kdp_callout* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  br label %22

22:                                               ; preds = %27, %12
  %23 = load %struct.kdp_callout*, %struct.kdp_callout** @kdp_callout_list, align 8
  store %struct.kdp_callout* %23, %struct.kdp_callout** %6, align 8
  %24 = load %struct.kdp_callout*, %struct.kdp_callout** %6, align 8
  %25 = load %struct.kdp_callout*, %struct.kdp_callout** %5, align 8
  %26 = getelementptr inbounds %struct.kdp_callout, %struct.kdp_callout* %25, i32 0, i32 0
  store %struct.kdp_callout* %24, %struct.kdp_callout** %26, align 8
  br label %27

27:                                               ; preds = %22
  %28 = load %struct.kdp_callout*, %struct.kdp_callout** %6, align 8
  %29 = load %struct.kdp_callout*, %struct.kdp_callout** %5, align 8
  %30 = call i32 @OSCompareAndSwapPtr(%struct.kdp_callout* %28, %struct.kdp_callout* %29, %struct.kdp_callout** @kdp_callout_list)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %22, label %33

33:                                               ; preds = %27
  ret void
}

declare dso_local %struct.kdp_callout* @kalloc(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @OSCompareAndSwapPtr(%struct.kdp_callout*, %struct.kdp_callout*, %struct.kdp_callout**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
