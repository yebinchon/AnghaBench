; ModuleID = '/home/carl/AnghaBench/Arduino/bootloaders/eboot/extr_eboot.c_copy_raw.c'
source_filename = "/home/carl/AnghaBench/Arduino/bootloaders/eboot/extr_eboot.c_copy_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLASH_SECTOR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_raw(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %3
  store i32 1, i32* %4, align 4
  br label %74

23:                                               ; preds = %18
  %24 = load i32, i32* @FLASH_SECTOR_SIZE, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %9, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %29, %30
  %32 = sub nsw i32 %31, 1
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %33, 1
  %35 = xor i32 %34, -1
  %36 = and i32 %32, %35
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %61, %23
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %39
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %8, align 4
  %45 = sdiv i32 %43, %44
  %46 = call i64 @SPIEraseSector(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 2, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %72

49:                                               ; preds = %42
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @SPIRead(i32 %50, i32* %28, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 3, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %72

55:                                               ; preds = %49
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @SPIWrite(i32 %56, i32* %28, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 4, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %72

61:                                               ; preds = %55
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %11, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %11, align 4
  br label %39

71:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %72

72:                                               ; preds = %71, %60, %54, %48
  %73 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %73)
  br label %74

74:                                               ; preds = %72, %22
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @SPIEraseSector(i32) #2

declare dso_local i64 @SPIRead(i32, i32*, i32) #2

declare dso_local i64 @SPIWrite(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
