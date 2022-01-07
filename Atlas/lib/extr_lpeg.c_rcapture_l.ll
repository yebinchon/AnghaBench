; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_rcapture_l.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_rcapture_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Cfunction = common dso_local global i32 0, align 4
@Cquery = common dso_local global i32 0, align 4
@Cstring = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"invalid replacement value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @rcapture_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcapture_l(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i32 @lua_type(i32* %4, i32 2)
  switch i32 %5, label %18 [
    i32 130, label %6
    i32 128, label %10
    i32 129, label %14
  ]

6:                                                ; preds = %1
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @Cfunction, align 4
  %9 = call i32 @capture_aux(i32* %7, i32 %8, i32 2)
  store i32 %9, i32* %2, align 4
  br label %21

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @Cquery, align 4
  %13 = call i32 @capture_aux(i32* %11, i32 %12, i32 2)
  store i32 %13, i32* %2, align 4
  br label %21

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @Cstring, align 4
  %17 = call i32 @capture_aux(i32* %15, i32 %16, i32 2)
  store i32 %17, i32* %2, align 4
  br label %21

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @luaL_argerror(i32* %19, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %14, %10, %6
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @capture_aux(i32*, i32, i32) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
