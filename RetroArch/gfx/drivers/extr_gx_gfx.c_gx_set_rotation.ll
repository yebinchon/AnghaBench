; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gx_gfx.c_gx_set_rotation.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_gx_gfx.c_gx_set_rotation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@g_orientation = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @gx_set_rotation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gx_set_rotation(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %5, align 8
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* @g_orientation, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
