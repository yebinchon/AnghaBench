; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_subr.c_firstc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_subr.c_firstc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clist = type { i64, i32*, i32*, i64* }

@cc = common dso_local global i64 0, align 8
@TTY_QUOTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @firstc(%struct.clist* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.clist*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.clist* %0, %struct.clist** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.clist*, %struct.clist** %4, align 8
  %8 = getelementptr inbounds %struct.clist, %struct.clist* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* @cc, align 8
  %10 = load i64, i64* @cc, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %50

13:                                               ; preds = %2
  %14 = load %struct.clist*, %struct.clist** %4, align 8
  %15 = getelementptr inbounds %struct.clist, %struct.clist* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 255
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  %21 = load %struct.clist*, %struct.clist** %4, align 8
  %22 = getelementptr inbounds %struct.clist, %struct.clist* %21, i32 0, i32 3
  %23 = load i64*, i64** %22, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %13
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.clist*, %struct.clist** %4, align 8
  %28 = getelementptr inbounds %struct.clist, %struct.clist* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = ptrtoint i32* %26 to i64
  %31 = ptrtoint i32* %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 4
  %34 = load %struct.clist*, %struct.clist** %4, align 8
  %35 = getelementptr inbounds %struct.clist, %struct.clist* %34, i32 0, i32 3
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 %33
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %25
  %41 = load i32, i32* @TTY_QUOTE, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %40, %25
  br label %46

46:                                               ; preds = %45, %13
  %47 = load %struct.clist*, %struct.clist** %4, align 8
  %48 = getelementptr inbounds %struct.clist, %struct.clist* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %3, align 8
  br label %50

50:                                               ; preds = %46, %12
  %51 = load i32*, i32** %3, align 8
  ret i32* %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
