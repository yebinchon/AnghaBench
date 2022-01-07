; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_subr.c_q_to_b.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_subr.c_q_to_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clist = type { i64, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @q_to_b(%struct.clist* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.clist*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.clist* %0, %struct.clist** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  store i32* %9, i32** %8, align 8
  br label %10

10:                                               ; preds = %88, %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load %struct.clist*, %struct.clist** %4, align 8
  %15 = getelementptr inbounds %struct.clist, %struct.clist* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br label %18

18:                                               ; preds = %13, %10
  %19 = phi i1 [ false, %10 ], [ %17, %13 ]
  br i1 %19, label %20, label %89

20:                                               ; preds = %18
  %21 = load %struct.clist*, %struct.clist** %4, align 8
  %22 = getelementptr inbounds %struct.clist, %struct.clist* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.clist*, %struct.clist** %4, align 8
  %25 = getelementptr inbounds %struct.clist, %struct.clist* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.clist*, %struct.clist** %4, align 8
  %29 = getelementptr inbounds %struct.clist, %struct.clist* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.clist*, %struct.clist** %4, align 8
  %32 = getelementptr inbounds %struct.clist, %struct.clist* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %20
  %36 = load %struct.clist*, %struct.clist** %4, align 8
  %37 = getelementptr inbounds %struct.clist, %struct.clist* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.clist*, %struct.clist** %4, align 8
  %40 = getelementptr inbounds %struct.clist, %struct.clist* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %38, %41
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %35, %20
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %47, %43
  %50 = load %struct.clist*, %struct.clist** %4, align 8
  %51 = getelementptr inbounds %struct.clist, %struct.clist* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @bcopy(i32 %52, i32* %53, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %8, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = load %struct.clist*, %struct.clist** %4, align 8
  %66 = getelementptr inbounds %struct.clist, %struct.clist* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %67, %64
  store i64 %68, i64* %66, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.clist*, %struct.clist** %4, align 8
  %71 = getelementptr inbounds %struct.clist, %struct.clist* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.clist*, %struct.clist** %4, align 8
  %75 = getelementptr inbounds %struct.clist, %struct.clist* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.clist*, %struct.clist** %4, align 8
  %78 = getelementptr inbounds %struct.clist, %struct.clist* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %49
  %82 = load %struct.clist*, %struct.clist** %4, align 8
  %83 = getelementptr inbounds %struct.clist, %struct.clist* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = load %struct.clist*, %struct.clist** %4, align 8
  %87 = getelementptr inbounds %struct.clist, %struct.clist* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %81, %49
  br label %10

89:                                               ; preds = %18
  %90 = load %struct.clist*, %struct.clist** %4, align 8
  %91 = getelementptr inbounds %struct.clist, %struct.clist* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load %struct.clist*, %struct.clist** %4, align 8
  %96 = getelementptr inbounds %struct.clist, %struct.clist* %95, i32 0, i32 1
  store i32 0, i32* %96, align 8
  %97 = load %struct.clist*, %struct.clist** %4, align 8
  %98 = getelementptr inbounds %struct.clist, %struct.clist* %97, i32 0, i32 2
  store i32 0, i32* %98, align 4
  br label %99

99:                                               ; preds = %94, %89
  %100 = load i32*, i32** %8, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = ptrtoint i32* %100 to i64
  %103 = ptrtoint i32* %101 to i64
  %104 = sub i64 %102, %103
  %105 = sdiv exact i64 %104, 4
  %106 = trunc i64 %105 to i32
  ret i32 %106
}

declare dso_local i32 @bcopy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
