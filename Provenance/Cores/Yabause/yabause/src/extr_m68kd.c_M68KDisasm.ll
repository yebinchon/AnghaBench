; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_m68kd.c_M68KDisasm.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_m68kd.c_M68KDisasm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 (i64, i32, i8*)*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"%05X: \00", align 1
@instruction = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @M68KDisasm(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = trunc i64 %9 to i32
  %11 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i8*, i8** %5, align 8
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  store i8* %14, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %56, %2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instruction, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %59

23:                                               ; preds = %15
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @c68k_word_read(i64 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instruction, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %26, %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instruction, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %33, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %23
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @instruction, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i64 (i64, i32, i8*)*, i64 (i64, i32, i8*)** %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = call i64 %47(i64 %48, i32 %49, i8* %50)
  %52 = load i64, i64* %4, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %4, align 8
  %54 = load i64, i64* %4, align 8
  store i64 %54, i64* %3, align 8
  br label %64

55:                                               ; preds = %23
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %15

59:                                               ; preds = %15
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 (i8*, i8*, ...) @sprintf(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i64, i64* %4, align 8
  %63 = add nsw i64 %62, 2
  store i64 %63, i64* %3, align 8
  br label %64

64:                                               ; preds = %59, %41
  %65 = load i64, i64* %3, align 8
  ret i64 %65
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @c68k_word_read(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
