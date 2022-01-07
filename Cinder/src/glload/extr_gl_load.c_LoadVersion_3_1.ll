; ModuleID = '/home/carl/AnghaBench/Cinder/src/glload/extr_gl_load.c_LoadVersion_3_1.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glload/extr_gl_load.c_LoadVersion_3_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @LoadVersion_3_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LoadVersion_3_1() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i64 (...) @LoadCore_Version_1_0()
  %3 = load i32, i32* %1, align 4
  %4 = sext i32 %3 to i64
  %5 = add nsw i64 %4, %2
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %1, align 4
  %7 = call i64 (...) @LoadCore_Version_1_1()
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %9, %7
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %1, align 4
  %12 = call i64 (...) @LoadCore_Version_1_2()
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %1, align 4
  %17 = call i64 (...) @LoadCore_Version_1_3()
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %1, align 4
  %22 = call i64 (...) @LoadCore_Version_1_4()
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %1, align 4
  %27 = call i64 (...) @LoadCore_Version_1_5()
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %1, align 4
  %32 = call i64 (...) @LoadCore_Version_2_0()
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %1, align 4
  %37 = call i64 (...) @LoadCore_Version_2_1()
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %1, align 4
  %42 = call i64 (...) @LoadCore_Version_3_0()
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %1, align 4
  %47 = call i64 (...) @LoadCore_Version_3_1()
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %1, align 4
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i64 @LoadCore_Version_1_0(...) #1

declare dso_local i64 @LoadCore_Version_1_1(...) #1

declare dso_local i64 @LoadCore_Version_1_2(...) #1

declare dso_local i64 @LoadCore_Version_1_3(...) #1

declare dso_local i64 @LoadCore_Version_1_4(...) #1

declare dso_local i64 @LoadCore_Version_1_5(...) #1

declare dso_local i64 @LoadCore_Version_2_0(...) #1

declare dso_local i64 @LoadCore_Version_2_1(...) #1

declare dso_local i64 @LoadCore_Version_3_0(...) #1

declare dso_local i64 @LoadCore_Version_3_1(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
