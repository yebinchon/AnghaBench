; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_assign.c_testmain.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_assign.c_testmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"compound assignment\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testmain() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = call i32 @print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = add nsw i32 %4, 5
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = trunc i32 %6 to i8
  %8 = call i32 @expect(i32 5, i8 signext %7)
  %9 = load i32, i32* %1, align 4
  %10 = sub nsw i32 %9, 2
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = trunc i32 %11 to i8
  %13 = call i32 @expect(i32 3, i8 signext %12)
  %14 = load i32, i32* %1, align 4
  %15 = mul nsw i32 %14, 10
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = trunc i32 %16 to i8
  %18 = call i32 @expect(i32 30, i8 signext %17)
  %19 = load i32, i32* %1, align 4
  %20 = sdiv i32 %19, 2
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = trunc i32 %21 to i8
  %23 = call i32 @expect(i32 15, i8 signext %22)
  %24 = load i32, i32* %1, align 4
  %25 = srem i32 %24, 6
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = trunc i32 %26 to i8
  %28 = call i32 @expect(i32 3, i8 signext %27)
  store i32 14, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = and i32 %29, 7
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %1, align 4
  %32 = trunc i32 %31 to i8
  %33 = call i32 @expect(i32 6, i8 signext %32)
  %34 = load i32, i32* %1, align 4
  %35 = or i32 %34, 8
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* %1, align 4
  %37 = trunc i32 %36 to i8
  %38 = call i32 @expect(i32 14, i8 signext %37)
  %39 = load i32, i32* %1, align 4
  %40 = xor i32 %39, 3
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* %1, align 4
  %42 = trunc i32 %41 to i8
  %43 = call i32 @expect(i32 13, i8 signext %42)
  %44 = load i32, i32* %1, align 4
  %45 = shl i32 %44, 2
  store i32 %45, i32* %1, align 4
  %46 = load i32, i32* %1, align 4
  %47 = trunc i32 %46 to i8
  %48 = call i32 @expect(i32 52, i8 signext %47)
  %49 = load i32, i32* %1, align 4
  %50 = ashr i32 %49, 2
  store i32 %50, i32* %1, align 4
  %51 = load i32, i32* %1, align 4
  %52 = trunc i32 %51 to i8
  %53 = call i32 @expect(i32 13, i8 signext %52)
  store i8 0, i8* %2, align 1
  %54 = load i8, i8* %2, align 1
  %55 = sext i8 %54 to i32
  %56 = add nsw i32 %55, 5
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %2, align 1
  %58 = load i8, i8* %2, align 1
  %59 = call i32 @expect(i32 5, i8 signext %58)
  %60 = load i8, i8* %2, align 1
  %61 = sext i8 %60 to i32
  %62 = sub nsw i32 %61, 2
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %2, align 1
  %64 = load i8, i8* %2, align 1
  %65 = call i32 @expect(i32 3, i8 signext %64)
  %66 = load i8, i8* %2, align 1
  %67 = sext i8 %66 to i32
  %68 = mul nsw i32 %67, 10
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %2, align 1
  %70 = load i8, i8* %2, align 1
  %71 = call i32 @expect(i32 30, i8 signext %70)
  %72 = load i8, i8* %2, align 1
  %73 = sext i8 %72 to i32
  %74 = sdiv i32 %73, 2
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %2, align 1
  %76 = load i8, i8* %2, align 1
  %77 = call i32 @expect(i32 15, i8 signext %76)
  %78 = load i8, i8* %2, align 1
  %79 = sext i8 %78 to i32
  %80 = srem i32 %79, 6
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %2, align 1
  %82 = load i8, i8* %2, align 1
  %83 = call i32 @expect(i32 3, i8 signext %82)
  store i8 14, i8* %2, align 1
  %84 = load i8, i8* %2, align 1
  %85 = sext i8 %84 to i32
  %86 = and i32 %85, 7
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %2, align 1
  %88 = load i8, i8* %2, align 1
  %89 = call i32 @expect(i32 6, i8 signext %88)
  %90 = load i8, i8* %2, align 1
  %91 = sext i8 %90 to i32
  %92 = or i32 %91, 8
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %2, align 1
  %94 = load i8, i8* %2, align 1
  %95 = call i32 @expect(i32 14, i8 signext %94)
  %96 = load i8, i8* %2, align 1
  %97 = sext i8 %96 to i32
  %98 = xor i32 %97, 3
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %2, align 1
  %100 = load i8, i8* %2, align 1
  %101 = call i32 @expect(i32 13, i8 signext %100)
  %102 = load i8, i8* %2, align 1
  %103 = sext i8 %102 to i32
  %104 = shl i32 %103, 2
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %2, align 1
  %106 = load i8, i8* %2, align 1
  %107 = call i32 @expect(i32 52, i8 signext %106)
  %108 = load i8, i8* %2, align 1
  %109 = sext i8 %108 to i32
  %110 = ashr i32 %109, 2
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %2, align 1
  %112 = load i8, i8* %2, align 1
  %113 = call i32 @expect(i32 13, i8 signext %112)
  ret void
}

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @expect(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
