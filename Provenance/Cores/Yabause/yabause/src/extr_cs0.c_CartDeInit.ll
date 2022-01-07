; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs0.c_CartDeInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs0.c_CartDeInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64, i64 }

@CartridgeArea = common dso_local global %struct.TYPE_3__* null, align 8
@CART_PAR = common dso_local global i32 0, align 4
@YAB_ERR_FILEWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CartDeInit() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CartridgeArea, align 8
  %3 = icmp ne %struct.TYPE_3__* %2, null
  br i1 %3, label %4, label %100

4:                                                ; preds = %0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CartridgeArea, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @CART_PAR, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CartridgeArea, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CartridgeArea, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CartridgeArea, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @T123Save(i64 %18, i32 262144, i32 2, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load i32, i32* @YAB_ERR_FILEWRITE, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CartridgeArea, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @YabSetError(i32 %25, i8* %29)
  br label %31

31:                                               ; preds = %24, %15
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CartridgeArea, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @T2MemoryDeInit(i64 %34)
  br label %36

36:                                               ; preds = %31, %10
  br label %48

37:                                               ; preds = %4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CartridgeArea, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CartridgeArea, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @T1MemoryDeInit(i64 %45)
  br label %47

47:                                               ; preds = %42, %37
  br label %48

48:                                               ; preds = %47, %36
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CartridgeArea, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %87

53:                                               ; preds = %48
  store i32 0, i32* %1, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CartridgeArea, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %61 [
    i32 129, label %57
    i32 128, label %58
    i32 131, label %59
    i32 130, label %60
  ]

57:                                               ; preds = %53
  store i32 1048576, i32* %1, align 4
  br label %61

58:                                               ; preds = %53
  store i32 2097152, i32* %1, align 4
  br label %61

59:                                               ; preds = %53
  store i32 4194304, i32* %1, align 4
  br label %61

60:                                               ; preds = %53
  store i32 8388608, i32* %1, align 4
  br label %61

61:                                               ; preds = %53, %60, %59, %58, %57
  %62 = load i32, i32* %1, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %61
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CartridgeArea, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %1, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CartridgeArea, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @T123Save(i64 %67, i32 %68, i32 1, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %64
  %75 = load i32, i32* @YAB_ERR_FILEWRITE, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CartridgeArea, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = call i32 @YabSetError(i32 %75, i8* %79)
  br label %81

81:                                               ; preds = %74, %64
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CartridgeArea, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @T1MemoryDeInit(i64 %84)
  br label %86

86:                                               ; preds = %81, %61
  br label %87

87:                                               ; preds = %86, %48
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CartridgeArea, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CartridgeArea, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @T1MemoryDeInit(i64 %95)
  br label %97

97:                                               ; preds = %92, %87
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CartridgeArea, align 8
  %99 = call i32 @free(%struct.TYPE_3__* %98)
  br label %100

100:                                              ; preds = %97, %0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** @CartridgeArea, align 8
  ret void
}

declare dso_local i64 @T123Save(i64, i32, i32, i64) #1

declare dso_local i32 @YabSetError(i32, i8*) #1

declare dso_local i32 @T2MemoryDeInit(i64) #1

declare dso_local i32 @T1MemoryDeInit(i64) #1

declare dso_local i32 @free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
