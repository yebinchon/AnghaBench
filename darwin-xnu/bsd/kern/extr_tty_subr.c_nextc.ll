; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_subr.c_nextc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_subr.c_nextc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clist = type { i32*, i64, i32*, i32*, i64* }

@cc = common dso_local global i64 0, align 8
@TTY_QUOTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @nextc(%struct.clist* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.clist*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.clist* %0, %struct.clist** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.clist*, %struct.clist** %5, align 8
  %9 = getelementptr inbounds %struct.clist, %struct.clist* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp eq i32* %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.clist*, %struct.clist** %5, align 8
  %15 = getelementptr inbounds %struct.clist, %struct.clist* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* @cc, align 8
  br label %17

17:                                               ; preds = %13, %3
  %18 = load i64, i64* @cc, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %17
  store i32* null, i32** %4, align 8
  br label %74

24:                                               ; preds = %20
  %25 = load i64, i64* @cc, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* @cc, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32* null, i32** %4, align 8
  br label %74

29:                                               ; preds = %24
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %6, align 8
  %32 = load %struct.clist*, %struct.clist** %5, align 8
  %33 = getelementptr inbounds %struct.clist, %struct.clist* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.clist*, %struct.clist** %5, align 8
  %38 = getelementptr inbounds %struct.clist, %struct.clist* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %6, align 8
  br label %40

40:                                               ; preds = %36, %29
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 255
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.clist*, %struct.clist** %5, align 8
  %46 = getelementptr inbounds %struct.clist, %struct.clist* %45, i32 0, i32 4
  %47 = load i64*, i64** %46, align 8
  %48 = icmp ne i64* %47, null
  br i1 %48, label %49, label %72

49:                                               ; preds = %40
  %50 = load %struct.clist*, %struct.clist** %5, align 8
  %51 = getelementptr inbounds %struct.clist, %struct.clist* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.clist*, %struct.clist** %5, align 8
  %54 = getelementptr inbounds %struct.clist, %struct.clist* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = ptrtoint i32* %52 to i64
  %57 = ptrtoint i32* %55 to i64
  %58 = sub i64 %56, %57
  %59 = sdiv exact i64 %58, 4
  %60 = load %struct.clist*, %struct.clist** %5, align 8
  %61 = getelementptr inbounds %struct.clist, %struct.clist* %60, i32 0, i32 4
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 %59
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %49
  %67 = load i32, i32* @TTY_QUOTE, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %66, %49
  br label %72

72:                                               ; preds = %71, %40
  %73 = load i32*, i32** %6, align 8
  store i32* %73, i32** %4, align 8
  br label %74

74:                                               ; preds = %72, %28, %23
  %75 = load i32*, i32** %4, align 8
  ret i32* %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
