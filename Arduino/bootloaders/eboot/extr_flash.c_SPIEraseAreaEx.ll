; ModuleID = '/home/carl/AnghaBench/Arduino/bootloaders/eboot/extr_flash.c_SPIEraseAreaEx.c'
source_filename = "/home/carl/AnghaBench/Arduino/bootloaders/eboot/extr_flash.c_SPIEraseAreaEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLASH_SECTOR_SIZE = common dso_local global i32 0, align 4
@FLASH_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SPIEraseAreaEx(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @FLASH_SECTOR_SIZE, align 4
  %12 = sub nsw i32 %11, 1
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = and i32 %10, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %96

18:                                               ; preds = %2
  %19 = load i32, i32* @FLASH_BLOCK_SIZE, align 4
  %20 = load i32, i32* @FLASH_SECTOR_SIZE, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @FLASH_SECTOR_SIZE, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @FLASH_SECTOR_SIZE, align 4
  %27 = add nsw i32 %25, %26
  %28 = sub nsw i32 %27, 1
  %29 = load i32, i32* @FLASH_SECTOR_SIZE, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %52, %18
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 1
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %38, %34
  %45 = phi i1 [ false, %34 ], [ %43, %38 ]
  br i1 %45, label %46, label %57

46:                                               ; preds = %44
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @SPIEraseSector(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 2, i32* %3, align 4
  br label %96

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %8, align 4
  br label %34

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %72, %57
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* %9, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %58
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %6, align 4
  %67 = sdiv i32 %65, %66
  %68 = call i64 @SPIEraseBlock(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 3, i32* %3, align 4
  br label %96

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %8, align 4
  %78 = sub nsw i32 %77, %76
  store i32 %78, i32* %8, align 4
  br label %58

79:                                               ; preds = %58
  br label %80

80:                                               ; preds = %90, %79
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load i32, i32* %7, align 4
  %86 = call i64 @SPIEraseSector(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 4, i32* %3, align 4
  br label %96

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %8, align 4
  br label %80

95:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %88, %70, %50, %17
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @SPIEraseSector(i32) #1

declare dso_local i64 @SPIEraseBlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
