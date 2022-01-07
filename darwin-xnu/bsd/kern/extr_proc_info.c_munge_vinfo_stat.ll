; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_munge_vinfo_stat.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_munge_vinfo_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat64 = type { i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.vinfo_stat = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stat64*, %struct.vinfo_stat*)* @munge_vinfo_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @munge_vinfo_stat(%struct.stat64* %0, %struct.vinfo_stat* %1) #0 {
  %3 = alloca %struct.stat64*, align 8
  %4 = alloca %struct.vinfo_stat*, align 8
  store %struct.stat64* %0, %struct.stat64** %3, align 8
  store %struct.vinfo_stat* %1, %struct.vinfo_stat** %4, align 8
  %5 = load %struct.vinfo_stat*, %struct.vinfo_stat** %4, align 8
  %6 = call i32 @bzero(%struct.vinfo_stat* %5, i32 88)
  %7 = load %struct.stat64*, %struct.stat64** %3, align 8
  %8 = getelementptr inbounds %struct.stat64, %struct.stat64* %7, i32 0, i32 16
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.vinfo_stat*, %struct.vinfo_stat** %4, align 8
  %11 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %10, i32 0, i32 20
  store i32 %9, i32* %11, align 4
  %12 = load %struct.stat64*, %struct.stat64** %3, align 8
  %13 = getelementptr inbounds %struct.stat64, %struct.stat64* %12, i32 0, i32 15
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.vinfo_stat*, %struct.vinfo_stat** %4, align 8
  %16 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %15, i32 0, i32 19
  store i32 %14, i32* %16, align 8
  %17 = load %struct.stat64*, %struct.stat64** %3, align 8
  %18 = getelementptr inbounds %struct.stat64, %struct.stat64* %17, i32 0, i32 14
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.vinfo_stat*, %struct.vinfo_stat** %4, align 8
  %21 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %20, i32 0, i32 18
  store i32 %19, i32* %21, align 4
  %22 = load %struct.stat64*, %struct.stat64** %3, align 8
  %23 = getelementptr inbounds %struct.stat64, %struct.stat64* %22, i32 0, i32 13
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.vinfo_stat*, %struct.vinfo_stat** %4, align 8
  %26 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %25, i32 0, i32 17
  store i32 %24, i32* %26, align 8
  %27 = load %struct.stat64*, %struct.stat64** %3, align 8
  %28 = getelementptr inbounds %struct.stat64, %struct.stat64* %27, i32 0, i32 12
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vinfo_stat*, %struct.vinfo_stat** %4, align 8
  %31 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %30, i32 0, i32 16
  store i32 %29, i32* %31, align 4
  %32 = load %struct.stat64*, %struct.stat64** %3, align 8
  %33 = getelementptr inbounds %struct.stat64, %struct.stat64* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.vinfo_stat*, %struct.vinfo_stat** %4, align 8
  %36 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %35, i32 0, i32 15
  store i32 %34, i32* %36, align 8
  %37 = load %struct.stat64*, %struct.stat64** %3, align 8
  %38 = getelementptr inbounds %struct.stat64, %struct.stat64* %37, i32 0, i32 10
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.vinfo_stat*, %struct.vinfo_stat** %4, align 8
  %42 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %41, i32 0, i32 14
  store i32 %40, i32* %42, align 4
  %43 = load %struct.stat64*, %struct.stat64** %3, align 8
  %44 = getelementptr inbounds %struct.stat64, %struct.stat64* %43, i32 0, i32 10
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.vinfo_stat*, %struct.vinfo_stat** %4, align 8
  %48 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %47, i32 0, i32 13
  store i32 %46, i32* %48, align 8
  %49 = load %struct.stat64*, %struct.stat64** %3, align 8
  %50 = getelementptr inbounds %struct.stat64, %struct.stat64* %49, i32 0, i32 9
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vinfo_stat*, %struct.vinfo_stat** %4, align 8
  %54 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %53, i32 0, i32 12
  store i32 %52, i32* %54, align 4
  %55 = load %struct.stat64*, %struct.stat64** %3, align 8
  %56 = getelementptr inbounds %struct.stat64, %struct.stat64* %55, i32 0, i32 9
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.vinfo_stat*, %struct.vinfo_stat** %4, align 8
  %60 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %59, i32 0, i32 11
  store i32 %58, i32* %60, align 8
  %61 = load %struct.stat64*, %struct.stat64** %3, align 8
  %62 = getelementptr inbounds %struct.stat64, %struct.stat64* %61, i32 0, i32 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vinfo_stat*, %struct.vinfo_stat** %4, align 8
  %66 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %65, i32 0, i32 10
  store i32 %64, i32* %66, align 4
  %67 = load %struct.stat64*, %struct.stat64** %3, align 8
  %68 = getelementptr inbounds %struct.stat64, %struct.stat64* %67, i32 0, i32 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.vinfo_stat*, %struct.vinfo_stat** %4, align 8
  %72 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %71, i32 0, i32 9
  store i32 %70, i32* %72, align 8
  %73 = load %struct.stat64*, %struct.stat64** %3, align 8
  %74 = getelementptr inbounds %struct.stat64, %struct.stat64* %73, i32 0, i32 7
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.vinfo_stat*, %struct.vinfo_stat** %4, align 8
  %78 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %77, i32 0, i32 8
  store i32 %76, i32* %78, align 4
  %79 = load %struct.stat64*, %struct.stat64** %3, align 8
  %80 = getelementptr inbounds %struct.stat64, %struct.stat64* %79, i32 0, i32 7
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.vinfo_stat*, %struct.vinfo_stat** %4, align 8
  %84 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 8
  %85 = load %struct.stat64*, %struct.stat64** %3, align 8
  %86 = getelementptr inbounds %struct.stat64, %struct.stat64* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.vinfo_stat*, %struct.vinfo_stat** %4, align 8
  %89 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 4
  %90 = load %struct.stat64*, %struct.stat64** %3, align 8
  %91 = getelementptr inbounds %struct.stat64, %struct.stat64* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.vinfo_stat*, %struct.vinfo_stat** %4, align 8
  %94 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 8
  %95 = load %struct.stat64*, %struct.stat64** %3, align 8
  %96 = getelementptr inbounds %struct.stat64, %struct.stat64* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.vinfo_stat*, %struct.vinfo_stat** %4, align 8
  %99 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 4
  %100 = load %struct.stat64*, %struct.stat64** %3, align 8
  %101 = getelementptr inbounds %struct.stat64, %struct.stat64* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.vinfo_stat*, %struct.vinfo_stat** %4, align 8
  %104 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load %struct.stat64*, %struct.stat64** %3, align 8
  %106 = getelementptr inbounds %struct.stat64, %struct.stat64* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.vinfo_stat*, %struct.vinfo_stat** %4, align 8
  %109 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load %struct.stat64*, %struct.stat64** %3, align 8
  %111 = getelementptr inbounds %struct.stat64, %struct.stat64* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.vinfo_stat*, %struct.vinfo_stat** %4, align 8
  %114 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  %115 = load %struct.stat64*, %struct.stat64** %3, align 8
  %116 = getelementptr inbounds %struct.stat64, %struct.stat64* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.vinfo_stat*, %struct.vinfo_stat** %4, align 8
  %121 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  store i32 %119, i32* %123, align 4
  %124 = load %struct.stat64*, %struct.stat64** %3, align 8
  %125 = getelementptr inbounds %struct.stat64, %struct.stat64* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.vinfo_stat*, %struct.vinfo_stat** %4, align 8
  %130 = getelementptr inbounds %struct.vinfo_stat, %struct.vinfo_stat* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  store i32 %128, i32* %132, align 4
  ret void
}

declare dso_local i32 @bzero(%struct.vinfo_stat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
