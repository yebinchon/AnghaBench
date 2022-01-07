; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_utils.c_sdpu_get_len_from_type.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_utils.c_sdpu_get_len_from_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sdpu_get_len_from_type(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, 7
  switch i32 %11, label %40 [
    i32 130, label %12
    i32 128, label %14
    i32 134, label %16
    i32 135, label %18
    i32 129, label %20
    i32 133, label %22
    i32 131, label %28
    i32 132, label %34
  ]

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  store i32 1, i32* %13, align 4
  br label %40

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  store i32 2, i32* %15, align 4
  br label %40

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  store i32 4, i32* %17, align 4
  br label %40

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  store i32 8, i32* %19, align 4
  br label %40

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  store i32 16, i32* %21, align 4
  br label %40

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @BE_STREAM_TO_UINT8(i32 %23, i32* %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  br label %40

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @BE_STREAM_TO_UINT16(i32 %29, i32* %30)
  %32 = load i32, i32* %8, align 4
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  br label %40

34:                                               ; preds = %3
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @BE_STREAM_TO_UINT32(i32 %35, i32* %36)
  %38 = load i32, i32* %9, align 4
  %39 = load i32*, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %3, %34, %28, %22, %20, %18, %16, %14, %12
  %41 = load i32*, i32** %4, align 8
  ret i32* %41
}

declare dso_local i32 @BE_STREAM_TO_UINT8(i32, i32*) #1

declare dso_local i32 @BE_STREAM_TO_UINT16(i32, i32*) #1

declare dso_local i32 @BE_STREAM_TO_UINT32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
