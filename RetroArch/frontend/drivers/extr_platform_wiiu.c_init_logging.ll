; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_wiiu.c_init_logging.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_wiiu.c_init_logging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PC_DEVELOPMENT_TCP_PORT = common dso_local global i32 0, align 4
@dotab_stdout = common dso_local global i32 0, align 4
@devoptab_list = common dso_local global i32** null, align 8
@STD_OUT = common dso_local global i64 0, align 8
@STD_ERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_logging to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_logging() #0 {
  %1 = load i32, i32* @PC_DEVELOPMENT_TCP_PORT, align 4
  %2 = call i32 @wiiu_log_init(i32 %1)
  %3 = load i32**, i32*** @devoptab_list, align 8
  %4 = load i64, i64* @STD_OUT, align 8
  %5 = getelementptr inbounds i32*, i32** %3, i64 %4
  store i32* @dotab_stdout, i32** %5, align 8
  %6 = load i32**, i32*** @devoptab_list, align 8
  %7 = load i64, i64* @STD_ERR, align 8
  %8 = getelementptr inbounds i32*, i32** %6, i64 %7
  store i32* @dotab_stdout, i32** %8, align 8
  ret void
}

declare dso_local i32 @wiiu_log_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
