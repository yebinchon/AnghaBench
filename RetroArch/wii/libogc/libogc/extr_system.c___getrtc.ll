; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c___getrtc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c___getrtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXI_CHANNEL_0 = common dso_local global i32 0, align 4
@EXI_DEVICE_1 = common dso_local global i32 0, align 4
@EXI_SPEED8MHZ = common dso_local global i32 0, align 4
@EXI_WRITE = common dso_local global i32 0, align 4
@EXI_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @__getrtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__getrtc(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32, i32* @EXI_CHANNEL_0, align 4
  %8 = load i32, i32* @EXI_DEVICE_1, align 4
  %9 = call i64 @EXI_Lock(i32 %7, i32 %8, i32* null)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

12:                                               ; preds = %1
  %13 = load i32, i32* @EXI_CHANNEL_0, align 4
  %14 = load i32, i32* @EXI_DEVICE_1, align 4
  %15 = load i32, i32* @EXI_SPEED8MHZ, align 4
  %16 = call i64 @EXI_Select(i32 %13, i32 %14, i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @EXI_CHANNEL_0, align 4
  %20 = call i32 @EXI_Unlock(i32 %19)
  store i32 0, i32* %2, align 4
  br label %67

21:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 536870912, i32* %5, align 4
  %22 = load i32, i32* @EXI_CHANNEL_0, align 4
  %23 = load i32, i32* @EXI_WRITE, align 4
  %24 = call i64 @EXI_Imm(i32 %22, i32* %5, i32 4, i32 %23, i32* null)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* @EXI_CHANNEL_0, align 4
  %31 = call i64 @EXI_Sync(i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, 2
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %29
  %37 = load i32, i32* @EXI_CHANNEL_0, align 4
  %38 = load i32, i32* @EXI_READ, align 4
  %39 = call i64 @EXI_Imm(i32 %37, i32* %6, i32 4, i32 %38, i32* null)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* @EXI_CHANNEL_0, align 4
  %46 = call i64 @EXI_Sync(i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, 8
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i32, i32* @EXI_CHANNEL_0, align 4
  %53 = call i64 @EXI_Deselect(i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, 16
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %51
  %59 = load i32, i32* @EXI_CHANNEL_0, align 4
  %60 = call i32 @EXI_Unlock(i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = load i32*, i32** %3, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %67

66:                                               ; preds = %58
  store i32 1, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %65, %18, %11
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @EXI_Lock(i32, i32, i32*) #1

declare dso_local i64 @EXI_Select(i32, i32, i32) #1

declare dso_local i32 @EXI_Unlock(i32) #1

declare dso_local i64 @EXI_Imm(i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @EXI_Sync(i32) #1

declare dso_local i64 @EXI_Deselect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
