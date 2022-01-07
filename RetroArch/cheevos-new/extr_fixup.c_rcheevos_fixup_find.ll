; ModuleID = '/home/carl/AnghaBench/RetroArch/cheevos-new/extr_fixup.c_rcheevos_fixup_find.c'
source_filename = "/home/carl/AnghaBench/RetroArch/cheevos-new/extr_fixup.c_rcheevos_fixup_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32* }

@rcheevos_cmpaddr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @rcheevos_fixup_find(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @rcheevos_cmpaddr, align 4
  %25 = call i32 @qsort(%struct.TYPE_9__* %20, i32 %23, i32 16, i32 %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  br label %28

28:                                               ; preds = %17, %3
  %29 = load i32, i32* %6, align 4
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @rcheevos_cmpaddr, align 4
  %38 = call i64 @bsearch(%struct.TYPE_9__* %8, %struct.TYPE_9__* %33, i32 %36, i32 16, i32 %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %9, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %41 = icmp ne %struct.TYPE_9__* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %28
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %4, align 8
  br label %113

46:                                               ; preds = %28
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %86

54:                                               ; preds = %46
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %65

60:                                               ; preds = %54
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 %63, 2
  br label %65

65:                                               ; preds = %60, %59
  %66 = phi i32 [ 16, %59 ], [ %64, %60 ]
  store i32 %66, i32* %11, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = zext i32 %70 to i64
  %72 = mul i64 %71, 16
  %73 = trunc i64 %72 to i32
  %74 = call i64 @realloc(%struct.TYPE_9__* %69, i32 %73)
  %75 = inttoptr i64 %74 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %75, %struct.TYPE_9__** %12, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %77 = icmp eq %struct.TYPE_9__* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  store i32* null, i32** %4, align 8
  br label %113

79:                                               ; preds = %65
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 3
  store %struct.TYPE_9__* %80, %struct.TYPE_9__** %82, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %79, %46
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i32 %87, i32* %96, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32* @rcheevos_patch_address(i32 %97, i32 %98)
  store i32* %99, i32** %10, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  store i32* %99, i32** %109, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  %112 = load i32*, i32** %10, align 8
  store i32* %112, i32** %4, align 8
  br label %113

113:                                              ; preds = %86, %78, %42
  %114 = load i32*, i32** %4, align 8
  ret i32* %114
}

declare dso_local i32 @qsort(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i64 @bsearch(%struct.TYPE_9__*, %struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i64 @realloc(%struct.TYPE_9__*, i32) #1

declare dso_local i32* @rcheevos_patch_address(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
