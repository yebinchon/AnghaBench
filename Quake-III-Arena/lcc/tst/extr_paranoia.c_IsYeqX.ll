; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_paranoia.c_IsYeqX.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_paranoia.c_IsYeqX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Y = common dso_local global i64 0, align 8
@X = common dso_local global i64 0, align 8
@N = common dso_local global i64 0, align 8
@Z = common dso_local global i64 0, align 8
@Zero = common dso_local global i64 0, align 8
@Q = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"WARNING:  computing\0A\00", align 1
@Defect = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"computing\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"\09(%.17e) ^ (%.17e)\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"\09yielded %.17e;\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"\09which compared unequal to correct %.17e ;\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"\09\09they differ by %.17e .\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsYeqX() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @Y, align 8
  %3 = load i64, i64* @X, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %36

5:                                                ; preds = %0
  %6 = load i64, i64* @N, align 8
  %7 = icmp sle i64 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %5
  %9 = load i64, i64* @Z, align 8
  %10 = load i64, i64* @Zero, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i64, i64* @Q, align 8
  %14 = load i64, i64* @Zero, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %21

18:                                               ; preds = %12, %8
  %19 = load i32, i32* @Defect, align 4
  %20 = call i32 @BadCond(i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %16
  %22 = load i64, i64* @Z, align 8
  %23 = load i64, i64* @Q, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %22, i64 %23)
  %25 = load i64, i64* @Y, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %25)
  %27 = load i64, i64* @X, align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 %27)
  %29 = load i64, i64* @Y, align 8
  %30 = load i64, i64* @X, align 8
  %31 = sub nsw i64 %29, %30
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %31)
  br label %33

33:                                               ; preds = %21, %5
  %34 = load i64, i64* @N, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* @N, align 8
  br label %36

36:                                               ; preds = %33, %0
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @BadCond(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
