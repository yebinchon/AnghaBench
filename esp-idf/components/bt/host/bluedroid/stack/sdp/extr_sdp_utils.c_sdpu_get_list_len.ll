; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_utils.c_sdpu_get_list_len.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_utils.c_sdpu_get_list_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdpu_get_list_len(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32* @sdp_db_service_search(i32* null, i32* %8)
  store i32* %9, i32** %5, align 8
  br label %10

10:                                               ; preds = %29, %2
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 3
  store i32 %15, i32* %6, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @sdpu_get_attrib_seq_len(i32* %16, i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %6, align 4
  br label %28

25:                                               ; preds = %13
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 3
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %25, %21
  br label %29

29:                                               ; preds = %28
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i32* @sdp_db_service_search(i32* %30, i32* %31)
  store i32* %32, i32** %5, align 8
  br label %10

33:                                               ; preds = %10
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32* @sdp_db_service_search(i32*, i32*) #1

declare dso_local i32 @sdpu_get_attrib_seq_len(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
