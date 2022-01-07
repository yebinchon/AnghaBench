; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cz80/extr_cz80.c_Cz80_Set_Reg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cz80/extr_cz80.c_Cz80_Set_Reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64*, i64, i64, i64, i32*, i32 }

@CZ80_FETCH_SFT = common dso_local global i64 0, align 8
@zSP = common dso_local global i64 0, align 8
@zAF = common dso_local global i64 0, align 8
@zBC = common dso_local global i64 0, align 8
@zDE = common dso_local global i64 0, align 8
@zHL = common dso_local global i64 0, align 8
@zIX = common dso_local global i64 0, align 8
@zIY = common dso_local global i64 0, align 8
@zAF2 = common dso_local global i64 0, align 8
@zBC2 = common dso_local global i64 0, align 8
@zDE2 = common dso_local global i64 0, align 8
@zHL2 = common dso_local global i64 0, align 8
@zR = common dso_local global i64 0, align 8
@zI = common dso_local global i64 0, align 8
@zIM = common dso_local global i64 0, align 8
@zIFF1 = common dso_local global i32 0, align 4
@zIFF2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cz80_Set_Reg(%struct.TYPE_3__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %72 [
    i32 130, label %8
    i32 128, label %26
    i32 146, label %28
    i32 144, label %30
    i32 142, label %32
    i32 139, label %34
    i32 132, label %36
    i32 131, label %38
    i32 145, label %40
    i32 143, label %42
    i32 141, label %44
    i32 138, label %46
    i32 129, label %48
    i32 137, label %50
    i32 134, label %52
    i32 136, label %54
    i32 135, label %59
    i32 140, label %64
    i32 133, label %68
  ]

8:                                                ; preds = %3
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @CZ80_FETCH_SFT, align 8
  %14 = lshr i64 %12, %13
  %15 = getelementptr inbounds i64, i64* %11, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %19, %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  br label %73

26:                                               ; preds = %3
  %27 = load i64, i64* %6, align 8
  store i64 %27, i64* @zSP, align 8
  br label %73

28:                                               ; preds = %3
  %29 = load i64, i64* %6, align 8
  store i64 %29, i64* @zAF, align 8
  br label %73

30:                                               ; preds = %3
  %31 = load i64, i64* %6, align 8
  store i64 %31, i64* @zBC, align 8
  br label %73

32:                                               ; preds = %3
  %33 = load i64, i64* %6, align 8
  store i64 %33, i64* @zDE, align 8
  br label %73

34:                                               ; preds = %3
  %35 = load i64, i64* %6, align 8
  store i64 %35, i64* @zHL, align 8
  br label %73

36:                                               ; preds = %3
  %37 = load i64, i64* %6, align 8
  store i64 %37, i64* @zIX, align 8
  br label %73

38:                                               ; preds = %3
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* @zIY, align 8
  br label %73

40:                                               ; preds = %3
  %41 = load i64, i64* %6, align 8
  store i64 %41, i64* @zAF2, align 8
  br label %73

42:                                               ; preds = %3
  %43 = load i64, i64* %6, align 8
  store i64 %43, i64* @zBC2, align 8
  br label %73

44:                                               ; preds = %3
  %45 = load i64, i64* %6, align 8
  store i64 %45, i64* @zDE2, align 8
  br label %73

46:                                               ; preds = %3
  %47 = load i64, i64* %6, align 8
  store i64 %47, i64* @zHL2, align 8
  br label %73

48:                                               ; preds = %3
  %49 = load i64, i64* %6, align 8
  store i64 %49, i64* @zR, align 8
  br label %73

50:                                               ; preds = %3
  %51 = load i64, i64* %6, align 8
  store i64 %51, i64* @zI, align 8
  br label %73

52:                                               ; preds = %3
  %53 = load i64, i64* %6, align 8
  store i64 %53, i64* @zIM, align 8
  br label %73

54:                                               ; preds = %3
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 4, i32 0
  store i32 %58, i32* @zIFF1, align 4
  br label %73

59:                                               ; preds = %3
  %60 = load i64, i64* %6, align 8
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 4, i32 0
  store i32 %63, i32* @zIFF2, align 4
  br label %73

64:                                               ; preds = %3
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  store i64 %65, i64* %67, align 8
  br label %73

68:                                               ; preds = %3
  %69 = load i64, i64* %6, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 4
  store i64 %69, i64* %71, align 8
  br label %73

72:                                               ; preds = %3
  br label %73

73:                                               ; preds = %72, %68, %64, %59, %54, %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
