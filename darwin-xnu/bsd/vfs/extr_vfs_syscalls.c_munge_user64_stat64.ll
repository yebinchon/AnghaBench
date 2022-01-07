; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_munge_user64_stat64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_munge_user64_stat64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat64 = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.user64_stat64 = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_9__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @munge_user64_stat64(%struct.stat64* %0, %struct.user64_stat64* %1) #0 {
  %3 = alloca %struct.stat64*, align 8
  %4 = alloca %struct.user64_stat64*, align 8
  store %struct.stat64* %0, %struct.stat64** %3, align 8
  store %struct.user64_stat64* %1, %struct.user64_stat64** %4, align 8
  %5 = load %struct.user64_stat64*, %struct.user64_stat64** %4, align 8
  %6 = call i32 @bzero(%struct.user64_stat64* %5, i32 128)
  %7 = load %struct.stat64*, %struct.stat64** %3, align 8
  %8 = getelementptr inbounds %struct.stat64, %struct.stat64* %7, i32 0, i32 25
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.user64_stat64*, %struct.user64_stat64** %4, align 8
  %11 = getelementptr inbounds %struct.user64_stat64, %struct.user64_stat64* %10, i32 0, i32 25
  store i32 %9, i32* %11, align 8
  %12 = load %struct.stat64*, %struct.stat64** %3, align 8
  %13 = getelementptr inbounds %struct.stat64, %struct.stat64* %12, i32 0, i32 24
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.user64_stat64*, %struct.user64_stat64** %4, align 8
  %16 = getelementptr inbounds %struct.user64_stat64, %struct.user64_stat64* %15, i32 0, i32 24
  store i32 %14, i32* %16, align 4
  %17 = load %struct.stat64*, %struct.stat64** %3, align 8
  %18 = getelementptr inbounds %struct.stat64, %struct.stat64* %17, i32 0, i32 23
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.user64_stat64*, %struct.user64_stat64** %4, align 8
  %21 = getelementptr inbounds %struct.user64_stat64, %struct.user64_stat64* %20, i32 0, i32 23
  store i32 %19, i32* %21, align 8
  %22 = load %struct.stat64*, %struct.stat64** %3, align 8
  %23 = getelementptr inbounds %struct.stat64, %struct.stat64* %22, i32 0, i32 22
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.user64_stat64*, %struct.user64_stat64** %4, align 8
  %26 = getelementptr inbounds %struct.user64_stat64, %struct.user64_stat64* %25, i32 0, i32 22
  store i32 %24, i32* %26, align 4
  %27 = load %struct.stat64*, %struct.stat64** %3, align 8
  %28 = getelementptr inbounds %struct.stat64, %struct.stat64* %27, i32 0, i32 21
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.user64_stat64*, %struct.user64_stat64** %4, align 8
  %31 = getelementptr inbounds %struct.user64_stat64, %struct.user64_stat64* %30, i32 0, i32 21
  store i32 %29, i32* %31, align 8
  %32 = load %struct.stat64*, %struct.stat64** %3, align 8
  %33 = getelementptr inbounds %struct.stat64, %struct.stat64* %32, i32 0, i32 20
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.user64_stat64*, %struct.user64_stat64** %4, align 8
  %36 = getelementptr inbounds %struct.user64_stat64, %struct.user64_stat64* %35, i32 0, i32 20
  store i32 %34, i32* %36, align 4
  %37 = load %struct.stat64*, %struct.stat64** %3, align 8
  %38 = getelementptr inbounds %struct.stat64, %struct.stat64* %37, i32 0, i32 19
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.user64_stat64*, %struct.user64_stat64** %4, align 8
  %41 = getelementptr inbounds %struct.user64_stat64, %struct.user64_stat64* %40, i32 0, i32 19
  store i32 %39, i32* %41, align 8
  %42 = load %struct.stat64*, %struct.stat64** %3, align 8
  %43 = getelementptr inbounds %struct.stat64, %struct.stat64* %42, i32 0, i32 18
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.user64_stat64*, %struct.user64_stat64** %4, align 8
  %47 = getelementptr inbounds %struct.user64_stat64, %struct.user64_stat64* %46, i32 0, i32 18
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.stat64*, %struct.stat64** %3, align 8
  %50 = getelementptr inbounds %struct.stat64, %struct.stat64* %49, i32 0, i32 18
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.user64_stat64*, %struct.user64_stat64** %4, align 8
  %54 = getelementptr inbounds %struct.user64_stat64, %struct.user64_stat64* %53, i32 0, i32 18
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.stat64*, %struct.stat64** %3, align 8
  %57 = getelementptr inbounds %struct.stat64, %struct.stat64* %56, i32 0, i32 17
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.user64_stat64*, %struct.user64_stat64** %4, align 8
  %61 = getelementptr inbounds %struct.user64_stat64, %struct.user64_stat64* %60, i32 0, i32 17
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.stat64*, %struct.stat64** %3, align 8
  %64 = getelementptr inbounds %struct.stat64, %struct.stat64* %63, i32 0, i32 17
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.user64_stat64*, %struct.user64_stat64** %4, align 8
  %68 = getelementptr inbounds %struct.user64_stat64, %struct.user64_stat64* %67, i32 0, i32 17
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.stat64*, %struct.stat64** %3, align 8
  %71 = getelementptr inbounds %struct.stat64, %struct.stat64* %70, i32 0, i32 16
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.user64_stat64*, %struct.user64_stat64** %4, align 8
  %75 = getelementptr inbounds %struct.user64_stat64, %struct.user64_stat64* %74, i32 0, i32 16
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load %struct.stat64*, %struct.stat64** %3, align 8
  %78 = getelementptr inbounds %struct.stat64, %struct.stat64* %77, i32 0, i32 16
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.user64_stat64*, %struct.user64_stat64** %4, align 8
  %82 = getelementptr inbounds %struct.user64_stat64, %struct.user64_stat64* %81, i32 0, i32 16
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load %struct.stat64*, %struct.stat64** %3, align 8
  %85 = getelementptr inbounds %struct.stat64, %struct.stat64* %84, i32 0, i32 15
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.user64_stat64*, %struct.user64_stat64** %4, align 8
  %89 = getelementptr inbounds %struct.user64_stat64, %struct.user64_stat64* %88, i32 0, i32 15
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 4
  %91 = load %struct.stat64*, %struct.stat64** %3, align 8
  %92 = getelementptr inbounds %struct.stat64, %struct.stat64* %91, i32 0, i32 15
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.user64_stat64*, %struct.user64_stat64** %4, align 8
  %96 = getelementptr inbounds %struct.user64_stat64, %struct.user64_stat64* %95, i32 0, i32 15
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  %98 = load %struct.stat64*, %struct.stat64** %3, align 8
  %99 = getelementptr inbounds %struct.stat64, %struct.stat64* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.user64_stat64*, %struct.user64_stat64** %4, align 8
  %102 = getelementptr inbounds %struct.user64_stat64, %struct.user64_stat64* %101, i32 0, i32 6
  store i32 %100, i32* %102, align 4
  %103 = load %struct.stat64*, %struct.stat64** %3, align 8
  %104 = getelementptr inbounds %struct.stat64, %struct.stat64* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.user64_stat64*, %struct.user64_stat64** %4, align 8
  %107 = getelementptr inbounds %struct.user64_stat64, %struct.user64_stat64* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 8
  %108 = load %struct.stat64*, %struct.stat64** %3, align 8
  %109 = getelementptr inbounds %struct.stat64, %struct.stat64* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.user64_stat64*, %struct.user64_stat64** %4, align 8
  %112 = getelementptr inbounds %struct.user64_stat64, %struct.user64_stat64* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 4
  %113 = load %struct.stat64*, %struct.stat64** %3, align 8
  %114 = getelementptr inbounds %struct.stat64, %struct.stat64* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.user64_stat64*, %struct.user64_stat64** %4, align 8
  %117 = getelementptr inbounds %struct.user64_stat64, %struct.user64_stat64* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 8
  %118 = load %struct.stat64*, %struct.stat64** %3, align 8
  %119 = getelementptr inbounds %struct.stat64, %struct.stat64* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.user64_stat64*, %struct.user64_stat64** %4, align 8
  %122 = getelementptr inbounds %struct.user64_stat64, %struct.user64_stat64* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 4
  %123 = load %struct.stat64*, %struct.stat64** %3, align 8
  %124 = getelementptr inbounds %struct.stat64, %struct.stat64* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.user64_stat64*, %struct.user64_stat64** %4, align 8
  %127 = getelementptr inbounds %struct.user64_stat64, %struct.user64_stat64* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 8
  %128 = load %struct.stat64*, %struct.stat64** %3, align 8
  %129 = getelementptr inbounds %struct.stat64, %struct.stat64* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.user64_stat64*, %struct.user64_stat64** %4, align 8
  %134 = getelementptr inbounds %struct.user64_stat64, %struct.user64_stat64* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  store i32 %132, i32* %136, align 4
  %137 = load %struct.stat64*, %struct.stat64** %3, align 8
  %138 = getelementptr inbounds %struct.stat64, %struct.stat64* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.user64_stat64*, %struct.user64_stat64** %4, align 8
  %143 = getelementptr inbounds %struct.user64_stat64, %struct.user64_stat64* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  store i32 %141, i32* %145, align 4
  ret void
}

declare dso_local i32 @bzero(%struct.user64_stat64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
