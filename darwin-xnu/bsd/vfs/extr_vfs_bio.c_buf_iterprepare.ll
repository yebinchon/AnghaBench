; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_buf_iterprepare.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_buf_iterprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.buflists, %struct.buflists }
%struct.buflists = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__** }

@VBI_DIRTY = common dso_local global i32 0, align 4
@VBI_ITER = common dso_local global i32 0, align 4
@VBI_ITERWANT = common dso_local global i32 0, align 4
@buf_mtxp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"buf_iterprepare\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.buflists*, i32)* @buf_iterprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buf_iterprepare(%struct.TYPE_7__* %0, %struct.buflists* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.buflists*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buflists*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.buflists* %1, %struct.buflists** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @VBI_DIRTY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  store %struct.buflists* %15, %struct.buflists** %8, align 8
  br label %19

16:                                               ; preds = %3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  store %struct.buflists* %18, %struct.buflists** %8, align 8
  br label %19

19:                                               ; preds = %16, %13
  br label %20

20:                                               ; preds = %27, %19
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @VBI_ITER, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load i32, i32* @VBI_ITERWANT, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* @buf_mtxp, align 4
  %36 = call i32 @msleep(i32* %34, i32 %35, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %20

37:                                               ; preds = %20
  %38 = load %struct.buflists*, %struct.buflists** %8, align 8
  %39 = call i64 @LIST_EMPTY(%struct.buflists* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.buflists*, %struct.buflists** %6, align 8
  %43 = call i32 @LIST_INIT(%struct.buflists* %42)
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %4, align 4
  br label %65

45:                                               ; preds = %37
  %46 = load i32, i32* @VBI_ITER, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.buflists*, %struct.buflists** %8, align 8
  %52 = getelementptr inbounds %struct.buflists, %struct.buflists* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load %struct.buflists*, %struct.buflists** %6, align 8
  %55 = getelementptr inbounds %struct.buflists, %struct.buflists* %54, i32 0, i32 0
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %55, align 8
  %56 = load %struct.buflists*, %struct.buflists** %6, align 8
  %57 = getelementptr inbounds %struct.buflists, %struct.buflists* %56, i32 0, i32 0
  %58 = load %struct.buflists*, %struct.buflists** %8, align 8
  %59 = getelementptr inbounds %struct.buflists, %struct.buflists* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store %struct.TYPE_6__** %57, %struct.TYPE_6__*** %62, align 8
  %63 = load %struct.buflists*, %struct.buflists** %8, align 8
  %64 = call i32 @LIST_INIT(%struct.buflists* %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %45, %41
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @msleep(i32*, i32, i32, i8*, i32*) #1

declare dso_local i64 @LIST_EMPTY(%struct.buflists*) #1

declare dso_local i32 @LIST_INIT(%struct.buflists*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
