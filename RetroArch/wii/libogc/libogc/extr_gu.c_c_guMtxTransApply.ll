; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gu.c_c_guMtxTransApply.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gu.c_c_guMtxTransApply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_guMtxTransApply(i64** %0, i64** %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64**, align 8
  %7 = alloca i64**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64** %0, i64*** %6, align 8
  store i64** %1, i64*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i64**, i64*** %6, align 8
  %12 = load i64**, i64*** %7, align 8
  %13 = icmp ne i64** %11, %12
  br i1 %13, label %14, label %96

14:                                               ; preds = %5
  %15 = load i64**, i64*** %6, align 8
  %16 = getelementptr inbounds i64*, i64** %15, i64 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64**, i64*** %7, align 8
  %21 = getelementptr inbounds i64*, i64** %20, i64 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  store i64 %19, i64* %23, align 8
  %24 = load i64**, i64*** %6, align 8
  %25 = getelementptr inbounds i64*, i64** %24, i64 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64**, i64*** %7, align 8
  %30 = getelementptr inbounds i64*, i64** %29, i64 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  store i64 %28, i64* %32, align 8
  %33 = load i64**, i64*** %6, align 8
  %34 = getelementptr inbounds i64*, i64** %33, i64 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64**, i64*** %7, align 8
  %39 = getelementptr inbounds i64*, i64** %38, i64 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 2
  store i64 %37, i64* %41, align 8
  %42 = load i64**, i64*** %6, align 8
  %43 = getelementptr inbounds i64*, i64** %42, i64 1
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64**, i64*** %7, align 8
  %48 = getelementptr inbounds i64*, i64** %47, i64 1
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  store i64 %46, i64* %50, align 8
  %51 = load i64**, i64*** %6, align 8
  %52 = getelementptr inbounds i64*, i64** %51, i64 1
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64**, i64*** %7, align 8
  %57 = getelementptr inbounds i64*, i64** %56, i64 1
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  store i64 %55, i64* %59, align 8
  %60 = load i64**, i64*** %6, align 8
  %61 = getelementptr inbounds i64*, i64** %60, i64 1
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64**, i64*** %7, align 8
  %66 = getelementptr inbounds i64*, i64** %65, i64 1
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 2
  store i64 %64, i64* %68, align 8
  %69 = load i64**, i64*** %6, align 8
  %70 = getelementptr inbounds i64*, i64** %69, i64 2
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64**, i64*** %7, align 8
  %75 = getelementptr inbounds i64*, i64** %74, i64 2
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  store i64 %73, i64* %77, align 8
  %78 = load i64**, i64*** %6, align 8
  %79 = getelementptr inbounds i64*, i64** %78, i64 2
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64**, i64*** %7, align 8
  %84 = getelementptr inbounds i64*, i64** %83, i64 2
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  store i64 %82, i64* %86, align 8
  %87 = load i64**, i64*** %6, align 8
  %88 = getelementptr inbounds i64*, i64** %87, i64 2
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64**, i64*** %7, align 8
  %93 = getelementptr inbounds i64*, i64** %92, i64 2
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 2
  store i64 %91, i64* %95, align 8
  br label %96

96:                                               ; preds = %14, %5
  %97 = load i64**, i64*** %6, align 8
  %98 = getelementptr inbounds i64*, i64** %97, i64 0
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 3
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %8, align 8
  %103 = add nsw i64 %101, %102
  %104 = load i64**, i64*** %7, align 8
  %105 = getelementptr inbounds i64*, i64** %104, i64 0
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 3
  store i64 %103, i64* %107, align 8
  %108 = load i64**, i64*** %6, align 8
  %109 = getelementptr inbounds i64*, i64** %108, i64 1
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 3
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %9, align 8
  %114 = add nsw i64 %112, %113
  %115 = load i64**, i64*** %7, align 8
  %116 = getelementptr inbounds i64*, i64** %115, i64 1
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 3
  store i64 %114, i64* %118, align 8
  %119 = load i64**, i64*** %6, align 8
  %120 = getelementptr inbounds i64*, i64** %119, i64 2
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 3
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %10, align 8
  %125 = add nsw i64 %123, %124
  %126 = load i64**, i64*** %7, align 8
  %127 = getelementptr inbounds i64*, i64** %126, i64 2
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 3
  store i64 %125, i64* %129, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
