; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiIsEnterpriseFunctionsRestrictedOnOpenSource.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiIsEnterpriseFunctionsRestrictedOnOpenSource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"JP\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"CN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SiIsEnterpriseFunctionsRestrictedOnOpenSource(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [128 x i8], align 16
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %12 = call i32 @SiGetCurrentRegion(i32* %10, i8* %11, i32 128)
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %14 = call i64 @StrCmpi(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %18 = call i64 @StrCmpi(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %9
  store i32 1, i32* %5, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %8
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @SiGetCurrentRegion(i32*, i8*, i32) #1

declare dso_local i64 @StrCmpi(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
