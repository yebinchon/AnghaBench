; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_paranoia.c_Heading.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_paranoia.c_Heading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Heading.head = internal global [15 x i8*] [i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [68 x i8] c"Users are invited to help debug and augment this program so it will\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"cope with unanticipated and newly uncovered arithmetic pathologies.\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Please send suggestions and interesting results to\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"\09Richard Karpinski\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"\09Computer Center U-76\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"\09University of California\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"\09San Francisco, CA 94143-0704, USA\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"In doing so, please include the following information:\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"\09Precision:\09double;\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"\09Version:\0910 February 1989;\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"\09Computer:\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"\09Compiler:\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"\09Optimization level:\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"\09Other relevant compiler options:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Heading() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @msglist(i8** getelementptr inbounds ([15 x i8*], [15 x i8*]* @Heading.head, i64 0, i64 0))
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
