; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lgc.c_iscleared.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lgc.c_iscleared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @iscleared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscleared(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @iscollectable(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @ttisstring(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @rawtsvalue(i32* %15)
  %17 = call i32 @stringmark(i32 %16)
  store i32 0, i32* %3, align 4
  br label %42

18:                                               ; preds = %10
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @gcvalue(i32* %19)
  %21 = call i64 @iswhite(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %18
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @ttisuserdata(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @uvalue(i32* %31)
  %33 = call i64 @isfinalized(i32 %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %30, %27
  %36 = phi i1 [ false, %27 ], [ %34, %30 ]
  br label %37

37:                                               ; preds = %35, %23
  %38 = phi i1 [ false, %23 ], [ %36, %35 ]
  br label %39

39:                                               ; preds = %37, %18
  %40 = phi i1 [ true, %18 ], [ %38, %37 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %14, %9
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @iscollectable(i32*) #1

declare dso_local i64 @ttisstring(i32*) #1

declare dso_local i32 @stringmark(i32) #1

declare dso_local i32 @rawtsvalue(i32*) #1

declare dso_local i64 @iswhite(i32) #1

declare dso_local i32 @gcvalue(i32*) #1

declare dso_local i64 @ttisuserdata(i32*) #1

declare dso_local i64 @isfinalized(i32) #1

declare dso_local i32 @uvalue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
