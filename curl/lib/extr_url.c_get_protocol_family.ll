; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_get_protocol_family.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_get_protocol_family.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_protocol_family to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_protocol_family(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %24 [
    i32 150, label %5
    i32 149, label %5
    i32 153, label %6
    i32 152, label %6
    i32 135, label %7
    i32 134, label %8
    i32 129, label %9
    i32 146, label %10
    i32 145, label %10
    i32 155, label %11
    i32 154, label %12
    i32 128, label %13
    i32 148, label %14
    i32 147, label %14
    i32 144, label %15
    i32 143, label %15
    i32 131, label %16
    i32 130, label %16
    i32 136, label %17
    i32 142, label %18
    i32 140, label %18
    i32 139, label %19
    i32 137, label %19
    i32 141, label %20
    i32 138, label %21
    i32 151, label %22
    i32 133, label %23
    i32 132, label %23
  ]

5:                                                ; preds = %1, %1
  store i32 150, i32* %3, align 4
  br label %25

6:                                                ; preds = %1, %1
  store i32 153, i32* %3, align 4
  br label %25

7:                                                ; preds = %1
  store i32 135, i32* %3, align 4
  br label %25

8:                                                ; preds = %1
  store i32 134, i32* %3, align 4
  br label %25

9:                                                ; preds = %1
  store i32 129, i32* %3, align 4
  br label %25

10:                                               ; preds = %1, %1
  store i32 146, i32* %3, align 4
  br label %25

11:                                               ; preds = %1
  store i32 155, i32* %3, align 4
  br label %25

12:                                               ; preds = %1
  store i32 154, i32* %3, align 4
  br label %25

13:                                               ; preds = %1
  store i32 128, i32* %3, align 4
  br label %25

14:                                               ; preds = %1, %1
  store i32 148, i32* %3, align 4
  br label %25

15:                                               ; preds = %1, %1
  store i32 144, i32* %3, align 4
  br label %25

16:                                               ; preds = %1, %1
  store i32 131, i32* %3, align 4
  br label %25

17:                                               ; preds = %1
  store i32 136, i32* %3, align 4
  br label %25

18:                                               ; preds = %1, %1
  store i32 142, i32* %3, align 4
  br label %25

19:                                               ; preds = %1, %1
  store i32 139, i32* %3, align 4
  br label %25

20:                                               ; preds = %1
  store i32 141, i32* %3, align 4
  br label %25

21:                                               ; preds = %1
  store i32 138, i32* %3, align 4
  br label %25

22:                                               ; preds = %1
  store i32 151, i32* %3, align 4
  br label %25

23:                                               ; preds = %1, %1
  store i32 133, i32* %3, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
