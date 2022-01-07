; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_unix_main.c_tty_Show.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_unix_main.c_tty_Show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@ttycon_on = common dso_local global i32 0, align 4
@ttycon_hide = common dso_local global i64 0, align 8
@tty_con = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_Show() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ttycon_on, align 4
  %3 = call i32 @assert(i32 %2)
  %4 = load i64, i64* @ttycon_hide, align 8
  %5 = icmp sgt i64 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load i64, i64* @ttycon_hide, align 8
  %9 = add nsw i64 %8, -1
  store i64 %9, i64* @ttycon_hide, align 8
  %10 = load i64, i64* @ttycon_hide, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %0
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tty_con, i32 0, i32 0), align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %26, %15
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tty_con, i32 0, i32 0), align 8
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tty_con, i32 0, i32 1), align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = call i32 @write(i32 1, i64 %24, i32 1)
  br label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %16

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29, %12
  br label %31

31:                                               ; preds = %30, %0
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @write(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
