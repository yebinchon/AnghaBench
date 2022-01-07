; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_erase_memory.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_erase_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_write = type { i32 }
%struct.eia608_screen = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @erase_memory(%struct.s_write* %0, i32 %1) #0 {
  %3 = alloca %struct.s_write*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.eia608_screen*, align 8
  store %struct.s_write* %0, %struct.s_write** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.s_write*, %struct.s_write** %3, align 8
  %10 = call %struct.eia608_screen* @get_current_visible_buffer(%struct.s_write* %9)
  store %struct.eia608_screen* %10, %struct.eia608_screen** %5, align 8
  br label %14

11:                                               ; preds = %2
  %12 = load %struct.s_write*, %struct.s_write** %3, align 8
  %13 = call %struct.eia608_screen* @get_current_hidden_buffer(%struct.s_write* %12)
  store %struct.eia608_screen* %13, %struct.eia608_screen** %5, align 8
  br label %14

14:                                               ; preds = %11, %8
  %15 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %16 = call i32 @clear_eia608_cc_buffer(%struct.eia608_screen* %15)
  ret void
}

declare dso_local %struct.eia608_screen* @get_current_visible_buffer(%struct.s_write*) #1

declare dso_local %struct.eia608_screen* @get_current_hidden_buffer(%struct.s_write*) #1

declare dso_local i32 @clear_eia608_cc_buffer(%struct.eia608_screen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
