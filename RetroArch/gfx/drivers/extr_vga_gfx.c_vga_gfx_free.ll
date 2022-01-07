; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vga_gfx.c_vga_gfx_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vga_gfx.c_vga_gfx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vga_frame = common dso_local global i32* null, align 8
@vga_menu_frame = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vga_gfx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_gfx_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i32*, i32** @vga_frame, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32*, i32** @vga_frame, align 8
  %8 = call i32 @free(i32* %7)
  store i32* null, i32** @vga_frame, align 8
  br label %9

9:                                                ; preds = %6, %1
  %10 = load i32*, i32** @vga_menu_frame, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32*, i32** @vga_menu_frame, align 8
  %14 = call i32 @free(i32* %13)
  store i32* null, i32** @vga_menu_frame, align 8
  br label %15

15:                                               ; preds = %12, %9
  %16 = call i32 (...) @vga_return_to_text_mode()
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @vga_return_to_text_mode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
