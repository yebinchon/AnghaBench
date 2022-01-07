; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_drop_early.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_drop_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfb = type { i32, i64, i32 }
%struct.timespec = type { i32 }
%struct.sfbbinstats = type { i64, i64 }

@SFB_LEVELS = common dso_local global i32 0, align 4
@SFB_FC_LEVEL = common dso_local global i32 0, align 4
@SFBF_SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfb*, i32, i64*, %struct.timespec*)* @sfb_drop_early to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfb_drop_early(%struct.sfb* %0, i32 %1, i64* %2, %struct.timespec* %3) #0 {
  %5 = alloca %struct.sfb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sfbbinstats*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.sfb* %0, %struct.sfb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store %struct.timespec* %3, %struct.timespec** %8, align 8
  store i32 0, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %15 = load %struct.sfb*, %struct.sfb** %5, align 8
  %16 = getelementptr inbounds %struct.sfb, %struct.sfb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = xor i32 %19, 1
  %21 = add nsw i32 %18, %20
  %22 = icmp eq i32 %21, 1
  %23 = zext i1 %22 to i32
  %24 = call i32 @VERIFY(i32 %23)
  %25 = load i64*, i64** %7, align 8
  store i64 -1, i64* %25, align 8
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %92, %4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @SFB_LEVELS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %95

30:                                               ; preds = %26
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32*, i32** %14, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @SFB_BINMASK(i32 %38)
  store i32 %39, i32* %12, align 4
  br label %48

40:                                               ; preds = %30
  %41 = load i32*, i32** %14, align 8
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @SFB_BINMASK(i32 %46)
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %40, %33
  %49 = load %struct.sfb*, %struct.sfb** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call %struct.sfbbinstats* @SFB_BINST(%struct.sfb* %49, i32 %50, i32 %51, i32 %52)
  store %struct.sfbbinstats* %53, %struct.sfbbinstats** %10, align 8
  %54 = load i64*, i64** %7, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.sfbbinstats*, %struct.sfbbinstats** %10, align 8
  %57 = getelementptr inbounds %struct.sfbbinstats, %struct.sfbbinstats* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %55, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %48
  %61 = load %struct.sfbbinstats*, %struct.sfbbinstats** %10, align 8
  %62 = getelementptr inbounds %struct.sfbbinstats, %struct.sfbbinstats* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %7, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %60, %48
  %66 = load %struct.sfbbinstats*, %struct.sfbbinstats** %10, align 8
  %67 = getelementptr inbounds %struct.sfbbinstats, %struct.sfbbinstats* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.sfb*, %struct.sfb** %5, align 8
  %70 = getelementptr inbounds %struct.sfb, %struct.sfb* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp sge i64 %68, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %65
  %74 = load %struct.sfb*, %struct.sfb** %5, align 8
  %75 = load %struct.sfbbinstats*, %struct.sfbbinstats** %10, align 8
  %76 = load %struct.sfb*, %struct.sfb** %5, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @SFB_BINFT(%struct.sfb* %76, i32 %77, i32 %78, i32 %79)
  %81 = load %struct.timespec*, %struct.timespec** %8, align 8
  %82 = call i32 @sfb_increment_bin(%struct.sfb* %74, %struct.sfbbinstats* %75, i32 %80, %struct.timespec* %81)
  br label %83

83:                                               ; preds = %73, %65
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @SFB_FC_LEVEL, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load %struct.sfb*, %struct.sfb** %5, align 8
  %89 = load %struct.sfbbinstats*, %struct.sfbbinstats** %10, align 8
  %90 = call i32 @sfb_bin_mark_or_drop(%struct.sfb* %88, %struct.sfbbinstats* %89)
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %87, %83
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %26

95:                                               ; preds = %26
  %96 = load %struct.sfb*, %struct.sfb** %5, align 8
  %97 = getelementptr inbounds %struct.sfb, %struct.sfb* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @SFBF_SUSPENDED, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  store i32 1, i32* %13, align 4
  br label %103

103:                                              ; preds = %102, %95
  %104 = load i32, i32* %13, align 4
  ret i32 %104
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @SFB_BINMASK(i32) #1

declare dso_local %struct.sfbbinstats* @SFB_BINST(%struct.sfb*, i32, i32, i32) #1

declare dso_local i32 @sfb_increment_bin(%struct.sfb*, %struct.sfbbinstats*, i32, %struct.timespec*) #1

declare dso_local i32 @SFB_BINFT(%struct.sfb*, i32, i32, i32) #1

declare dso_local i32 @sfb_bin_mark_or_drop(%struct.sfb*, %struct.sfbbinstats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
