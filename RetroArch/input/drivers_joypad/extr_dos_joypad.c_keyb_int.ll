; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_dos_joypad.c_keyb_int.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_dos_joypad.c_keyb_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@keyb_int.buffer = internal global i8 0, align 1
@normal_keys = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @keyb_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyb_int() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = call zeroext i8 @inp(i32 96)
  store i8 %4, i8* %1, align 1
  %5 = load i8, i8* %1, align 1
  %6 = zext i8 %5 to i32
  %7 = and i32 %6, 128
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %2, align 1
  %12 = load i8, i8* %1, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, 127
  store i32 %14, i32* %3, align 4
  %15 = load i8, i8* @keyb_int.buffer, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 224
  br i1 %17, label %18, label %29

18:                                               ; preds = %0
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 96
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i8, i8* %2, align 1
  %23 = load i8*, i8** @normal_keys, align 8
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, 256
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  store i8 %22, i8* %27, align 1
  br label %28

28:                                               ; preds = %21, %18
  store i8 0, i8* @keyb_int.buffer, align 1
  br label %60

29:                                               ; preds = %0
  %30 = load i8, i8* @keyb_int.buffer, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp sge i32 %31, 225
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i8, i8* @keyb_int.buffer, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp sle i32 %35, 226
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i8 0, i8* @keyb_int.buffer, align 1
  br label %59

38:                                               ; preds = %33, %29
  %39 = load i8, i8* %1, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp sge i32 %40, 224
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i8, i8* %1, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp sle i32 %44, 226
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i8, i8* %1, align 1
  store i8 %47, i8* @keyb_int.buffer, align 1
  br label %58

48:                                               ; preds = %42, %38
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %49, 96
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i8, i8* %2, align 1
  %53 = load i8*, i8** @normal_keys, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8 %52, i8* %56, align 1
  br label %57

57:                                               ; preds = %51, %48
  br label %58

58:                                               ; preds = %57, %46
  br label %59

59:                                               ; preds = %58, %37
  br label %60

60:                                               ; preds = %59, %28
  %61 = call i32 @outp(i32 32, i32 32)
  ret void
}

declare dso_local zeroext i8 @inp(i32) #1

declare dso_local i32 @outp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
