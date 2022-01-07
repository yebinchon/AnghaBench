; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp_curves.c_ecp_mod_p384.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp_curves.c_ecp_mod_p384.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NEXT = common dso_local global i32 0, align 4
@LAST = common dso_local global i32 0, align 4
@ret = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ecp_mod_p384 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_mod_p384(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = call i32 @INIT(i32 384)
  %4 = call i32 @ADD(i32 12)
  %5 = call i32 @ADD(i32 21)
  %6 = call i32 @ADD(i32 20)
  %7 = call i32 @SUB(i32 23)
  %8 = load i32, i32* @NEXT, align 4
  %9 = call i32 @ADD(i32 13)
  %10 = call i32 @ADD(i32 22)
  %11 = call i32 @ADD(i32 23)
  %12 = call i32 @SUB(i32 12)
  %13 = call i32 @SUB(i32 20)
  %14 = load i32, i32* @NEXT, align 4
  %15 = call i32 @ADD(i32 14)
  %16 = call i32 @ADD(i32 23)
  %17 = call i32 @SUB(i32 13)
  %18 = call i32 @SUB(i32 21)
  %19 = load i32, i32* @NEXT, align 4
  %20 = call i32 @ADD(i32 15)
  %21 = call i32 @ADD(i32 12)
  %22 = call i32 @ADD(i32 20)
  %23 = call i32 @ADD(i32 21)
  %24 = call i32 @SUB(i32 14)
  %25 = call i32 @SUB(i32 22)
  %26 = call i32 @SUB(i32 23)
  %27 = load i32, i32* @NEXT, align 4
  %28 = call i32 @ADD(i32 21)
  %29 = call i32 @ADD(i32 21)
  %30 = call i32 @ADD(i32 16)
  %31 = call i32 @ADD(i32 13)
  %32 = call i32 @ADD(i32 12)
  %33 = call i32 @ADD(i32 20)
  %34 = call i32 @ADD(i32 22)
  %35 = call i32 @SUB(i32 15)
  %36 = call i32 @SUB(i32 23)
  %37 = call i32 @SUB(i32 23)
  %38 = load i32, i32* @NEXT, align 4
  %39 = call i32 @ADD(i32 22)
  %40 = call i32 @ADD(i32 22)
  %41 = call i32 @ADD(i32 17)
  %42 = call i32 @ADD(i32 14)
  %43 = call i32 @ADD(i32 13)
  %44 = call i32 @ADD(i32 21)
  %45 = call i32 @ADD(i32 23)
  %46 = call i32 @SUB(i32 16)
  %47 = load i32, i32* @NEXT, align 4
  %48 = call i32 @ADD(i32 23)
  %49 = call i32 @ADD(i32 23)
  %50 = call i32 @ADD(i32 18)
  %51 = call i32 @ADD(i32 15)
  %52 = call i32 @ADD(i32 14)
  %53 = call i32 @ADD(i32 22)
  %54 = call i32 @SUB(i32 17)
  %55 = load i32, i32* @NEXT, align 4
  %56 = call i32 @ADD(i32 19)
  %57 = call i32 @ADD(i32 16)
  %58 = call i32 @ADD(i32 15)
  %59 = call i32 @ADD(i32 23)
  %60 = call i32 @SUB(i32 18)
  %61 = load i32, i32* @NEXT, align 4
  %62 = call i32 @ADD(i32 20)
  %63 = call i32 @ADD(i32 17)
  %64 = call i32 @ADD(i32 16)
  %65 = call i32 @SUB(i32 19)
  %66 = load i32, i32* @NEXT, align 4
  %67 = call i32 @ADD(i32 21)
  %68 = call i32 @ADD(i32 18)
  %69 = call i32 @ADD(i32 17)
  %70 = call i32 @SUB(i32 20)
  %71 = load i32, i32* @NEXT, align 4
  %72 = call i32 @ADD(i32 22)
  %73 = call i32 @ADD(i32 19)
  %74 = call i32 @ADD(i32 18)
  %75 = call i32 @SUB(i32 21)
  %76 = load i32, i32* @NEXT, align 4
  %77 = call i32 @ADD(i32 23)
  %78 = call i32 @ADD(i32 20)
  %79 = call i32 @ADD(i32 19)
  %80 = call i32 @SUB(i32 22)
  %81 = load i32, i32* @LAST, align 4
  br label %82

82:                                               ; preds = %1
  %83 = load i32, i32* @ret, align 4
  ret i32 %83
}

declare dso_local i32 @INIT(i32) #1

declare dso_local i32 @ADD(i32) #1

declare dso_local i32 @SUB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
