; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_update_rusage_info_child.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_update_rusage_info_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rusage_info_child = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_rusage_info_child(%struct.rusage_info_child* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.rusage_info_child*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.rusage_info_child* %0, %struct.rusage_info_child** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 12
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 11
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %7, %10
  %12 = load %struct.rusage_info_child*, %struct.rusage_info_child** %3, align 8
  %13 = getelementptr inbounds %struct.rusage_info_child, %struct.rusage_info_child* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %11
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %13, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 10
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 9
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load %struct.rusage_info_child*, %struct.rusage_info_child** %3, align 8
  %26 = getelementptr inbounds %struct.rusage_info_child, %struct.rusage_info_child* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %24
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 8
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load %struct.rusage_info_child*, %struct.rusage_info_child** %3, align 8
  %39 = getelementptr inbounds %struct.rusage_info_child, %struct.rusage_info_child* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %37
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load %struct.rusage_info_child*, %struct.rusage_info_child** %3, align 8
  %52 = getelementptr inbounds %struct.rusage_info_child, %struct.rusage_info_child* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %50
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %59, %62
  %64 = load %struct.rusage_info_child*, %struct.rusage_info_child** %3, align 8
  %65 = getelementptr inbounds %struct.rusage_info_child, %struct.rusage_info_child* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %63
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %72, %75
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = load %struct.rusage_info_child*, %struct.rusage_info_child** %3, align 8
  %82 = getelementptr inbounds %struct.rusage_info_child, %struct.rusage_info_child* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %80
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
