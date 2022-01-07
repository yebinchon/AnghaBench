; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_geckousb.c___send_command.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_geckousb.c___send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXI_DEVICE_0 = common dso_local global i32 0, align 4
@EXI_SPEED32MHZ = common dso_local global i32 0, align 4
@EXI_READWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @__send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__send_command(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @EXI_DEVICE_0, align 4
  %9 = load i32, i32* @EXI_SPEED32MHZ, align 4
  %10 = call i32 @EXI_Select(i32 %7, i32 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = or i32 %13, 1
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @EXI_READWRITE, align 4
  %19 = call i32 @EXI_Imm(i32 %16, i32* %17, i32 4, i32 %18, i32* null)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, 2
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %21, %15
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @EXI_Sync(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @EXI_Deselect(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, 8
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %43

42:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @EXI_Select(i32, i32, i32) #1

declare dso_local i32 @EXI_Imm(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @EXI_Sync(i32) #1

declare dso_local i32 @EXI_Deselect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
