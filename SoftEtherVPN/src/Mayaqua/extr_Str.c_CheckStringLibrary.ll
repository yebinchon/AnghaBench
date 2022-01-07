; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_CheckStringLibrary.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_CheckStringLibrary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i32] [i32 84, i32 69, i32 83, i32 84, i32 95, i32 84, i32 69, i32 83, i32 84, i32 95, i32 49, i32 50, i32 51, i32 95, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 0], align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"TEST\00", align 1
@.str.2 = private unnamed_addr constant [5 x i32] [i32 84, i32 69, i32 83, i32 84, i32 0], align 4
@.str.3 = private unnamed_addr constant [15 x i32] [i32 37, i32 83, i32 95, i32 37, i32 115, i32 95, i32 37, i32 117, i32 95, i32 37, i32 73, i32 54, i32 52, i32 117, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckStringLibrary() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* bitcast ([30 x i32]* @.str to i8*), i8** %2, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  store i8* bitcast ([5 x i32]* @.str.2 to i8*), i8** %4, align 8
  store i32 123, i32* %6, align 4
  store i64 123456789012345, i64* %7, align 8
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @UniFormat(i8* %8, i32 64, i8* bitcast ([15 x i32]* @.str.3 to i8*), i8* %9, i8* %10, i32 %11, i64 %12)
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %15 = load i8*, i8** %2, align 8
  %16 = call i64 @UniStrCmpi(i8* %14, i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %20

19:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i32 @UniFormat(i8*, i32, i8*, i8*, i8*, i32, i64) #1

declare dso_local i64 @UniStrCmpi(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
