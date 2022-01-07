; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_hu_stuff.c_HU_dequeueChatChar.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_hu_stuff.c_HU_dequeueChatChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@head = common dso_local global i64 0, align 8
@tail = common dso_local global i64 0, align 8
@chatchars = common dso_local global i8* null, align 8
@QUEUESIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @HU_dequeueChatChar() #0 {
  %1 = alloca i8, align 1
  %2 = load i64, i64* @head, align 8
  %3 = load i64, i64* @tail, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %16

5:                                                ; preds = %0
  %6 = load i8*, i8** @chatchars, align 8
  %7 = load i64, i64* @tail, align 8
  %8 = getelementptr inbounds i8, i8* %6, i64 %7
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %1, align 1
  %10 = load i64, i64* @tail, align 8
  %11 = add i64 %10, 1
  %12 = load i32, i32* @QUEUESIZE, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = and i64 %11, %14
  store i64 %15, i64* @tail, align 8
  br label %17

16:                                               ; preds = %0
  store i8 0, i8* %1, align 1
  br label %17

17:                                               ; preds = %16, %5
  %18 = load i8, i8* %1, align 1
  ret i8 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
