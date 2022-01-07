; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/code940/extr_940.c_ym_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/code940/extr_940.c_ym_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32*, i32, i64, i8* }

@shared_ctl = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @ym_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ym_update(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %6, align 8
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %6, align 8
  br label %22

22:                                               ; preds = %18, %14
  store i32 1024, i32* %3, align 4
  br label %23

23:                                               ; preds = %60, %22
  %24 = load i32, i32* %3, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %23
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 65535
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %63

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 65534
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, i32* %5, align 4
  br label %63

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = ashr i32 %40, 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @YM2612Write_(i32 %41, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = ashr i32 %44, 16
  store i32 %45, i32* %7, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 65535
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %63

51:                                               ; preds = %39
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 65534
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 1, i32* %5, align 4
  br label %63

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = ashr i32 %56, 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @YM2612Write_(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %3, align 4
  br label %23

63:                                               ; preds = %54, %50, %38, %34, %23
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %127

66:                                               ; preds = %63
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = sdiv i32 %69, 2
  store i32 %70, i32* %8, align 4
  %71 = load i32*, i32** %2, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = call i8* @YM2612UpdateOne_(i32* %71, i32 %72, i64 %75, i32 1)
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 5
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* %3, align 4
  %80 = mul nsw i32 %79, 2
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %96, %66
  %82 = load i32, i32* %3, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %81
  %85 = load i32*, i32** %6, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %6, align 8
  %87 = load i32, i32* %85, align 4
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp eq i32 %88, 65535
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %99

91:                                               ; preds = %84
  %92 = load i32, i32* %9, align 4
  %93 = ashr i32 %92, 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @YM2612Write_(i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %91
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %3, align 4
  br label %81

99:                                               ; preds = %90, %81
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32, i32* %8, align 4
  %106 = mul nsw i32 %105, 2
  br label %109

107:                                              ; preds = %99
  %108 = load i32, i32* %8, align 4
  br label %109

109:                                              ; preds = %107, %104
  %110 = phi i32 [ %106, %104 ], [ %108, %107 ]
  %111 = load i32*, i32** %2, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32* %113, i32** %2, align 8
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sub nsw i32 %116, %117
  store i32 %118, i32* %8, align 4
  %119 = load i32*, i32** %2, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = call i8* @YM2612UpdateOne_(i32* %119, i32 %120, i64 %123, i32 1)
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 5
  store i8* %124, i8** %126, align 8
  br label %138

127:                                              ; preds = %63
  %128 = load i32*, i32** %2, align 8
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = call i8* @YM2612UpdateOne_(i32* %128, i32 %131, i64 %134, i32 1)
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 5
  store i8* %135, i8** %137, align 8
  br label %138

138:                                              ; preds = %127, %109
  ret void
}

declare dso_local i32 @YM2612Write_(i32, i32) #1

declare dso_local i8* @YM2612UpdateOne_(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
