; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_int.c_testmain.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_int.c_testmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"long\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testmain() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = call i32 @print(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i16 10, i16* %1, align 2
  store i16 15, i16* %2, align 2
  %6 = load i16, i16* %1, align 2
  %7 = sext i16 %6 to i32
  %8 = load i16, i16* %2, align 2
  %9 = sext i16 %8 to i32
  %10 = add nsw i32 %7, %9
  %11 = trunc i32 %10 to i16
  %12 = call i32 @expects(i32 25, i16 signext %11)
  %13 = load i16, i16* %1, align 2
  %14 = sext i16 %13 to i32
  %15 = add nsw i32 %14, 10
  %16 = trunc i32 %15 to i16
  %17 = call i32 @expects(i32 20, i16 signext %16)
  store i64 67, i64* %3, align 8
  store i64 69, i64* %4, align 8
  %18 = load i64, i64* %3, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @expectl(i32 67, i32 %19)
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = add nsw i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = call i32 @expectl(i32 136, i32 %24)
  %26 = call i32 @expectl(i32 10, i32 10)
  %27 = call i32 @expectl(i32 -1, i32 -1)
  %28 = call i32 @expectl(i32 0, i32 0)
  %29 = call i32 @expectl(i32 1, i32 1)
  ret void
}

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @expects(i32, i16 signext) #1

declare dso_local i32 @expectl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
