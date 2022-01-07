; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_subtitle_list_copy.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_subtitle_list_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hb_subtitle_list_copy(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = call i32* (...) @hb_list_init()
  store i32* %6, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %26, %9
  %11 = load i32, i32* %5, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @hb_list_count(i32* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %10
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32* @hb_list_item(i32* %16, i32 %17)
  store i32* %18, i32** %4, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @hb_subtitle_copy(i32* %22)
  %24 = call i32 @hb_list_add(i32* %21, i32 %23)
  br label %25

25:                                               ; preds = %20, %15
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %10

29:                                               ; preds = %10
  br label %30

30:                                               ; preds = %29, %1
  %31 = load i32*, i32** %3, align 8
  ret i32* %31
}

declare dso_local i32* @hb_list_init(...) #1

declare dso_local i32 @hb_list_count(i32*) #1

declare dso_local i32* @hb_list_item(i32*, i32) #1

declare dso_local i32 @hb_list_add(i32*, i32) #1

declare dso_local i32 @hb_subtitle_copy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
