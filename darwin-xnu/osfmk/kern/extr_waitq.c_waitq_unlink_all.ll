; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_unlink_all.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_unlink_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i32 }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Invalid waitq: %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @waitq_unlink_all(%struct.waitq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.waitq*, align 8
  %4 = alloca i32, align 4
  store %struct.waitq* %0, %struct.waitq** %3, align 8
  %5 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.waitq*, %struct.waitq** %3, align 8
  %7 = call i32 @waitq_valid(%struct.waitq* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load %struct.waitq*, %struct.waitq** %3, align 8
  %11 = call i32 @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.waitq* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.waitq*, %struct.waitq** %3, align 8
  %14 = call i32 @waitq_irq_safe(%struct.waitq* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.waitq*, %struct.waitq** %3, align 8
  %20 = call i32 @waitq_lock(%struct.waitq* %19)
  %21 = load %struct.waitq*, %struct.waitq** %3, align 8
  %22 = call i32 @waitq_valid(%struct.waitq* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %12
  %25 = load %struct.waitq*, %struct.waitq** %3, align 8
  %26 = call i32 @waitq_unlock(%struct.waitq* %25)
  %27 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %27, i32* %2, align 4
  br label %32

28:                                               ; preds = %12
  %29 = load %struct.waitq*, %struct.waitq** %3, align 8
  %30 = call i32 @waitq_unlink_all_unlock(%struct.waitq* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @waitq_valid(%struct.waitq*) #1

declare dso_local i32 @panic(i8*, %struct.waitq*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitq_irq_safe(%struct.waitq*) #1

declare dso_local i32 @waitq_lock(%struct.waitq*) #1

declare dso_local i32 @waitq_unlock(%struct.waitq*) #1

declare dso_local i32 @waitq_unlink_all_unlock(%struct.waitq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
