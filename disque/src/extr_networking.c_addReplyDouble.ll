; ModuleID = '/home/carl/AnghaBench/disque/src/extr_networking.c_addReplyDouble.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_networking.c_addReplyDouble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-inf\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%.17g\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"$%d\0D\0A%s\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addReplyDouble(i32* %0, double %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca [128 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store double %1, double* %4, align 8
  %9 = load double, double* %4, align 8
  %10 = call i64 @isinf(double %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = load double, double* %4, align 8
  %15 = fcmp ogt double %14, 0.000000e+00
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  %18 = call i32 @addReplyBulkCString(i32* %13, i8* %17)
  br label %32

19:                                               ; preds = %2
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %21 = load double, double* %4, align 8
  %22 = fptosi double %21 to i32
  %23 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %20, i32 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %25 = load i32, i32* %7, align 4
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %27 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %24, i32 128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %25, i8* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @addReplyString(i32* %28, i8* %29, i32 %30)
  br label %32

32:                                               ; preds = %19, %12
  ret void
}

declare dso_local i64 @isinf(double) #1

declare dso_local i32 @addReplyBulkCString(i32*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @addReplyString(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
