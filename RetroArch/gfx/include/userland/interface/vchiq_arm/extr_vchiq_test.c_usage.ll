; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vchiq_arm/extr_vchiq_test.c_usage.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vchiq_arm/extr_vchiq_test.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"Usage: vchiq_test [<options>] <mode> <iters>\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"  where <options> is any of:\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"    -a <c> <s>  set the client and server bulk alignment (modulo 32)\0A\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"    -A <c> <s>  set the client and server bulk alignment (modulo 4096)\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"    -e          disable echoing in the main bulk transfer mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"    -k <n>      skip the first <n> func data tests\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"    -m <n>      set the client message quota to <n>\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"    -M <n>      set the server message quota to <n>\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"    -q          disable data verification\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"    -s ????     service (any 4 characters)\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"    -v          enable more verbose output\0A\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"    -r <b> <s>  reserve <b> bytes for <s> seconds\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"    -K <t>      send a SIGKILL after <t> ms\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"  and <mode> is one of:\0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"    -c <size>   control test (size in bytes)\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"    -b <size>   bulk test (size in kilobytes)\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"    -f          functional test\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"    -p          ping test\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"    -t          check the timer\0A\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"  and <iters> is the number of test iterations\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0))
  %5 = call i32 @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  %6 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %7 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  %8 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  %9 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  %10 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  %11 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0))
  %12 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0))
  %13 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0))
  %14 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  %15 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0))
  %16 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0))
  %17 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  %18 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0))
  %19 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0))
  %20 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i64 0, i64 0))
  %21 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
