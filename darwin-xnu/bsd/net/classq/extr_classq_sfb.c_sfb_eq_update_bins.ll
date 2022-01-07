; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_eq_update_bins.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_eq_update_bins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfb = type { i32 }
%struct.sfbbinstats = type { i32, i32 }

@SFB_LEVELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfb*, i64, i64)* @sfb_eq_update_bins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfb_eq_update_bins(%struct.sfb* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.sfb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sfbbinstats*, align 8
  %11 = alloca i32*, align 8
  store %struct.sfb* %0, %struct.sfb** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = bitcast i64* %5 to i32*
  store i32* %12, i32** %11, align 8
  %13 = load %struct.sfb*, %struct.sfb** %4, align 8
  %14 = getelementptr inbounds %struct.sfb, %struct.sfb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = xor i32 %17, 1
  %19 = add nsw i32 %16, %18
  %20 = icmp eq i32 %19, 1
  %21 = zext i1 %20 to i32
  %22 = call i32 @VERIFY(i32 %21)
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %62, %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @SFB_LEVELS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %65

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @SFB_BINMASK(i32 %35)
  store i32 %36, i32* %8, align 4
  br label %45

37:                                               ; preds = %27
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @SFB_BINMASK(i32 %43)
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %37, %30
  %46 = load %struct.sfb*, %struct.sfb** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call %struct.sfbbinstats* @SFB_BINST(%struct.sfb* %46, i32 %47, i32 %48, i32 %49)
  store %struct.sfbbinstats* %50, %struct.sfbbinstats** %10, align 8
  %51 = load %struct.sfbbinstats*, %struct.sfbbinstats** %10, align 8
  %52 = getelementptr inbounds %struct.sfbbinstats, %struct.sfbbinstats* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.sfbbinstats*, %struct.sfbbinstats** %10, align 8
  %57 = getelementptr inbounds %struct.sfbbinstats, %struct.sfbbinstats* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %55
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  br label %62

62:                                               ; preds = %45
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %23

65:                                               ; preds = %23
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @SFB_BINMASK(i32) #1

declare dso_local %struct.sfbbinstats* @SFB_BINST(%struct.sfb*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
