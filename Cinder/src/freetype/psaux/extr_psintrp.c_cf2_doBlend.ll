; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/psaux/extr_psintrp.c_cf2_doBlend.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/psaux/extr_psintrp.c_cf2_doBlend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i64)* @cf2_doBlend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf2_doBlend(%struct.TYPE_3__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = mul nsw i64 %14, %17
  store i64 %18, i64* %11, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @cf2_stack_count(i32 %19)
  %21 = load i64, i64* %11, align 8
  %22 = sub nsw i64 %20, %21
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %6, align 8
  %25 = add nsw i64 %23, %24
  store i64 %25, i64* %7, align 8
  store i64 0, i64* %9, align 8
  br label %26

26:                                               ; preds = %67, %3
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %70

30:                                               ; preds = %26
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32* %34, i32** %12, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %8, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @cf2_stack_getReal(i32 %35, i64 %38)
  store i32 %39, i32* %13, align 4
  store i64 1, i64* %10, align 8
  br label %40

40:                                               ; preds = %57, %30
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %40
  %47 = load i32, i32* %13, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %12, align 8
  %50 = load i32, i32* %48, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i64, i64* %7, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %7, align 8
  %54 = call i32 @cf2_stack_getReal(i32 %51, i64 %52)
  %55 = call i32 @FT_MulFix(i32 %50, i32 %54)
  %56 = call i32 @ADD_INT32(i32 %47, i32 %55)
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %46
  %58 = load i64, i64* %10, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %10, align 8
  br label %40

60:                                               ; preds = %40
  %61 = load i32, i32* %5, align 4
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %8, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @cf2_stack_setReal(i32 %61, i64 %64, i32 %65)
  br label %67

67:                                               ; preds = %60
  %68 = load i64, i64* %9, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %9, align 8
  br label %26

70:                                               ; preds = %26
  %71 = load i32, i32* %5, align 4
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %6, align 8
  %74 = sub nsw i64 %72, %73
  %75 = call i32 @cf2_stack_pop(i32 %71, i64 %74)
  ret void
}

declare dso_local i64 @cf2_stack_count(i32) #1

declare dso_local i32 @cf2_stack_getReal(i32, i64) #1

declare dso_local i32 @ADD_INT32(i32, i32) #1

declare dso_local i32 @FT_MulFix(i32, i32) #1

declare dso_local i32 @cf2_stack_setReal(i32, i64, i32) #1

declare dso_local i32 @cf2_stack_pop(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
