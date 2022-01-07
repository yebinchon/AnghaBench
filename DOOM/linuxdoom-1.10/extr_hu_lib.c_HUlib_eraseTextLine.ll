; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_hu_lib.c_HUlib_eraseTextLine.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_hu_lib.c_HUlib_eraseTextLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }

@HUlib_eraseTextLine.lastautomapactive = internal global i32 1, align 4
@automapactive = common dso_local global i32 0, align 4
@viewwindowx = common dso_local global i32 0, align 4
@SCREENWIDTH = common dso_local global i32 0, align 4
@viewwindowy = common dso_local global i32 0, align 4
@viewheight = common dso_local global i32 0, align 4
@viewwidth = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HUlib_eraseTextLine(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load i32, i32* @automapactive, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %73, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @viewwindowx, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %73

11:                                               ; preds = %8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %73

16:                                               ; preds = %11
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %19, i64 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @SHORT(i32 %23)
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @SCREENWIDTH, align 4
  %31 = mul nsw i32 %29, %30
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %66, %16
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %36, %37
  %39 = icmp slt i32 %33, %38
  br i1 %39, label %40, label %72

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @viewwindowy, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @viewwindowy, align 4
  %47 = load i32, i32* @viewheight, align 4
  %48 = add nsw i32 %46, %47
  %49 = icmp sge i32 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44, %40
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @SCREENWIDTH, align 4
  %53 = call i32 @R_VideoErase(i32 %51, i32 %52)
  br label %65

54:                                               ; preds = %44
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @viewwindowx, align 4
  %57 = call i32 @R_VideoErase(i32 %55, i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @viewwindowx, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* @viewwidth, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* @viewwindowx, align 4
  %64 = call i32 @R_VideoErase(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %54, %50
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* @SCREENWIDTH, align 4
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %5, align 4
  br label %32

72:                                               ; preds = %32
  br label %73

73:                                               ; preds = %72, %11, %8, %1
  %74 = load i32, i32* @automapactive, align 4
  store i32 %74, i32* @HUlib_eraseTextLine.lastautomapactive, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, -1
  store i64 %83, i64* %81, align 8
  br label %84

84:                                               ; preds = %79, %73
  ret void
}

declare dso_local i32 @SHORT(i32) #1

declare dso_local i32 @R_VideoErase(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
