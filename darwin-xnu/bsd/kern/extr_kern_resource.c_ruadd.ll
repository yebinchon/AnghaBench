; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_ruadd.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_ruadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rusage = type { i64, i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ruadd(%struct.rusage* %0, %struct.rusage* %1) #0 {
  %3 = alloca %struct.rusage*, align 8
  %4 = alloca %struct.rusage*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store %struct.rusage* %0, %struct.rusage** %3, align 8
  store %struct.rusage* %1, %struct.rusage** %4, align 8
  %8 = load %struct.rusage*, %struct.rusage** %3, align 8
  %9 = getelementptr inbounds %struct.rusage, %struct.rusage* %8, i32 0, i32 4
  %10 = load %struct.rusage*, %struct.rusage** %4, align 8
  %11 = getelementptr inbounds %struct.rusage, %struct.rusage* %10, i32 0, i32 4
  %12 = load %struct.rusage*, %struct.rusage** %3, align 8
  %13 = getelementptr inbounds %struct.rusage, %struct.rusage* %12, i32 0, i32 4
  %14 = call i32 @timeradd(i32* %9, i32* %11, i32* %13)
  %15 = load %struct.rusage*, %struct.rusage** %3, align 8
  %16 = getelementptr inbounds %struct.rusage, %struct.rusage* %15, i32 0, i32 3
  %17 = load %struct.rusage*, %struct.rusage** %4, align 8
  %18 = getelementptr inbounds %struct.rusage, %struct.rusage* %17, i32 0, i32 3
  %19 = load %struct.rusage*, %struct.rusage** %3, align 8
  %20 = getelementptr inbounds %struct.rusage, %struct.rusage* %19, i32 0, i32 3
  %21 = call i32 @timeradd(i32* %16, i32* %18, i32* %20)
  %22 = load %struct.rusage*, %struct.rusage** %3, align 8
  %23 = getelementptr inbounds %struct.rusage, %struct.rusage* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.rusage*, %struct.rusage** %4, align 8
  %26 = getelementptr inbounds %struct.rusage, %struct.rusage* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %struct.rusage*, %struct.rusage** %4, align 8
  %31 = getelementptr inbounds %struct.rusage, %struct.rusage* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.rusage*, %struct.rusage** %3, align 8
  %34 = getelementptr inbounds %struct.rusage, %struct.rusage* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %29, %2
  %36 = load %struct.rusage*, %struct.rusage** %3, align 8
  %37 = getelementptr inbounds %struct.rusage, %struct.rusage* %36, i32 0, i32 1
  store i64* %37, i64** %5, align 8
  %38 = load %struct.rusage*, %struct.rusage** %4, align 8
  %39 = getelementptr inbounds %struct.rusage, %struct.rusage* %38, i32 0, i32 1
  store i64* %39, i64** %6, align 8
  %40 = load %struct.rusage*, %struct.rusage** %3, align 8
  %41 = getelementptr inbounds %struct.rusage, %struct.rusage* %40, i32 0, i32 2
  %42 = load %struct.rusage*, %struct.rusage** %3, align 8
  %43 = getelementptr inbounds %struct.rusage, %struct.rusage* %42, i32 0, i32 1
  %44 = ptrtoint i64* %41 to i64
  %45 = ptrtoint i64* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 8
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %59, %35
  %49 = load i64, i64* %7, align 8
  %50 = icmp sge i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i64*, i64** %6, align 8
  %53 = getelementptr inbounds i64, i64* %52, i32 1
  store i64* %53, i64** %6, align 8
  %54 = load i64, i64* %52, align 8
  %55 = load i64*, i64** %5, align 8
  %56 = getelementptr inbounds i64, i64* %55, i32 1
  store i64* %56, i64** %5, align 8
  %57 = load i64, i64* %55, align 8
  %58 = add nsw i64 %57, %54
  store i64 %58, i64* %55, align 8
  br label %59

59:                                               ; preds = %51
  %60 = load i64, i64* %7, align 8
  %61 = add nsw i64 %60, -1
  store i64 %61, i64* %7, align 8
  br label %48

62:                                               ; preds = %48
  ret void
}

declare dso_local i32 @timeradd(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
