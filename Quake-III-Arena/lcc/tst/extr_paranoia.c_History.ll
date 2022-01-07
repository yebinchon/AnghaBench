; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_paranoia.c_History.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_paranoia.c_History.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@History.hist = internal global [18 x i8*] [i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [43 x i8] c"The program attempts to discriminate among\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"   FLAWs, like lack of a sticky bit,\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"   Serious DEFECTs, like lack of a guard digit, and\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"   FAILUREs, like 2+2 == 5 .\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Failures may confound subsequent diagnoses.\0A\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"The diagnostic capabilities of this program go beyond an earlier\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"program called `MACHAR', which can be found at the end of the\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"book  `Software Manual for the Elementary Functions' (1980) by\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"W. J. Cody and W. Waite. Although both programs try to discover\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"the Radix, Precision and range (over/underflow thresholds)\00", align 1
@.str.10 = private unnamed_addr constant [67 x i8] c"of the arithmetic, this program tries to cope with a wider variety\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"of pathologies, and to say how well the arithmetic is implemented.\00", align 1
@.str.12 = private unnamed_addr constant [67 x i8] c"\0AThe program is based upon a conventional radix representation for\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"floating-point numbers, but also allows logarithmic encoding\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"as used by certain early WANG machines.\0A\00", align 1
@.str.15 = private unnamed_addr constant [61 x i8] c"BASIC version of this program (C) 1983 by Prof. W. M. Kahan;\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"see source comments for more history.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @History() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @msglist(i8** getelementptr inbounds ([18 x i8*], [18 x i8*]* @History.hist, i64 0, i64 0))
  %3 = load i32, i32* %1, align 4
  ret i32 %3
}

declare dso_local i32 @msglist(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
