; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_capconst_l.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_capconst_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IEmptyCaptureIdx = common dso_local global i32 0, align 4
@Cconst = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @capconst_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @capconst_l(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @lua_gettop(i32* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32* @newpatt(i32* %9, i32 %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @lua_createtable(i32* %12, i32 %13, i32 0)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %3, align 4
  br label %15

15:                                               ; preds = %47, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %15
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @lua_isnil(i32* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %6, align 8
  %27 = ptrtoint i32* %25 to i32
  %28 = load i32, i32* @IEmptyCaptureIdx, align 4
  %29 = load i32, i32* @Cconst, align 4
  %30 = call i32 @setinstcap(i32 %27, i32 %28, i32 0, i32 %29, i32 0)
  br label %46

31:                                               ; preds = %19
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %6, align 8
  %34 = ptrtoint i32* %32 to i32
  %35 = load i32, i32* @IEmptyCaptureIdx, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @Cconst, align 4
  %38 = call i32 @setinstcap(i32 %34, i32 %35, i32 %36, i32 %37, i32 0)
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @lua_pushvalue(i32* %39, i32 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  %45 = call i32 @lua_rawseti(i32* %42, i32 -2, i32 %43)
  br label %46

46:                                               ; preds = %31, %24
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %15

50:                                               ; preds = %15
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @lua_setfenv(i32* %51, i32 -2)
  ret i32 1
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32* @newpatt(i32*, i32) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @setinstcap(i32, i32, i32, i32, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

declare dso_local i32 @lua_setfenv(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
