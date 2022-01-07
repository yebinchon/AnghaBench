; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_gdbstub/src/extr_packet.c_esp_gdbstub_send_char.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_gdbstub/src/extr_packet.c_esp_gdbstub_send_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_chsum = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esp_gdbstub_send_char(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 35
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = load i8, i8* %2, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 36
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = load i8, i8* %2, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 125
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i8, i8* %2, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 42
  br i1 %17, label %18, label %33

18:                                               ; preds = %14, %10, %6, %1
  %19 = call i32 @esp_gdbstub_putchar(i8 signext 125)
  %20 = load i8, i8* %2, align 1
  %21 = sext i8 %20 to i32
  %22 = xor i32 %21, 32
  %23 = trunc i32 %22 to i8
  %24 = call i32 @esp_gdbstub_putchar(i8 signext %23)
  %25 = load i8, i8* %2, align 1
  %26 = sext i8 %25 to i32
  %27 = xor i32 %26, 32
  %28 = add nsw i32 %27, 125
  %29 = load i8, i8* @s_chsum, align 1
  %30 = sext i8 %29 to i32
  %31 = add nsw i32 %30, %28
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* @s_chsum, align 1
  br label %42

33:                                               ; preds = %14
  %34 = load i8, i8* %2, align 1
  %35 = call i32 @esp_gdbstub_putchar(i8 signext %34)
  %36 = load i8, i8* %2, align 1
  %37 = sext i8 %36 to i32
  %38 = load i8, i8* @s_chsum, align 1
  %39 = sext i8 %38 to i32
  %40 = add nsw i32 %39, %37
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* @s_chsum, align 1
  br label %42

42:                                               ; preds = %33, %18
  ret void
}

declare dso_local i32 @esp_gdbstub_putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
