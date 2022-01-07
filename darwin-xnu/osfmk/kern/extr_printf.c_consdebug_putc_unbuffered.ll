; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_printf.c_consdebug_putc_unbuffered.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_printf.c_consdebug_putc_unbuffered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@disableConsoleOutput = common dso_local global i32 0, align 4
@disable_serial_output = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @consdebug_putc_unbuffered(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i32, i32* @disableConsoleOutput, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i8, i8* %2, align 1
  %7 = call i32 @cnputc_unbuffered(i8 signext %6)
  br label %8

8:                                                ; preds = %5, %1
  %9 = load i8, i8* %2, align 1
  %10 = call i32 @debug_putc(i8 signext %9)
  %11 = call i32 (...) @console_is_serial()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* @disable_serial_output, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i8, i8* %2, align 1
  %18 = call i32 @PE_kputc(i8 signext %17)
  br label %19

19:                                               ; preds = %16, %13, %8
  ret void
}

declare dso_local i32 @cnputc_unbuffered(i8 signext) #1

declare dso_local i32 @debug_putc(i8 signext) #1

declare dso_local i32 @console_is_serial(...) #1

declare dso_local i32 @PE_kputc(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
