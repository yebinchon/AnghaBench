; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-sound.c_MakeDMABuffer.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-sound.c_MakeDMABuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fragsize = common dso_local global i32 0, align 4
@format = common dso_local global i32 0, align 4
@LMSelector = common dso_local global i32 0, align 4
@LMBuffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @MakeDMABuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MakeDMABuffer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @fragsize, align 4
  %5 = mul nsw i32 %4, 2
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* @format, align 4
  %7 = load i32, i32* %2, align 4
  %8 = shl i32 %7, %6
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = shl i32 %9, 1
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = add nsw i32 %11, 15
  %13 = ashr i32 %12, 4
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @__dpmi_allocate_dos_memory(i32 %14, i32* @LMSelector)
  store i32 %15, i32* %3, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %68

18:                                               ; preds = %0
  %19 = load i32, i32* %3, align 4
  %20 = shl i32 %19, 4
  store i32 %20, i32* %3, align 4
  store i32 %20, i32* @LMBuffer, align 4
  %21 = load i32, i32* @format, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = load i32, i32* @LMBuffer, align 4
  %25 = and i32 %24, 131072
  %26 = load i32, i32* @LMBuffer, align 4
  %27 = load i32, i32* @fragsize, align 4
  %28 = mul nsw i32 %27, 2
  %29 = mul nsw i32 %28, 2
  %30 = add nsw i32 %26, %29
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %31, 131072
  %33 = icmp ne i32 %25, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %23
  %35 = load i32, i32* @fragsize, align 4
  %36 = mul nsw i32 %35, 2
  %37 = mul nsw i32 %36, 2
  %38 = load i32, i32* @LMBuffer, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* @LMBuffer, align 4
  br label %40

40:                                               ; preds = %34, %23
  br label %57

41:                                               ; preds = %18
  %42 = load i32, i32* @LMBuffer, align 4
  %43 = and i32 %42, 65536
  %44 = load i32, i32* @LMBuffer, align 4
  %45 = load i32, i32* @fragsize, align 4
  %46 = mul nsw i32 %45, 2
  %47 = add nsw i32 %44, %46
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %48, 65536
  %50 = icmp ne i32 %43, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load i32, i32* @fragsize, align 4
  %53 = mul nsw i32 %52, 2
  %54 = load i32, i32* @LMBuffer, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* @LMBuffer, align 4
  br label %56

56:                                               ; preds = %51, %41
  br label %57

57:                                               ; preds = %56, %40
  %58 = load i32, i32* @LMBuffer, align 4
  %59 = load i32, i32* @format, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 0, i32 128
  %63 = load i32, i32* @fragsize, align 4
  %64 = mul nsw i32 %63, 2
  %65 = load i32, i32* @format, align 4
  %66 = shl i32 %64, %65
  %67 = call i32 @DOSMemSet(i32 %58, i32 %62, i32 %66)
  store i32 1, i32* %1, align 4
  br label %68

68:                                               ; preds = %57, %17
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

declare dso_local i32 @__dpmi_allocate_dos_memory(i32, i32*) #1

declare dso_local i32 @DOSMemSet(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
