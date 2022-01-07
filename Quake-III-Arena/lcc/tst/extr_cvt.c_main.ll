; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_cvt.c_main.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_cvt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = common dso_local global i32 0, align 4
@s = common dso_local global i32 0, align 4
@i = common dso_local global i32 0, align 4
@l = common dso_local global i32 0, align 4
@C = common dso_local global i32 0, align 4
@S = common dso_local global i32 0, align 4
@I = common dso_local global i32 0, align 4
@L = common dso_local global i32 0, align 4
@f = common dso_local global i32 0, align 4
@d = common dso_local global i32 0, align 4
@D = common dso_local global i32 0, align 4
@p = common dso_local global i64 0, align 8
@P = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* @c, align 4
  %2 = load i32, i32* @c, align 4
  store i32 %2, i32* @s, align 4
  %3 = load i32, i32* @c, align 4
  store i32 %3, i32* @i, align 4
  %4 = load i32, i32* @c, align 4
  store i32 %4, i32* @l, align 4
  %5 = load i32, i32* @c, align 4
  store i32 %5, i32* @C, align 4
  %6 = load i32, i32* @c, align 4
  store i32 %6, i32* @S, align 4
  %7 = load i32, i32* @c, align 4
  store i32 %7, i32* @I, align 4
  %8 = load i32, i32* @c, align 4
  store i32 %8, i32* @L, align 4
  %9 = load i32, i32* @c, align 4
  store i32 %9, i32* @f, align 4
  %10 = load i32, i32* @c, align 4
  store i32 %10, i32* @d, align 4
  %11 = load i32, i32* @c, align 4
  store i32 %11, i32* @D, align 4
  %12 = call i32 (...) @print()
  store i32 2, i32* @s, align 4
  %13 = load i32, i32* @s, align 4
  store i32 %13, i32* @c, align 4
  %14 = load i32, i32* @s, align 4
  store i32 %14, i32* @i, align 4
  %15 = load i32, i32* @s, align 4
  store i32 %15, i32* @l, align 4
  %16 = load i32, i32* @s, align 4
  store i32 %16, i32* @C, align 4
  %17 = load i32, i32* @s, align 4
  store i32 %17, i32* @S, align 4
  %18 = load i32, i32* @s, align 4
  store i32 %18, i32* @I, align 4
  %19 = load i32, i32* @s, align 4
  store i32 %19, i32* @L, align 4
  %20 = load i32, i32* @s, align 4
  store i32 %20, i32* @f, align 4
  %21 = load i32, i32* @s, align 4
  store i32 %21, i32* @d, align 4
  %22 = load i32, i32* @s, align 4
  store i32 %22, i32* @D, align 4
  %23 = call i32 (...) @print()
  store i32 3, i32* @i, align 4
  %24 = load i32, i32* @i, align 4
  store i32 %24, i32* @c, align 4
  %25 = load i32, i32* @i, align 4
  store i32 %25, i32* @s, align 4
  %26 = load i32, i32* @i, align 4
  store i32 %26, i32* @l, align 4
  %27 = load i32, i32* @i, align 4
  store i32 %27, i32* @C, align 4
  %28 = load i32, i32* @i, align 4
  store i32 %28, i32* @S, align 4
  %29 = load i32, i32* @i, align 4
  store i32 %29, i32* @I, align 4
  %30 = load i32, i32* @i, align 4
  store i32 %30, i32* @L, align 4
  %31 = load i32, i32* @i, align 4
  store i32 %31, i32* @f, align 4
  %32 = load i32, i32* @i, align 4
  store i32 %32, i32* @d, align 4
  %33 = load i32, i32* @i, align 4
  store i32 %33, i32* @D, align 4
  %34 = call i32 (...) @print()
  store i32 4, i32* @l, align 4
  %35 = load i32, i32* @l, align 4
  store i32 %35, i32* @c, align 4
  %36 = load i32, i32* @l, align 4
  store i32 %36, i32* @s, align 4
  %37 = load i32, i32* @l, align 4
  store i32 %37, i32* @i, align 4
  %38 = load i32, i32* @l, align 4
  store i32 %38, i32* @C, align 4
  %39 = load i32, i32* @l, align 4
  store i32 %39, i32* @S, align 4
  %40 = load i32, i32* @l, align 4
  store i32 %40, i32* @I, align 4
  %41 = load i32, i32* @l, align 4
  store i32 %41, i32* @L, align 4
  %42 = load i32, i32* @l, align 4
  store i32 %42, i32* @f, align 4
  %43 = load i32, i32* @l, align 4
  store i32 %43, i32* @d, align 4
  %44 = load i32, i32* @l, align 4
  store i32 %44, i32* @D, align 4
  %45 = call i32 (...) @print()
  store i32 5, i32* @C, align 4
  %46 = load i32, i32* @C, align 4
  store i32 %46, i32* @c, align 4
  %47 = load i32, i32* @C, align 4
  store i32 %47, i32* @s, align 4
  %48 = load i32, i32* @C, align 4
  store i32 %48, i32* @i, align 4
  %49 = load i32, i32* @C, align 4
  store i32 %49, i32* @l, align 4
  %50 = load i32, i32* @C, align 4
  store i32 %50, i32* @S, align 4
  %51 = load i32, i32* @C, align 4
  store i32 %51, i32* @I, align 4
  %52 = load i32, i32* @C, align 4
  store i32 %52, i32* @L, align 4
  %53 = load i32, i32* @C, align 4
  store i32 %53, i32* @f, align 4
  %54 = load i32, i32* @C, align 4
  store i32 %54, i32* @d, align 4
  %55 = load i32, i32* @C, align 4
  store i32 %55, i32* @D, align 4
  %56 = call i32 (...) @print()
  store i32 6, i32* @S, align 4
  %57 = load i32, i32* @S, align 4
  store i32 %57, i32* @c, align 4
  %58 = load i32, i32* @S, align 4
  store i32 %58, i32* @s, align 4
  %59 = load i32, i32* @S, align 4
  store i32 %59, i32* @i, align 4
  %60 = load i32, i32* @S, align 4
  store i32 %60, i32* @l, align 4
  %61 = load i32, i32* @S, align 4
  store i32 %61, i32* @C, align 4
  %62 = load i32, i32* @S, align 4
  store i32 %62, i32* @I, align 4
  %63 = load i32, i32* @S, align 4
  store i32 %63, i32* @L, align 4
  %64 = load i32, i32* @S, align 4
  store i32 %64, i32* @f, align 4
  %65 = load i32, i32* @S, align 4
  store i32 %65, i32* @d, align 4
  %66 = load i32, i32* @S, align 4
  store i32 %66, i32* @D, align 4
  %67 = call i32 (...) @print()
  store i32 7, i32* @I, align 4
  %68 = load i32, i32* @I, align 4
  store i32 %68, i32* @c, align 4
  %69 = load i32, i32* @I, align 4
  store i32 %69, i32* @s, align 4
  %70 = load i32, i32* @I, align 4
  store i32 %70, i32* @i, align 4
  %71 = load i32, i32* @I, align 4
  store i32 %71, i32* @l, align 4
  %72 = load i32, i32* @I, align 4
  store i32 %72, i32* @C, align 4
  %73 = load i32, i32* @I, align 4
  store i32 %73, i32* @S, align 4
  %74 = load i32, i32* @I, align 4
  store i32 %74, i32* @L, align 4
  %75 = load i32, i32* @I, align 4
  store i32 %75, i32* @f, align 4
  %76 = load i32, i32* @I, align 4
  store i32 %76, i32* @d, align 4
  %77 = load i32, i32* @I, align 4
  store i32 %77, i32* @D, align 4
  %78 = call i32 (...) @print()
  store i32 8, i32* @L, align 4
  %79 = load i32, i32* @L, align 4
  store i32 %79, i32* @c, align 4
  %80 = load i32, i32* @L, align 4
  store i32 %80, i32* @s, align 4
  %81 = load i32, i32* @L, align 4
  store i32 %81, i32* @i, align 4
  %82 = load i32, i32* @L, align 4
  store i32 %82, i32* @l, align 4
  %83 = load i32, i32* @L, align 4
  store i32 %83, i32* @C, align 4
  %84 = load i32, i32* @L, align 4
  store i32 %84, i32* @S, align 4
  %85 = load i32, i32* @S, align 4
  store i32 %85, i32* @I, align 4
  %86 = load i32, i32* @L, align 4
  store i32 %86, i32* @f, align 4
  %87 = load i32, i32* @L, align 4
  store i32 %87, i32* @d, align 4
  %88 = load i32, i32* @L, align 4
  store i32 %88, i32* @D, align 4
  %89 = call i32 (...) @print()
  store i32 9, i32* @f, align 4
  %90 = load i32, i32* @f, align 4
  store i32 %90, i32* @c, align 4
  %91 = load i32, i32* @f, align 4
  store i32 %91, i32* @s, align 4
  %92 = load i32, i32* @f, align 4
  store i32 %92, i32* @i, align 4
  %93 = load i32, i32* @f, align 4
  store i32 %93, i32* @l, align 4
  %94 = load i32, i32* @f, align 4
  store i32 %94, i32* @C, align 4
  %95 = load i32, i32* @f, align 4
  store i32 %95, i32* @S, align 4
  %96 = load i32, i32* @f, align 4
  store i32 %96, i32* @I, align 4
  %97 = load i32, i32* @f, align 4
  store i32 %97, i32* @L, align 4
  %98 = load i32, i32* @f, align 4
  store i32 %98, i32* @d, align 4
  %99 = load i32, i32* @f, align 4
  store i32 %99, i32* @D, align 4
  %100 = call i32 (...) @print()
  store i32 10, i32* @d, align 4
  %101 = load i32, i32* @d, align 4
  store i32 %101, i32* @c, align 4
  %102 = load i32, i32* @d, align 4
  store i32 %102, i32* @s, align 4
  %103 = load i32, i32* @d, align 4
  store i32 %103, i32* @i, align 4
  %104 = load i32, i32* @d, align 4
  store i32 %104, i32* @l, align 4
  %105 = load i32, i32* @d, align 4
  store i32 %105, i32* @C, align 4
  %106 = load i32, i32* @d, align 4
  store i32 %106, i32* @S, align 4
  %107 = load i32, i32* @d, align 4
  store i32 %107, i32* @I, align 4
  %108 = load i32, i32* @d, align 4
  store i32 %108, i32* @L, align 4
  %109 = load i32, i32* @d, align 4
  store i32 %109, i32* @f, align 4
  %110 = load i32, i32* @d, align 4
  store i32 %110, i32* @D, align 4
  %111 = call i32 (...) @print()
  store i32 11, i32* @D, align 4
  %112 = load i32, i32* @D, align 4
  store i32 %112, i32* @c, align 4
  %113 = load i32, i32* @D, align 4
  store i32 %113, i32* @s, align 4
  %114 = load i32, i32* @D, align 4
  store i32 %114, i32* @i, align 4
  %115 = load i32, i32* @D, align 4
  store i32 %115, i32* @l, align 4
  %116 = load i32, i32* @D, align 4
  store i32 %116, i32* @C, align 4
  %117 = load i32, i32* @D, align 4
  store i32 %117, i32* @S, align 4
  %118 = load i32, i32* @D, align 4
  store i32 %118, i32* @I, align 4
  %119 = load i32, i32* @D, align 4
  store i32 %119, i32* @L, align 4
  %120 = load i32, i32* @D, align 4
  store i32 %120, i32* @f, align 4
  %121 = load i32, i32* @D, align 4
  store i32 %121, i32* @d, align 4
  %122 = call i32 (...) @print()
  store i64 0, i64* @p, align 8
  store i64 0, i64* @p, align 8
  store i64 0, i64* @p, align 8
  store i64 0, i64* @p, align 8
  %123 = load i64, i64* @P, align 8
  store i64 %123, i64* @p, align 8
  store i64 0, i64* @P, align 8
  store i64 0, i64* @P, align 8
  store i64 0, i64* @P, align 8
  store i64 0, i64* @P, align 8
  %124 = load i64, i64* @p, align 8
  store i64 %124, i64* @P, align 8
  ret i32 0
}

declare dso_local i32 @print(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
