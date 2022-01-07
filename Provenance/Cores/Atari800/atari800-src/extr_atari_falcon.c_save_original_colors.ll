; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_falcon.c_save_original_colors.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_falcon.c_save_original_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reprogram_VIDEL = common dso_local global i64 0, align 8
@f030coltable_backup = common dso_local global i32 0, align 4
@f030_coltable_ptr = common dso_local global i32 0, align 4
@get_colors_on_f030 = common dso_local global i32 0, align 4
@gl_vdi_handle = common dso_local global i32 0, align 4
@coltable_backup = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_original_colors() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @reprogram_VIDEL, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i32, i32* @f030coltable_backup, align 4
  store i32 %5, i32* @f030_coltable_ptr, align 4
  %6 = load i32, i32* @get_colors_on_f030, align 4
  %7 = call i32 @Supexec(i32 %6)
  br label %25

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %21, %8
  %10 = load i32, i32* %1, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load i32, i32* @gl_vdi_handle, align 4
  %14 = load i32, i32* %1, align 4
  %15 = load i32*, i32** @coltable_backup, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @vq_color(i32 %13, i32 %14, i32 1, i32 %19)
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %1, align 4
  br label %9

24:                                               ; preds = %9
  br label %25

25:                                               ; preds = %24, %4
  ret void
}

declare dso_local i32 @Supexec(i32) #1

declare dso_local i32 @vq_color(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
