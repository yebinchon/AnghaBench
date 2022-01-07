; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_get_writing_buffer.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_get_writing_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eia608_screen = type { i32 }
%struct.s_write = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [74 x i8] c"Caption mode has an illegal value at get_writing_buffer(), this is a bug.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.eia608_screen* (%struct.s_write*)* @get_writing_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.eia608_screen* @get_writing_buffer(%struct.s_write* %0) #0 {
  %2 = alloca %struct.s_write*, align 8
  %3 = alloca %struct.eia608_screen*, align 8
  store %struct.s_write* %0, %struct.s_write** %2, align 8
  store %struct.eia608_screen* null, %struct.eia608_screen** %3, align 8
  %4 = load %struct.s_write*, %struct.s_write** %2, align 8
  %5 = getelementptr inbounds %struct.s_write, %struct.s_write* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %15 [
    i32 132, label %9
    i32 131, label %12
    i32 130, label %12
    i32 129, label %12
    i32 128, label %12
  ]

9:                                                ; preds = %1
  %10 = load %struct.s_write*, %struct.s_write** %2, align 8
  %11 = call %struct.eia608_screen* @get_current_hidden_buffer(%struct.s_write* %10)
  store %struct.eia608_screen* %11, %struct.eia608_screen** %3, align 8
  br label %17

12:                                               ; preds = %1, %1, %1, %1
  %13 = load %struct.s_write*, %struct.s_write** %2, align 8
  %14 = call %struct.eia608_screen* @get_current_visible_buffer(%struct.s_write* %13)
  store %struct.eia608_screen* %14, %struct.eia608_screen** %3, align 8
  br label %17

15:                                               ; preds = %1
  %16 = call i32 @hb_error(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %12, %9
  %18 = load %struct.eia608_screen*, %struct.eia608_screen** %3, align 8
  ret %struct.eia608_screen* %18
}

declare dso_local %struct.eia608_screen* @get_current_hidden_buffer(%struct.s_write*) #1

declare dso_local %struct.eia608_screen* @get_current_visible_buffer(%struct.s_write*) #1

declare dso_local i32 @hb_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
