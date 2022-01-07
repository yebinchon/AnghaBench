; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours.c_UpdatePalette.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours.c_UpdatePalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@Colours_external = common dso_local global %struct.TYPE_2__* null, align 8
@Atari800_tv_mode = common dso_local global i64 0, align 8
@Atari800_TV_NTSC = common dso_local global i64 0, align 8
@Colours_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UpdatePalette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UpdatePalette() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Colours_external, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Colours_external, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = call i32 (...) @CopyExternalWithoutAdjustments()
  br label %23

12:                                               ; preds = %5, %0
  %13 = load i64, i64* @Atari800_tv_mode, align 8
  %14 = load i64, i64* @Atari800_TV_NTSC, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @Colours_table, align 4
  %18 = call i32 @COLOURS_NTSC_Update(i32 %17)
  br label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @Colours_table, align 4
  %21 = call i32 @COLOURS_PAL_Update(i32 %20)
  br label %22

22:                                               ; preds = %19, %16
  br label %23

23:                                               ; preds = %22, %10
  ret void
}

declare dso_local i32 @CopyExternalWithoutAdjustments(...) #1

declare dso_local i32 @COLOURS_NTSC_Update(i32) #1

declare dso_local i32 @COLOURS_PAL_Update(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
