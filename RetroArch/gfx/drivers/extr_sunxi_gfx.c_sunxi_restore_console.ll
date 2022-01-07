; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sunxi_gfx.c_sunxi_restore_console.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sunxi_gfx.c_sunxi_restore_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_video = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"setterm -cursor on\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sunxi_video*)* @sunxi_restore_console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_restore_console(%struct.sunxi_video* %0) #0 {
  %2 = alloca %struct.sunxi_video*, align 8
  store %struct.sunxi_video* %0, %struct.sunxi_video** %2, align 8
  %3 = load %struct.sunxi_video*, %struct.sunxi_video** %2, align 8
  %4 = icmp ne %struct.sunxi_video* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %26

6:                                                ; preds = %1
  %7 = call i32 @system(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.sunxi_video*, %struct.sunxi_video** %2, align 8
  %9 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = load %struct.sunxi_video*, %struct.sunxi_video** %2, align 8
  %15 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.sunxi_video*, %struct.sunxi_video** %2, align 8
  %19 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @memcpy(i8* %13, i8* %17, i32 %20)
  %22 = load %struct.sunxi_video*, %struct.sunxi_video** %2, align 8
  %23 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @free(i64 %24)
  br label %26

26:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
