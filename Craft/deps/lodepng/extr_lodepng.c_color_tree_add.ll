; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_color_tree_add.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_color_tree_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8, i8, i8, i8, i32)* @color_tree_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @color_tree_add(%struct.TYPE_4__* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3, i8 zeroext %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i8 %1, i8* %8, align 1
  store i8 %2, i8* %9, align 1
  store i8 %3, i8* %10, align 1
  store i8 %4, i8* %11, align 1
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %79, %6
  %16 = load i32, i32* %13, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %82

18:                                               ; preds = %15
  %19 = load i8, i8* %8, align 1
  %20 = zext i8 %19 to i32
  %21 = load i32, i32* %13, align 4
  %22 = ashr i32 %20, %21
  %23 = and i32 %22, 1
  %24 = mul nsw i32 8, %23
  %25 = load i8, i8* %9, align 1
  %26 = zext i8 %25 to i32
  %27 = load i32, i32* %13, align 4
  %28 = ashr i32 %26, %27
  %29 = and i32 %28, 1
  %30 = mul nsw i32 4, %29
  %31 = add nsw i32 %24, %30
  %32 = load i8, i8* %10, align 1
  %33 = zext i8 %32 to i32
  %34 = load i32, i32* %13, align 4
  %35 = ashr i32 %33, %34
  %36 = and i32 %35, 1
  %37 = mul nsw i32 2, %36
  %38 = add nsw i32 %31, %37
  %39 = load i8, i8* %11, align 1
  %40 = zext i8 %39 to i32
  %41 = load i32, i32* %13, align 4
  %42 = ashr i32 %40, %41
  %43 = and i32 %42, 1
  %44 = mul nsw i32 1, %43
  %45 = add nsw i32 %38, %44
  store i32 %45, i32* %14, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %47, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %48, i64 %50
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = icmp ne %struct.TYPE_4__* %52, null
  br i1 %53, label %71, label %54

54:                                               ; preds = %18
  %55 = call i64 @lodepng_malloc(i32 16)
  %56 = inttoptr i64 %55 to %struct.TYPE_4__*
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %59, i64 %61
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %62, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %64, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %65, i64 %67
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = call i32 @color_tree_init(%struct.TYPE_4__* %69)
  br label %71

71:                                               ; preds = %54, %18
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %74, i64 %76
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  store %struct.TYPE_4__* %78, %struct.TYPE_4__** %7, align 8
  br label %79

79:                                               ; preds = %71
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %15

82:                                               ; preds = %15
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  ret void
}

declare dso_local i64 @lodepng_malloc(i32) #1

declare dso_local i32 @color_tree_init(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
