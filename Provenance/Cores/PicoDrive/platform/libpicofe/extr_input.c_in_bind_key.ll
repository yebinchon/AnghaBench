; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_input.c_in_bind_key.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_input.c_in_bind_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32 (i32, i32*, i32*)* }

@IN_BINDTYPE_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_bind_key(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.TYPE_4__* @get_dev(i32 %16)
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %14, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %19 = icmp eq %struct.TYPE_4__* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @IN_BINDTYPE_COUNT, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %5
  store i32 -1, i32* %6, align 4
  br label %118

25:                                               ; preds = %20
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %13, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %51

33:                                               ; preds = %25
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %118

37:                                               ; preds = %33
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %13, align 4
  %42 = call i32* @in_alloc_binds(i32 %40, i32 %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  store i32 -1, i32* %6, align 4
  br label %118

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %25
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %51
  store i32 -1, i32* %6, align 4
  br label %118

59:                                               ; preds = %54
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i64 @IN_BIND_OFFS(i32 %68, i32 %69)
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %64
  store i32 %73, i32* %71, align 4
  br label %85

74:                                               ; preds = %59
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i64 @IN_BIND_OFFS(i32 %79, i32 %80)
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = xor i32 %83, %75
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %74, %62
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, i32*, i32*)* @DRV(i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 (i32, i32*, i32*)* %89, i32 (i32, i32*, i32*)** %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %92 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %91, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* @IN_BINDTYPE_COUNT, align 4
  %104 = mul nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  %107 = call i32 %92(i32 %95, i32* %98, i32* %106)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %85
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @free(i32* %113)
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  store i32* null, i32** %116, align 8
  br label %117

117:                                              ; preds = %110, %85
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %117, %58, %49, %36, %24
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local %struct.TYPE_4__* @get_dev(i32) #1

declare dso_local i32* @in_alloc_binds(i32, i32) #1

declare dso_local i64 @IN_BIND_OFFS(i32, i32) #1

declare dso_local i32 (i32, i32*, i32*)* @DRV(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
