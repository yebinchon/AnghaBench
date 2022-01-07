; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_menu_input_st_hex_cb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_menu_input_st_hex_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @menu_input_st_hex_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_input_st_hex_cb(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %43

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %10
  %16 = call i8* (...) @menu_input_dialog_get_label_setting_buffer()
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32* @menu_setting_find(i8* %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %15
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @setting_get_ptr(i32* %22)
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %7, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 35
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %4, align 8
  br label %33

33:                                               ; preds = %30, %21
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 @strtoul(i8* %37, i32* null, i32 16)
  %39 = trunc i64 %38 to i32
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %36, %33
  br label %42

42:                                               ; preds = %41, %15
  br label %43

43:                                               ; preds = %42, %10, %2
  %44 = call i32 (...) @menu_input_dialog_end()
  ret void
}

declare dso_local i8* @menu_input_dialog_get_label_setting_buffer(...) #1

declare dso_local i32* @menu_setting_find(i8*) #1

declare dso_local i64 @setting_get_ptr(i32*) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @menu_input_dialog_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
