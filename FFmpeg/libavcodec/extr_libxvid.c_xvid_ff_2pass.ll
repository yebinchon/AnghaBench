; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libxvid.c_xvid_ff_2pass.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libxvid.c_xvid_ff_2pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XVID_ERR_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8*)* @xvid_ff_2pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xvid_ff_2pass(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %28 [
    i32 128, label %11
    i32 129, label %11
    i32 132, label %12
    i32 131, label %16
    i32 133, label %20
    i32 130, label %24
  ]

11:                                               ; preds = %4, %4
  store i32 0, i32* %5, align 4
  br label %30

12:                                               ; preds = %4
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @xvid_ff_2pass_before(i8* %13, i8* %14)
  store i32 %15, i32* %5, align 4
  br label %30

16:                                               ; preds = %4
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @xvid_ff_2pass_create(i8* %17, i8* %18)
  store i32 %19, i32* %5, align 4
  br label %30

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @xvid_ff_2pass_after(i8* %21, i8* %22)
  store i32 %23, i32* %5, align 4
  br label %30

24:                                               ; preds = %4
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @xvid_ff_2pass_destroy(i8* %25, i8* %26)
  store i32 %27, i32* %5, align 4
  br label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @XVID_ERR_FAIL, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %28, %24, %20, %16, %12, %11
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @xvid_ff_2pass_before(i8*, i8*) #1

declare dso_local i32 @xvid_ff_2pass_create(i8*, i8*) #1

declare dso_local i32 @xvid_ff_2pass_after(i8*, i8*) #1

declare dso_local i32 @xvid_ff_2pass_destroy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
