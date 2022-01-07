; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_subr.c_getc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_subr.c_getc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clist = type { i64, i32*, i32*, i32*, i32*, i64* }

@TTY_QUOTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getc(%struct.clist* %0) #0 {
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
  br label %68

9:                                                ; preds = %1
  %10 = load %struct.clist*, %struct.clist** %2, align 8
  %11 = getelementptr inbounds %struct.clist, %struct.clist* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 255
  store i32 %14, i32* %3, align 4
  %15 = load %struct.clist*, %struct.clist** %2, align 8
  %16 = getelementptr inbounds %struct.clist, %struct.clist* %15, i32 0, i32 5
  %17 = load i64*, i64** %16, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %9
  %20 = load %struct.clist*, %struct.clist** %2, align 8
  %21 = getelementptr inbounds %struct.clist, %struct.clist* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.clist*, %struct.clist** %2, align 8
  %24 = getelementptr inbounds %struct.clist, %struct.clist* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = ptrtoint i32* %22 to i64
  %27 = ptrtoint i32* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 4
  %30 = load %struct.clist*, %struct.clist** %2, align 8
  %31 = getelementptr inbounds %struct.clist, %struct.clist* %30, i32 0, i32 5
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 %29
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %19
  %37 = load i32, i32* @TTY_QUOTE, align 4
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %19
  br label %41

41:                                               ; preds = %40, %9
  %42 = load %struct.clist*, %struct.clist** %2, align 8
  %43 = getelementptr inbounds %struct.clist, %struct.clist* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %43, align 8
  %46 = load %struct.clist*, %struct.clist** %2, align 8
  %47 = getelementptr inbounds %struct.clist, %struct.clist* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %45, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load %struct.clist*, %struct.clist** %2, align 8
  %52 = getelementptr inbounds %struct.clist, %struct.clist* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.clist*, %struct.clist** %2, align 8
  %55 = getelementptr inbounds %struct.clist, %struct.clist* %54, i32 0, i32 1
  store i32* %53, i32** %55, align 8
  br label %56

56:                                               ; preds = %50, %41
  %57 = load %struct.clist*, %struct.clist** %2, align 8
  %58 = getelementptr inbounds %struct.clist, %struct.clist* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, -1
  store i64 %60, i64* %58, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.clist*, %struct.clist** %2, align 8
  %64 = getelementptr inbounds %struct.clist, %struct.clist* %63, i32 0, i32 4
  store i32* null, i32** %64, align 8
  %65 = load %struct.clist*, %struct.clist** %2, align 8
  %66 = getelementptr inbounds %struct.clist, %struct.clist* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %62, %56
  br label %68

68:                                               ; preds = %67, %8
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
