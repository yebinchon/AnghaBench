; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/mockfs/extr_mockfs_vnops.c_mockfs_pagein.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/mockfs/extr_mockfs_vnops.c_mockfs_pagein.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_pagein_args = type { i32, i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [48 x i8] c"mockfs_pagein called for a memory-backed device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mockfs_pagein(%struct.vnop_pagein_args* %0) #0 {
  %2 = alloca %struct.vnop_pagein_args*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.vnop_pagein_args* %0, %struct.vnop_pagein_args** %2, align 8
  %5 = load %struct.vnop_pagein_args*, %struct.vnop_pagein_args** %2, align 8
  %6 = getelementptr inbounds %struct.vnop_pagein_args, %struct.vnop_pagein_args* %5, i32 0, i32 5
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %3, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %4, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %1
  %24 = load %struct.vnop_pagein_args*, %struct.vnop_pagein_args** %2, align 8
  %25 = getelementptr inbounds %struct.vnop_pagein_args, %struct.vnop_pagein_args* %24, i32 0, i32 5
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = load %struct.vnop_pagein_args*, %struct.vnop_pagein_args** %2, align 8
  %28 = getelementptr inbounds %struct.vnop_pagein_args, %struct.vnop_pagein_args* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.vnop_pagein_args*, %struct.vnop_pagein_args** %2, align 8
  %31 = getelementptr inbounds %struct.vnop_pagein_args, %struct.vnop_pagein_args* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vnop_pagein_args*, %struct.vnop_pagein_args** %2, align 8
  %34 = getelementptr inbounds %struct.vnop_pagein_args, %struct.vnop_pagein_args* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.vnop_pagein_args*, %struct.vnop_pagein_args** %2, align 8
  %37 = getelementptr inbounds %struct.vnop_pagein_args, %struct.vnop_pagein_args* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.vnop_pagein_args*, %struct.vnop_pagein_args** %2, align 8
  %43 = getelementptr inbounds %struct.vnop_pagein_args, %struct.vnop_pagein_args* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @cluster_pagein(%struct.TYPE_8__* %26, i32 %29, i32 %32, i32 %35, i32 %38, i32 %41, i32 %44)
  ret i32 %45
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @cluster_pagein(%struct.TYPE_8__*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
