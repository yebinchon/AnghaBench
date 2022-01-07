; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_falcon.c_set_colors.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_falcon.c_set_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reprogram_VIDEL = common dso_local global i64 0, align 8
@f030coltable = common dso_local global i32 0, align 4
@f030_coltable_ptr = common dso_local global i32 0, align 4
@f030coltable_backup = common dso_local global i32 0, align 4
@set_colors_on_f030 = common dso_local global i32 0, align 4
@gl_vdi_handle = common dso_local global i32 0, align 4
@coltable = common dso_local global i32* null, align 8
@coltable_backup = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_colors(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @reprogram_VIDEL, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = load i32, i32* @f030coltable, align 4
  store i32 %10, i32* @f030_coltable_ptr, align 4
  br label %13

11:                                               ; preds = %6
  %12 = load i32, i32* @f030coltable_backup, align 4
  store i32 %12, i32* @f030_coltable_ptr, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = load i32, i32* @set_colors_on_f030, align 4
  %15 = call i32 @Supexec(i32 %14)
  br label %44

16:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %40, %16
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 256
  br i1 %19, label %20, label %43

20:                                               ; preds = %17
  %21 = load i32, i32* @gl_vdi_handle, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32*, i32** @coltable, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  br label %37

31:                                               ; preds = %20
  %32 = load i32*, i32** @coltable_backup, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  br label %37

37:                                               ; preds = %31, %25
  %38 = phi i32 [ %30, %25 ], [ %36, %31 ]
  %39 = call i32 @vs_color(i32 %21, i32 %22, i32 %38)
  br label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %17

43:                                               ; preds = %17
  br label %44

44:                                               ; preds = %43, %13
  ret void
}

declare dso_local i32 @Supexec(i32) #1

declare dso_local i32 @vs_color(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
