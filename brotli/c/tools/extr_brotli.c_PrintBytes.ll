; ModuleID = '/home/carl/AnghaBench/brotli/c/tools/extr_brotli.c_PrintBytes.c'
source_filename = "/home/carl/AnghaBench/brotli/c/tools/extr_brotli.c_PrintBytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%d B\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%0.3f KiB\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%0.3f MiB\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%0.3f GiB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @PrintBytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PrintBytes(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ult i64 %3, 1024
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load i32, i32* @stderr, align 4
  %7 = load i64, i64* %2, align 8
  %8 = trunc i64 %7 to i32
  %9 = sitofp i32 %8 to double
  %10 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), double %9)
  br label %37

11:                                               ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = icmp ult i64 %12, 1048576
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32, i32* @stderr, align 4
  %16 = load i64, i64* %2, align 8
  %17 = uitofp i64 %16 to double
  %18 = fdiv double %17, 1.024000e+03
  %19 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), double %18)
  br label %36

20:                                               ; preds = %11
  %21 = load i64, i64* %2, align 8
  %22 = icmp ult i64 %21, 1073741824
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* @stderr, align 4
  %25 = load i64, i64* %2, align 8
  %26 = uitofp i64 %25 to double
  %27 = fdiv double %26, 0x4130000000000000
  %28 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), double %27)
  br label %35

29:                                               ; preds = %20
  %30 = load i32, i32* @stderr, align 4
  %31 = load i64, i64* %2, align 8
  %32 = uitofp i64 %31 to double
  %33 = fdiv double %32, 0x41D0000000000000
  %34 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), double %33)
  br label %35

35:                                               ; preds = %29, %23
  br label %36

36:                                               ; preds = %35, %14
  br label %37

37:                                               ; preds = %36, %5
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
