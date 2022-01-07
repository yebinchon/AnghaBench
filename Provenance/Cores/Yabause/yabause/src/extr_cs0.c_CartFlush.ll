; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs0.c_CartFlush.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs0.c_CartFlush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i64 }

@CartridgeArea = common dso_local global %struct.TYPE_2__* null, align 8
@CART_PAR = common dso_local global i32 0, align 4
@YAB_ERR_FILEWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CartFlush() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CartridgeArea, align 8
  %3 = icmp ne %struct.TYPE_2__* %2, null
  br i1 %3, label %4, label %69

4:                                                ; preds = %0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CartridgeArea, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @CART_PAR, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CartridgeArea, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CartridgeArea, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CartridgeArea, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @T123Save(i64 %18, i32 262144, i32 2, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load i32, i32* @YAB_ERR_FILEWRITE, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CartridgeArea, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @YabSetError(i32 %25, i8* %29)
  br label %31

31:                                               ; preds = %24, %15
  br label %32

32:                                               ; preds = %31, %10
  br label %33

33:                                               ; preds = %32, %4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CartridgeArea, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %33
  store i32 0, i32* %1, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CartridgeArea, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %46 [
    i32 129, label %42
    i32 128, label %43
    i32 131, label %44
    i32 130, label %45
  ]

42:                                               ; preds = %38
  store i32 1048576, i32* %1, align 4
  br label %46

43:                                               ; preds = %38
  store i32 2097152, i32* %1, align 4
  br label %46

44:                                               ; preds = %38
  store i32 4194304, i32* %1, align 4
  br label %46

45:                                               ; preds = %38
  store i32 8388608, i32* %1, align 4
  br label %46

46:                                               ; preds = %38, %45, %44, %43, %42
  %47 = load i32, i32* %1, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CartridgeArea, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %1, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CartridgeArea, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @T123Save(i64 %52, i32 %53, i32 1, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load i32, i32* @YAB_ERR_FILEWRITE, align 4
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CartridgeArea, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @YabSetError(i32 %60, i8* %64)
  br label %66

66:                                               ; preds = %59, %49
  br label %67

67:                                               ; preds = %66, %46
  br label %68

68:                                               ; preds = %67, %33
  br label %69

69:                                               ; preds = %68, %0
  ret void
}

declare dso_local i64 @T123Save(i64, i32, i32, i64) #1

declare dso_local i32 @YabSetError(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
