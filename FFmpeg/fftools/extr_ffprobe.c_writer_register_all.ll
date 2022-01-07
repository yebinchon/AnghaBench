; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_writer_register_all.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_writer_register_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@writer_register_all.initialized = internal global i32 0, align 4
@default_writer = common dso_local global i32 0, align 4
@compact_writer = common dso_local global i32 0, align 4
@csv_writer = common dso_local global i32 0, align 4
@flat_writer = common dso_local global i32 0, align 4
@ini_writer = common dso_local global i32 0, align 4
@json_writer = common dso_local global i32 0, align 4
@xml_writer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @writer_register_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writer_register_all() #0 {
  %1 = load i32, i32* @writer_register_all.initialized, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %12

4:                                                ; preds = %0
  store i32 1, i32* @writer_register_all.initialized, align 4
  %5 = call i32 @writer_register(i32* @default_writer)
  %6 = call i32 @writer_register(i32* @compact_writer)
  %7 = call i32 @writer_register(i32* @csv_writer)
  %8 = call i32 @writer_register(i32* @flat_writer)
  %9 = call i32 @writer_register(i32* @ini_writer)
  %10 = call i32 @writer_register(i32* @json_writer)
  %11 = call i32 @writer_register(i32* @xml_writer)
  br label %12

12:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @writer_register(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
