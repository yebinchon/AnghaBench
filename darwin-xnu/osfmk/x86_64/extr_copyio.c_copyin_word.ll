; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_copyio.c_copyin_word.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_copyio.c_copyin_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@COPYINWORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copyin_word(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 4
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 8
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %4, align 4
  br label %31

15:                                               ; preds = %10, %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 1
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %31

23:                                               ; preds = %15
  %24 = load i32, i32* @COPYINWORD, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = ptrtoint i32* %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @copyio(i32 %24, i32 %25, i8* %28, i32 %29, i32* null, i32 0)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %23, %21, %13
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @copyio(i32, i32, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
