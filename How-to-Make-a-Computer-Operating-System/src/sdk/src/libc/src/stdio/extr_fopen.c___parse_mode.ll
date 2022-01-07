; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdio/extr_fopen.c___parse_mode.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdio/extr_fopen.c___parse_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__parse_mode(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %33, %1
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  switch i32 %7, label %32 [
    i32 0, label %8
    i32 98, label %10
    i32 114, label %11
    i32 119, label %13
    i32 97, label %19
    i32 43, label %25
  ]

8:                                                ; preds = %4
  %9 = load i32, i32* %3, align 4
  ret i32 %9

10:                                               ; preds = %4
  br label %33

11:                                               ; preds = %4
  %12 = load i32, i32* @O_RDONLY, align 4
  store i32 %12, i32* %3, align 4
  br label %33

13:                                               ; preds = %4
  %14 = load i32, i32* @O_WRONLY, align 4
  %15 = load i32, i32* @O_CREAT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @O_TRUNC, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %3, align 4
  br label %33

19:                                               ; preds = %4
  %20 = load i32, i32* @O_WRONLY, align 4
  %21 = load i32, i32* @O_CREAT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @O_APPEND, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %3, align 4
  br label %33

25:                                               ; preds = %4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @O_WRONLY, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load i32, i32* @O_RDWR, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %4
  br label %33

33:                                               ; preds = %32, %25, %19, %13, %11, %10
  %34 = load i8*, i8** %2, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %2, align 8
  br label %4
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
