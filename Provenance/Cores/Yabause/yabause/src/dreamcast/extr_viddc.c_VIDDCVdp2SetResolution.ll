; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_VIDDCVdp2SetResolution.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_VIDDCVdp2SetResolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vdp2width = common dso_local global i32 0, align 4
@vdp2height = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unsupported resolution set %d x %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Bailing out!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @VIDDCVdp2SetResolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @VIDDCVdp2SetResolution(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = and i32 %5, 3
  switch i32 %6, label %11 [
    i32 0, label %7
    i32 1, label %8
    i32 2, label %9
    i32 3, label %10
  ]

7:                                                ; preds = %1
  store i32 320, i32* %3, align 4
  br label %11

8:                                                ; preds = %1
  store i32 352, i32* %3, align 4
  br label %11

9:                                                ; preds = %1
  store i32 640, i32* %3, align 4
  br label %11

10:                                               ; preds = %1
  store i32 704, i32* %3, align 4
  br label %11

11:                                               ; preds = %1, %10, %9, %8, %7
  %12 = load i32, i32* %2, align 4
  %13 = ashr i32 %12, 4
  %14 = and i32 %13, 3
  switch i32 %14, label %18 [
    i32 0, label %15
    i32 1, label %16
    i32 2, label %17
  ]

15:                                               ; preds = %11
  store i32 224, i32* %4, align 4
  br label %18

16:                                               ; preds = %11
  store i32 240, i32* %4, align 4
  br label %18

17:                                               ; preds = %11
  store i32 256, i32* %4, align 4
  br label %18

18:                                               ; preds = %11, %17, %16, %15
  %19 = load i32, i32* %2, align 4
  %20 = ashr i32 %19, 6
  %21 = and i32 %20, 3
  switch i32 %21, label %25 [
    i32 2, label %22
    i32 3, label %22
  ]

22:                                               ; preds = %18, %18
  %23 = load i32, i32* %4, align 4
  %24 = shl i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %18, %22
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %3, align 4
  store i32 %27, i32* @vdp2width, align 4
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* @vdp2height, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp sgt i32 %29, 352
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = icmp sgt i32 %32, 256
  br i1 %33, label %34, label %40

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 @exit(i32 -1) #3
  unreachable

40:                                               ; preds = %31
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
