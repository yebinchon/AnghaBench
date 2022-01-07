; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_paranoia.c_Characteristics.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_paranoia.c_Characteristics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Characteristics.chars = internal global [20 x i8*] [i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.18, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [58 x i8] c"Running this program should reveal these characteristics:\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"     Radix = 1, 2, 4, 8, 10, 16, 100, 256 ...\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"     Precision = number of significant digits carried.\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"     U2 = Radix/Radix^Precision = One Ulp\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"\09(OneUlpnit in the Last Place) of 1.000xxx .\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"     U1 = 1/Radix^Precision = One Ulp of numbers a little less than 1.0 .\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"     Adequacy of guard digits for Mult., Div. and Subt.\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"     Whether arithmetic is chopped, correctly rounded, or something else\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"\09for Mult., Div., Add/Subt. and Sqrt.\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"     Whether a Sticky Bit used correctly for rounding.\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"     UnderflowThreshold = an underflow threshold.\00", align 1
@.str.11 = private unnamed_addr constant [76 x i8] c"     E0 and PseudoZero tell whether underflow is abrupt, gradual, or fuzzy.\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"     V = an overflow threshold, roughly.\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"     V0  tells, roughly, whether  Infinity  is represented.\00", align 1
@.str.14 = private unnamed_addr constant [63 x i8] c"     Comparisions are checked for consistency with subtraction\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"\09and for contamination with pseudo-zeros.\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"     Sqrt is tested.  Y^X is not tested.\00", align 1
@.str.17 = private unnamed_addr constant [67 x i8] c"     Extra-precise subexpressions are revealed but NOT YET tested.\00", align 1
@.str.18 = private unnamed_addr constant [63 x i8] c"     Decimal-Binary conversion is NOT YET tested for accuracy.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Characteristics() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @msglist(i8** getelementptr inbounds ([20 x i8*], [20 x i8*]* @Characteristics.chars, i64 0, i64 0))
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
