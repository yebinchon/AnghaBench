; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pcb.c_machine_thread_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pcb.c_machine_thread_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@thread_max = common dso_local global i32 0, align 4
@THREAD_CHUNK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"x86_64 saved state\00", align 1
@iss_zone = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"x86_64 debug state\00", align 1
@ids_zone = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @machine_thread_init() #0 {
  %1 = load i32, i32* @thread_max, align 4
  %2 = sext i32 %1 to i64
  %3 = mul i64 %2, 4
  %4 = trunc i64 %3 to i32
  %5 = load i32, i32* @THREAD_CHUNK, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 4
  %8 = trunc i64 %7 to i32
  %9 = call i8* @zinit(i32 4, i32 %4, i32 %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** @iss_zone, align 8
  %10 = load i32, i32* @thread_max, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @THREAD_CHUNK, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i8* @zinit(i32 4, i32 %13, i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i8* %18, i8** @ids_zone, align 8
  %19 = call i32 (...) @fpu_module_init()
  ret void
}

declare dso_local i8* @zinit(i32, i32, i32, i8*) #1

declare dso_local i32 @fpu_module_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
