; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_unix_main.c_tty_Hide.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_unix_main.c_tty_Hide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ttycon_on = common dso_local global i32 0, align 4
@ttycon_hide = common dso_local global i64 0, align 8
@tty_con = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_Hide() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ttycon_on, align 4
  %3 = call i32 @assert(i32 %2)
  %4 = load i64, i64* @ttycon_hide, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i64, i64* @ttycon_hide, align 8
  %8 = add nsw i64 %7, 1
  store i64 %8, i64* @ttycon_hide, align 8
  br label %26

9:                                                ; preds = %0
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tty_con, i32 0, i32 0), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %19, %12
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tty_con, i32 0, i32 0), align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = call i32 (...) @tty_Back()
  br label %19

19:                                               ; preds = %17
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %13

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %9
  %24 = load i64, i64* @ttycon_hide, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* @ttycon_hide, align 8
  br label %26

26:                                               ; preds = %23, %6
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tty_Back(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
