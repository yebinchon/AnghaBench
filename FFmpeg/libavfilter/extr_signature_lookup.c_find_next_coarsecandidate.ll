; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_signature_lookup.c_find_next_coarsecandidate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_signature_lookup.c_find_next_coarsecandidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, %struct.TYPE_7__**, %struct.TYPE_7__**, i32)* @find_next_coarsecandidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_next_coarsecandidate(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_7__** %2, %struct.TYPE_7__** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__**, align 8
  %10 = alloca %struct.TYPE_7__**, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__** %2, %struct.TYPE_7__*** %9, align 8
  store %struct.TYPE_7__** %3, %struct.TYPE_7__*** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %43, label %14

14:                                               ; preds = %5
  %15 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %25, align 8
  br label %42

26:                                               ; preds = %14
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %34, align 8
  %35 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %39, align 8
  br label %41

40:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %82

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %20
  br label %43

43:                                               ; preds = %42, %5
  br label %44

44:                                               ; preds = %43, %81
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = call i64 @get_jaccarddist(i32* %45, %struct.TYPE_7__* %47, %struct.TYPE_7__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 1, i32* %6, align 4
  br label %82

53:                                               ; preds = %44
  %54 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = icmp ne %struct.TYPE_7__* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %64, align 8
  br label %81

65:                                               ; preds = %53
  %66 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = icmp ne %struct.TYPE_7__* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %73 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  store %struct.TYPE_7__* %72, %struct.TYPE_7__** %73, align 8
  %74 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  store %struct.TYPE_7__* %77, %struct.TYPE_7__** %78, align 8
  br label %80

79:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %82

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %59
  br label %44

82:                                               ; preds = %79, %52, %40
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i64 @get_jaccarddist(i32*, %struct.TYPE_7__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
