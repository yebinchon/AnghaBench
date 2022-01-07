; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/display_servers/extr_dispserv_win32.c_win32_display_server_get_screen_orientation.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/display_servers/extr_dispserv_win32.c_win32_display_server_get_screen_orientation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ORIENTATION_NORMAL = common dso_local global i32 0, align 4
@ORIENTATION_FLIPPED_ROTATED = common dso_local global i32 0, align 4
@ORIENTATION_FLIPPED = common dso_local global i32 0, align 4
@ORIENTATION_VERTICAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @win32_display_server_get_screen_orientation() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca i32, align 4
  %3 = bitcast %struct.TYPE_3__* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 8, i1 false)
  %4 = call i32 @win32_get_video_output(%struct.TYPE_3__* %1, i32 -1, i32 8)
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %8 [
    i32 128, label %7
    i32 129, label %10
    i32 131, label %12
    i32 130, label %14
  ]

7:                                                ; preds = %0
  br label %8

8:                                                ; preds = %0, %7
  %9 = load i32, i32* @ORIENTATION_NORMAL, align 4
  store i32 %9, i32* %2, align 4
  br label %16

10:                                               ; preds = %0
  %11 = load i32, i32* @ORIENTATION_FLIPPED_ROTATED, align 4
  store i32 %11, i32* %2, align 4
  br label %16

12:                                               ; preds = %0
  %13 = load i32, i32* @ORIENTATION_FLIPPED, align 4
  store i32 %13, i32* %2, align 4
  br label %16

14:                                               ; preds = %0
  %15 = load i32, i32* @ORIENTATION_VERTICAL, align 4
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %14, %12, %10, %8
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @win32_get_video_output(%struct.TYPE_3__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
