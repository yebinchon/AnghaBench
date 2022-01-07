; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_subr.c_unputc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_subr.c_unputc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clist = type { i64, i32*, i32*, i32*, i32*, i64* }

@TTY_QUOTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unputc(%struct.clist* %0) #0 {
  %2 = alloca %struct.clist*, align 8
  %3 = alloca i32, align 4
  store %struct.clist* %0, %struct.clist** %2, align 8
  store i32 -1, i32* %3, align 4
  %4 = load %struct.clist*, %struct.clist** %2, align 8
  %5 = getelementptr inbounds %struct.clist, %struct.clist* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %76

9:                                                ; preds = %1
  %10 = load %struct.clist*, %struct.clist** %2, align 8
  %11 = getelementptr inbounds %struct.clist, %struct.clist* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.clist*, %struct.clist** %2, align 8
  %14 = getelementptr inbounds %struct.clist, %struct.clist* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %12, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %9
  %18 = load %struct.clist*, %struct.clist** %2, align 8
  %19 = getelementptr inbounds %struct.clist, %struct.clist* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 -1
  %22 = load %struct.clist*, %struct.clist** %2, align 8
  %23 = getelementptr inbounds %struct.clist, %struct.clist* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  br label %29

24:                                               ; preds = %9
  %25 = load %struct.clist*, %struct.clist** %2, align 8
  %26 = getelementptr inbounds %struct.clist, %struct.clist* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 -1
  store i32* %28, i32** %26, align 8
  br label %29

29:                                               ; preds = %24, %17
  %30 = load %struct.clist*, %struct.clist** %2, align 8
  %31 = getelementptr inbounds %struct.clist, %struct.clist* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %31, align 8
  %34 = load %struct.clist*, %struct.clist** %2, align 8
  %35 = getelementptr inbounds %struct.clist, %struct.clist* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 255
  store i32 %38, i32* %3, align 4
  %39 = load %struct.clist*, %struct.clist** %2, align 8
  %40 = getelementptr inbounds %struct.clist, %struct.clist* %39, i32 0, i32 5
  %41 = load i64*, i64** %40, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %65

43:                                               ; preds = %29
  %44 = load %struct.clist*, %struct.clist** %2, align 8
  %45 = getelementptr inbounds %struct.clist, %struct.clist* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.clist*, %struct.clist** %2, align 8
  %48 = getelementptr inbounds %struct.clist, %struct.clist* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = ptrtoint i32* %46 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = load %struct.clist*, %struct.clist** %2, align 8
  %55 = getelementptr inbounds %struct.clist, %struct.clist* %54, i32 0, i32 5
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 %53
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %43
  %61 = load i32, i32* @TTY_QUOTE, align 4
  %62 = load i32, i32* %3, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %43
  br label %65

65:                                               ; preds = %64, %29
  %66 = load %struct.clist*, %struct.clist** %2, align 8
  %67 = getelementptr inbounds %struct.clist, %struct.clist* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.clist*, %struct.clist** %2, align 8
  %72 = getelementptr inbounds %struct.clist, %struct.clist* %71, i32 0, i32 1
  store i32* null, i32** %72, align 8
  %73 = load %struct.clist*, %struct.clist** %2, align 8
  %74 = getelementptr inbounds %struct.clist, %struct.clist* %73, i32 0, i32 4
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %70, %65
  br label %76

76:                                               ; preds = %75, %8
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
