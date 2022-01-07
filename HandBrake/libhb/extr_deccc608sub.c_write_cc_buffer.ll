; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_write_cc_buffer.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_write_cc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_write = type { i32 }
%struct.eia608_screen = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s_write*)* @write_cc_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_cc_buffer(%struct.s_write* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s_write*, align 8
  %4 = alloca %struct.eia608_screen*, align 8
  %5 = alloca i32, align 4
  store %struct.s_write* %0, %struct.s_write** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.s_write*, %struct.s_write** %3, align 8
  %7 = call %struct.eia608_screen* @get_current_visible_buffer(%struct.s_write* %6)
  store %struct.eia608_screen* %7, %struct.eia608_screen** %4, align 8
  %8 = load %struct.eia608_screen*, %struct.eia608_screen** %4, align 8
  %9 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

13:                                               ; preds = %1
  %14 = load %struct.s_write*, %struct.s_write** %3, align 8
  %15 = getelementptr inbounds %struct.s_write, %struct.s_write* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.eia608_screen*, %struct.eia608_screen** %4, align 8
  %17 = load %struct.s_write*, %struct.s_write** %3, align 8
  %18 = call i32 @write_cc_buffer_as_ssa(%struct.eia608_screen* %16, %struct.s_write* %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.eia608_screen*, %struct.eia608_screen** %4, align 8
  %20 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %13, %12
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.eia608_screen* @get_current_visible_buffer(%struct.s_write*) #1

declare dso_local i32 @write_cc_buffer_as_ssa(%struct.eia608_screen*, %struct.s_write*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
