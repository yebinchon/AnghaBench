; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_flipc.c_flipc_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_flipc.c_flipc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ipc_port_max = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"flipc ports\00", align 1
@flipc_port_zone = common dso_local global i32 0, align 4
@Z_CALLERACCT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@Z_NOENCRYPT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flipc_init() #0 {
  %1 = load i32, i32* @ipc_port_max, align 4
  %2 = ashr i32 %1, 4
  %3 = sext i32 %2 to i64
  %4 = mul i64 %3, 4
  %5 = trunc i64 %4 to i32
  %6 = call i32 @zinit(i32 4, i32 %5, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* @flipc_port_zone, align 4
  %7 = load i32, i32* @flipc_port_zone, align 4
  %8 = load i32, i32* @Z_CALLERACCT, align 4
  %9 = load i32, i32* @FALSE, align 4
  %10 = call i32 @zone_change(i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* @flipc_port_zone, align 4
  %12 = load i32, i32* @Z_NOENCRYPT, align 4
  %13 = load i32, i32* @TRUE, align 4
  %14 = call i32 @zone_change(i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* @KERN_SUCCESS, align 4
  ret i32 %15
}

declare dso_local i32 @zinit(i32, i32, i32, i8*) #1

declare dso_local i32 @zone_change(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
