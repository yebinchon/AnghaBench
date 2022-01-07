; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_show_help.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_show_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [481 x i8] c"CONT                           - Continue emulation\0ASHOW                           - Show registers\0ASTACK                          - Show stack\0ASET{PC,A,X,Y,S} hexval         - Set register value\0ASET{N,V,D,I,Z,C} 0 or 1        - Set flag value\0AC startaddr hexval...          - Change memory\0AD [startaddr]                  - Disassemble memory\0AF startaddr endaddr hexval     - Fill memory\0AM [startaddr]                  - Memory list\0AS startaddr endaddr hexval...  - Search memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [471 x i8] c"LOOP [inneraddr]               - Disassemble a loop that contains inneraddr\0ARAM startaddr endaddr          - Convert memory block into RAM\0AROM startaddr endaddr          - Convert memory block into ROM\0AHARDWARE startaddr endaddr     - Convert memory block into HARDWARE\0AREAD filename startaddr nbytes - Read file into memory\0AWRITE startaddr endaddr [file] - Write memory block to a file (memdump.dat)\0ASUM startaddr endaddr          - Print sum of specified memory range\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"BLINE [1000+ypos]              - Blink scanline (8<=ypos<=247)\0A\00", align 1
@.str.3 = private unnamed_addr constant [112 x i8] c"ANTIC, GTIA, PIA, POKEY        - Display hardware registers\0ADLIST [startaddr]              - Show Display List\0A\00", align 1
@.str.4 = private unnamed_addr constant [357 x i8] c"TSS [value]                    - Start trainer search\0ATSC [value]                    - Perform when trainer value has changed\0ATSN [value]                    - Perform when trainer value has NOT changed\0A                                 Without [value], perform a deep trainer search\0ATSP [count]                    - Print [count] possible trainer addresses\0A\00", align 1
@.str.5 = private unnamed_addr constant [159 x i8] c"COLDSTART, WARMSTART           - Perform system coldstart/warmstart\0AQUIT or EXIT                   - Quit emulator\0AHELP or ?                      - This text\0A\00", align 1
@CPU_REMEMBER_JMP_STEPS = common dso_local global i32 0, align 4
@CPU_REMEMBER_PC_STEPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @show_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_help() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([481 x i8], [481 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([471 x i8], [471 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.3, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([357 x i8], [357 x i8]* @.str.4, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
