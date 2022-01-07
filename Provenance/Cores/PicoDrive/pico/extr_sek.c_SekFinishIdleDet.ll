; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_sek.c_SekFinishIdleDet.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_sek.c_SekFinishIdleDet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@idledet_count = common dso_local global i64 0, align 8
@idledet_ptrs = common dso_local global i16** null, align 8
@EL_STATUS = common dso_local global i32 0, align 4
@EL_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"idle: don't know how to restore %04x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SekFinishIdleDet() #0 {
  %1 = alloca i16*, align 8
  br label %2

2:                                                ; preds = %70, %0
  %3 = load i64, i64* @idledet_count, align 8
  %4 = icmp ugt i64 %3, 0
  br i1 %4, label %5, label %71

5:                                                ; preds = %2
  %6 = load i16**, i16*** @idledet_ptrs, align 8
  %7 = load i64, i64* @idledet_count, align 8
  %8 = add i64 %7, -1
  store i64 %8, i64* @idledet_count, align 8
  %9 = getelementptr inbounds i16*, i16** %6, i64 %8
  %10 = load i16*, i16** %9, align 8
  store i16* %10, i16** %1, align 8
  %11 = load i16*, i16** %1, align 8
  %12 = load i16, i16* %11, align 2
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 64768
  %15 = icmp eq i32 %14, 28928
  br i1 %15, label %16, label %27

16:                                               ; preds = %5
  %17 = load i16*, i16** %1, align 8
  %18 = load i16, i16* %17, align 2
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 255
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %17, align 2
  %22 = load i16*, i16** %1, align 8
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i32
  %25 = or i32 %24, 26112
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %22, align 2
  br label %70

27:                                               ; preds = %5
  %28 = load i16*, i16** %1, align 8
  %29 = load i16, i16* %28, align 2
  %30 = zext i16 %29 to i32
  %31 = and i32 %30, 64768
  %32 = icmp eq i32 %31, 29952
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load i16*, i16** %1, align 8
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i32
  %37 = and i32 %36, 255
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %34, align 2
  %39 = load i16*, i16** %1, align 8
  %40 = load i16, i16* %39, align 2
  %41 = zext i16 %40 to i32
  %42 = or i32 %41, 26368
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %39, align 2
  br label %69

44:                                               ; preds = %27
  %45 = load i16*, i16** %1, align 8
  %46 = load i16, i16* %45, align 2
  %47 = zext i16 %46 to i32
  %48 = and i32 %47, 64768
  %49 = icmp eq i32 %48, 32000
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load i16*, i16** %1, align 8
  %52 = load i16, i16* %51, align 2
  %53 = zext i16 %52 to i32
  %54 = and i32 %53, 255
  %55 = trunc i32 %54 to i16
  store i16 %55, i16* %51, align 2
  %56 = load i16*, i16** %1, align 8
  %57 = load i16, i16* %56, align 2
  %58 = zext i16 %57 to i32
  %59 = or i32 %58, 24576
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %56, align 2
  br label %68

61:                                               ; preds = %44
  %62 = load i32, i32* @EL_STATUS, align 4
  %63 = load i32, i32* @EL_IDLE, align 4
  %64 = or i32 %62, %63
  %65 = load i16*, i16** %1, align 8
  %66 = load i16, i16* %65, align 2
  %67 = call i32 @elprintf(i32 %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i16 zeroext %66)
  br label %68

68:                                               ; preds = %61, %50
  br label %69

69:                                               ; preds = %68, %33
  br label %70

70:                                               ; preds = %69, %16
  br label %2

71:                                               ; preds = %2
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
