; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c___GX_SendFlushPrim.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c___GX_SendFlushPrim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i64 }

@__gx = common dso_local global %struct.TYPE_4__* null, align 8
@wgPipe = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__GX_SendFlushPrim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__GX_SendFlushPrim() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__gx, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__gx, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = mul nsw i32 %6, %9
  store i32 %10, i32* %1, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wgPipe, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 152, i32* %12, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__gx, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wgPipe, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 3
  %20 = sdiv i32 %19, 4
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %1, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %64

23:                                               ; preds = %0
  %24 = load i32, i32* %2, align 4
  %25 = sdiv i32 %24, 8
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %29, %23
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wgPipe, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wgPipe, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wgPipe, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wgPipe, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wgPipe, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wgPipe, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wgPipe, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wgPipe, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %3, align 4
  br label %26

48:                                               ; preds = %26
  %49 = load i32, i32* %2, align 4
  %50 = and i32 %49, 7
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* %2, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %57, %53
  %55 = load i32, i32* %2, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wgPipe, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* %2, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %2, align 4
  br label %54

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %48
  br label %64

64:                                               ; preds = %63, %0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @__gx, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
