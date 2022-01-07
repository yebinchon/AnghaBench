; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_buf_itercomplete.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_buf_itercomplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.buflists, %struct.buflists }
%struct.buflists = type { i32 }

@VBI_DIRTY = common dso_local global i32 0, align 4
@b_vnbufs = common dso_local global i32 0, align 4
@VBI_ITER = common dso_local global i32 0, align 4
@VBI_ITERWANT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.buflists*, i32)* @buf_itercomplete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buf_itercomplete(%struct.TYPE_3__* %0, %struct.buflists* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.buflists*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buflists*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.buflists* %1, %struct.buflists** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @VBI_DIRTY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  store %struct.buflists* %15, %struct.buflists** %7, align 8
  br label %19

16:                                               ; preds = %3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store %struct.buflists* %18, %struct.buflists** %7, align 8
  br label %19

19:                                               ; preds = %16, %13
  br label %20

20:                                               ; preds = %25, %19
  %21 = load %struct.buflists*, %struct.buflists** %5, align 8
  %22 = call i32 @LIST_EMPTY(%struct.buflists* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.buflists*, %struct.buflists** %5, align 8
  %27 = call i32 @LIST_FIRST(%struct.buflists* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @b_vnbufs, align 4
  %30 = call i32 @LIST_REMOVE(i32 %28, i32 %29)
  %31 = load %struct.buflists*, %struct.buflists** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @b_vnbufs, align 4
  %34 = call i32 @LIST_INSERT_HEAD(%struct.buflists* %31, i32 %32, i32 %33)
  br label %20

35:                                               ; preds = %20
  %36 = load i32, i32* @VBI_ITER, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @VBI_ITERWANT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %35
  %49 = load i32, i32* @VBI_ITERWANT, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = call i32 @wakeup(i32* %56)
  br label %58

58:                                               ; preds = %48, %35
  ret void
}

declare dso_local i32 @LIST_EMPTY(%struct.buflists*) #1

declare dso_local i32 @LIST_FIRST(%struct.buflists*) #1

declare dso_local i32 @LIST_REMOVE(i32, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(%struct.buflists*, i32, i32) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
