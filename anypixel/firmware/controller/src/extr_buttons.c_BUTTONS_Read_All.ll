; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_buttons.c_BUTTONS_Read_All.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_buttons.c_BUTTONS_Read_All.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUTTONS_NUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BUTTONS_Read_All() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i64, i64* @BUTTONS_NUM, align 8
  %4 = sub nsw i64 %3, 1
  store i64 %4, i64* %1, align 8
  br label %5

5:                                                ; preds = %14, %0
  %6 = load i64, i64* %1, align 8
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = shl i32 %9, 1
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @BUTTONS_Read(i64 %11)
  %13 = or i32 %10, %12
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %8
  %15 = load i64, i64* %1, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %1, align 8
  br label %5

17:                                               ; preds = %5
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @BUTTONS_Read(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
