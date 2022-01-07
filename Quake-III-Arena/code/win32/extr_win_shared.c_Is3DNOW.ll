; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_shared.c_Is3DNOW.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_shared.c_Is3DNOW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @Is3DNOW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Is3DNOW() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [4 x i32], align 16
  %3 = alloca [16 x i8], align 16
  %4 = alloca [13 x i8], align 1
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %6 = bitcast i8* %5 to i32*
  %7 = call i32 @CPUID(i32 0, i32* %6)
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 4
  %9 = load i8, i8* %8, align 4
  %10 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 0
  store i8 %9, i8* %10, align 1
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 5
  %12 = load i8, i8* %11, align 1
  %13 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 1
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 6
  %15 = load i8, i8* %14, align 2
  %16 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 2
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 7
  %18 = load i8, i8* %17, align 1
  %19 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 3
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 12
  %21 = load i8, i8* %20, align 4
  %22 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 4
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 13
  %24 = load i8, i8* %23, align 1
  %25 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 5
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 14
  %27 = load i8, i8* %26, align 2
  %28 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 6
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 15
  %30 = load i8, i8* %29, align 1
  %31 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 7
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 8
  %33 = load i8, i8* %32, align 8
  %34 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 8
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 9
  %36 = load i8, i8* %35, align 1
  %37 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 9
  store i8 %36, i8* %37, align 1
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 10
  %39 = load i8, i8* %38, align 2
  %40 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 10
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 11
  %42 = load i8, i8* %41, align 1
  %43 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 11
  store i8 %42, i8* %43, align 1
  %44 = getelementptr inbounds [13 x i8], [13 x i8]* %4, i64 0, i64 12
  store i8 0, i8* %44, align 1
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %46 = call i32 @CPUID(i32 -2147483648, i32* %45)
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %48 = load i32, i32* %47, align 16
  %49 = icmp ult i32 %48, -2147483648
  br i1 %49, label %50, label %52

50:                                               ; preds = %0
  %51 = load i32, i32* @qfalse, align 4
  store i32 %51, i32* %1, align 4
  br label %63

52:                                               ; preds = %0
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %54 = call i32 @CPUID(i32 -2147483647, i32* %53)
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, -2147483648
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @qtrue, align 4
  store i32 %60, i32* %1, align 4
  br label %63

61:                                               ; preds = %52
  %62 = load i32, i32* @qfalse, align 4
  store i32 %62, i32* %1, align 4
  br label %63

63:                                               ; preds = %61, %59, %50
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local i32 @CPUID(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
