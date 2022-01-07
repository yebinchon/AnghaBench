; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_jointable.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_jointable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @jointable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jointable(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @lua_getfenv(i32* %9, i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @lua_objlen(i32* %12, i32 -1)
  store i32 %13, i32* %7, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @lua_getfenv(i32* %14, i32 -2)
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @lua_equal(i32* %19, i32 -2, i32 -1)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %2
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @lua_pop(i32* %23, i32 2)
  store i32 0, i32* %3, align 4
  br label %78

25:                                               ; preds = %18
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @lua_objlen(i32* %26, i32 -1)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @lua_pop(i32* %31, i32 1)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @lua_setfenv(i32* %33, i32 -2)
  store i32 0, i32* %3, align 4
  br label %78

35:                                               ; preds = %25
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  %40 = call i32 @lua_createtable(i32* %36, i32 %39, i32 0)
  store i32 1, i32* %8, align 4
  br label %41

41:                                               ; preds = %52, %35
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @lua_rawgeti(i32* %46, i32 -2, i32 %47)
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @lua_rawseti(i32* %49, i32 -2, i32 %50)
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %41

55:                                               ; preds = %41
  store i32 1, i32* %8, align 4
  br label %56

56:                                               ; preds = %69, %55
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @lua_rawgeti(i32* %61, i32 -3, i32 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %65, %66
  %68 = call i32 @lua_rawseti(i32* %64, i32 -2, i32 %67)
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %56

72:                                               ; preds = %56
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @lua_setfenv(i32* %73, i32 -4)
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @lua_pop(i32* %75, i32 2)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %72, %30, %22
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @lua_getfenv(i32*, i32) #1

declare dso_local i32 @lua_objlen(i32*, i32) #1

declare dso_local i64 @lua_equal(i32*, i32, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_setfenv(i32*, i32) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
