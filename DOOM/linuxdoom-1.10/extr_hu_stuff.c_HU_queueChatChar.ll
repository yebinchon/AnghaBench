; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_hu_stuff.c_HU_queueChatChar.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_hu_stuff.c_HU_queueChatChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@head = common dso_local global i32 0, align 4
@QUEUESIZE = common dso_local global i32 0, align 4
@tail = common dso_local global i32 0, align 4
@HUSTR_MSGU = common dso_local global i32 0, align 4
@plr = common dso_local global %struct.TYPE_2__* null, align 8
@chatchars = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HU_queueChatChar(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i32, i32* @head, align 4
  %4 = add nsw i32 %3, 1
  %5 = load i32, i32* @QUEUESIZE, align 4
  %6 = sub nsw i32 %5, 1
  %7 = and i32 %4, %6
  %8 = load i32, i32* @tail, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @HUSTR_MSGU, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @plr, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  br label %25

14:                                               ; preds = %1
  %15 = load i8, i8* %2, align 1
  %16 = load i8*, i8** @chatchars, align 8
  %17 = load i32, i32* @head, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  store i8 %15, i8* %19, align 1
  %20 = load i32, i32* @head, align 4
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* @QUEUESIZE, align 4
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %21, %23
  store i32 %24, i32* @head, align 4
  br label %25

25:                                               ; preds = %14, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
