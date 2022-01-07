; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_data_sam_s8.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..depsibxmibxm.c_data_sam_s8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.data*, i32, i32, i16*)* @data_sam_s8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @data_sam_s8(%struct.data* %0, i32 %1, i32 %2, i16* %3) #0 {
  %5 = alloca %struct.data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.data* %0, %struct.data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i16* %3, i16** %8, align 8
  %13 = load %struct.data*, %struct.data** %5, align 8
  %14 = getelementptr inbounds %struct.data, %struct.data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %11, align 4
  %16 = load %struct.data*, %struct.data** %5, align 8
  %17 = getelementptr inbounds %struct.data, %struct.data* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %12, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %22, %4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* %11, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %30, %24
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %60, %34
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %35
  %40 = load i8*, i8** %12, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = and i32 %47, 255
  %49 = shl i32 %48, 8
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %50, 32767
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, 32768
  %54 = sub nsw i32 %51, %53
  %55 = trunc i32 %54 to i16
  %56 = load i16*, i16** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i16, i16* %56, i64 %58
  store i16 %55, i16* %59, align 2
  br label %60

60:                                               ; preds = %39
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %35

63:                                               ; preds = %35
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
