; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_munge_user64_stat.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_munge_user64_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.user64_stat = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @munge_user64_stat(%struct.stat* %0, %struct.user64_stat* %1) #0 {
  %3 = alloca %struct.stat*, align 8
  %4 = alloca %struct.user64_stat*, align 8
  store %struct.stat* %0, %struct.stat** %3, align 8
  store %struct.user64_stat* %1, %struct.user64_stat** %4, align 8
  %5 = load %struct.user64_stat*, %struct.user64_stat** %4, align 8
  %6 = call i32 @bzero(%struct.user64_stat* %5, i32 112)
  %7 = load %struct.stat*, %struct.stat** %3, align 8
  %8 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 22
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.user64_stat*, %struct.user64_stat** %4, align 8
  %11 = getelementptr inbounds %struct.user64_stat, %struct.user64_stat* %10, i32 0, i32 22
  store i32 %9, i32* %11, align 8
  %12 = load %struct.stat*, %struct.stat** %3, align 8
  %13 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 21
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.user64_stat*, %struct.user64_stat** %4, align 8
  %16 = getelementptr inbounds %struct.user64_stat, %struct.user64_stat* %15, i32 0, i32 21
  store i32 %14, i32* %16, align 4
  %17 = load %struct.stat*, %struct.stat** %3, align 8
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 20
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.user64_stat*, %struct.user64_stat** %4, align 8
  %21 = getelementptr inbounds %struct.user64_stat, %struct.user64_stat* %20, i32 0, i32 20
  store i32 %19, i32* %21, align 8
  %22 = load %struct.stat*, %struct.stat** %3, align 8
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 19
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.user64_stat*, %struct.user64_stat** %4, align 8
  %26 = getelementptr inbounds %struct.user64_stat, %struct.user64_stat* %25, i32 0, i32 19
  store i32 %24, i32* %26, align 4
  %27 = load %struct.stat*, %struct.stat** %3, align 8
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %27, i32 0, i32 18
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.user64_stat*, %struct.user64_stat** %4, align 8
  %31 = getelementptr inbounds %struct.user64_stat, %struct.user64_stat* %30, i32 0, i32 18
  store i32 %29, i32* %31, align 8
  %32 = load %struct.stat*, %struct.stat** %3, align 8
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %32, i32 0, i32 17
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.user64_stat*, %struct.user64_stat** %4, align 8
  %36 = getelementptr inbounds %struct.user64_stat, %struct.user64_stat* %35, i32 0, i32 17
  store i32 %34, i32* %36, align 4
  %37 = load %struct.stat*, %struct.stat** %3, align 8
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %37, i32 0, i32 16
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.user64_stat*, %struct.user64_stat** %4, align 8
  %41 = getelementptr inbounds %struct.user64_stat, %struct.user64_stat* %40, i32 0, i32 16
  store i32 %39, i32* %41, align 8
  %42 = load %struct.stat*, %struct.stat** %3, align 8
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %42, i32 0, i32 15
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.user64_stat*, %struct.user64_stat** %4, align 8
  %47 = getelementptr inbounds %struct.user64_stat, %struct.user64_stat* %46, i32 0, i32 15
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.stat*, %struct.stat** %3, align 8
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %49, i32 0, i32 15
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.user64_stat*, %struct.user64_stat** %4, align 8
  %54 = getelementptr inbounds %struct.user64_stat, %struct.user64_stat* %53, i32 0, i32 15
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.stat*, %struct.stat** %3, align 8
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %56, i32 0, i32 14
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.user64_stat*, %struct.user64_stat** %4, align 8
  %61 = getelementptr inbounds %struct.user64_stat, %struct.user64_stat* %60, i32 0, i32 14
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.stat*, %struct.stat** %3, align 8
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %63, i32 0, i32 14
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.user64_stat*, %struct.user64_stat** %4, align 8
  %68 = getelementptr inbounds %struct.user64_stat, %struct.user64_stat* %67, i32 0, i32 14
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.stat*, %struct.stat** %3, align 8
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %70, i32 0, i32 13
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.user64_stat*, %struct.user64_stat** %4, align 8
  %75 = getelementptr inbounds %struct.user64_stat, %struct.user64_stat* %74, i32 0, i32 13
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load %struct.stat*, %struct.stat** %3, align 8
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %77, i32 0, i32 13
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.user64_stat*, %struct.user64_stat** %4, align 8
  %82 = getelementptr inbounds %struct.user64_stat, %struct.user64_stat* %81, i32 0, i32 13
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load %struct.stat*, %struct.stat** %3, align 8
  %85 = getelementptr inbounds %struct.stat, %struct.stat* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.user64_stat*, %struct.user64_stat** %4, align 8
  %88 = getelementptr inbounds %struct.user64_stat, %struct.user64_stat* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 4
  %89 = load %struct.stat*, %struct.stat** %3, align 8
  %90 = getelementptr inbounds %struct.stat, %struct.stat* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.user64_stat*, %struct.user64_stat** %4, align 8
  %93 = getelementptr inbounds %struct.user64_stat, %struct.user64_stat* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 8
  %94 = load %struct.stat*, %struct.stat** %3, align 8
  %95 = getelementptr inbounds %struct.stat, %struct.stat* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.user64_stat*, %struct.user64_stat** %4, align 8
  %98 = getelementptr inbounds %struct.user64_stat, %struct.user64_stat* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 4
  %99 = load %struct.stat*, %struct.stat** %3, align 8
  %100 = getelementptr inbounds %struct.stat, %struct.stat* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.user64_stat*, %struct.user64_stat** %4, align 8
  %103 = getelementptr inbounds %struct.user64_stat, %struct.user64_stat* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 8
  %104 = load %struct.stat*, %struct.stat** %3, align 8
  %105 = getelementptr inbounds %struct.stat, %struct.stat* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.user64_stat*, %struct.user64_stat** %4, align 8
  %108 = getelementptr inbounds %struct.user64_stat, %struct.user64_stat* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load %struct.stat*, %struct.stat** %3, align 8
  %110 = getelementptr inbounds %struct.stat, %struct.stat* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.user64_stat*, %struct.user64_stat** %4, align 8
  %113 = getelementptr inbounds %struct.user64_stat, %struct.user64_stat* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  %114 = load %struct.stat*, %struct.stat** %3, align 8
  %115 = getelementptr inbounds %struct.stat, %struct.stat* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.user64_stat*, %struct.user64_stat** %4, align 8
  %120 = getelementptr inbounds %struct.user64_stat, %struct.user64_stat* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  store i32 %118, i32* %122, align 4
  %123 = load %struct.stat*, %struct.stat** %3, align 8
  %124 = getelementptr inbounds %struct.stat, %struct.stat* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.user64_stat*, %struct.user64_stat** %4, align 8
  %129 = getelementptr inbounds %struct.user64_stat, %struct.user64_stat* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  store i32 %127, i32* %131, align 4
  ret void
}

declare dso_local i32 @bzero(%struct.user64_stat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
