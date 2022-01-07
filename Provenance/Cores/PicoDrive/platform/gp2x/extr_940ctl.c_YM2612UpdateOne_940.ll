; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_940ctl.c_YM2612UpdateOne_940.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_940ctl.c_YM2612UpdateOne_940.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32, i32, i32*, i32*, i32, i32 }

@shared_data = common dso_local global %struct.TYPE_3__* null, align 8
@JOB940_YM2612UPDATEONE = common dso_local global i32 0, align 4
@shared_ctl = common dso_local global %struct.TYPE_4__* null, align 8
@writebuff_ptr = common dso_local global i32 0, align 4
@PsndLen_exc_add = common dso_local global i32 0, align 4
@PsndLen = common dso_local global i32 0, align 4
@PsndLen_exc_cnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @YM2612UpdateOne_940(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @shared_data, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %9, align 8
  %14 = load i32, i32* @JOB940_YM2612UPDATEONE, align 4
  %15 = call i64 @CHECK_BUSY(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @JOB940_YM2612UPDATEONE, align 4
  %19 = call i32 @wait_busy_940(i32 %18)
  br label %20

20:                                               ; preds = %17, %4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shared_ctl, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 %32, %33
  %35 = call i32 @memcpy32(i32* %30, i32* %31, i32 %34)
  br label %42

36:                                               ; preds = %26, %20
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 %38, %39
  %41 = call i32 @memset32(i32* %37, i32 0, i32 %40)
  br label %42

42:                                               ; preds = %36, %29
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shared_ctl, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shared_ctl, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @writebuff_ptr, align 4
  %52 = and i32 %51, 65535
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 65535, i32* %54, align 4
  br label %63

55:                                               ; preds = %42
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shared_ctl, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @writebuff_ptr, align 4
  %60 = and i32 %59, 65535
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  store i32 65535, i32* %62, align 4
  br label %63

63:                                               ; preds = %55, %47
  store i32 0, i32* @writebuff_ptr, align 4
  %64 = load i32, i32* @PsndLen_exc_add, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load i32, i32* @PsndLen, align 4
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* @PsndLen_exc_cnt, align 4
  %69 = load i32, i32* @PsndLen_exc_add, align 4
  %70 = add nsw i32 %68, %69
  %71 = icmp sge i32 %70, 65536
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %72, %66
  br label %76

76:                                               ; preds = %75, %63
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shared_ctl, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = xor i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shared_ctl, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shared_ctl, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @JOB940_YM2612UPDATEONE, align 4
  %88 = call i32 @add_job_940(i32 %87)
  %89 = load i32, i32* %10, align 4
  ret i32 %89
}

declare dso_local i64 @CHECK_BUSY(i32) #1

declare dso_local i32 @wait_busy_940(i32) #1

declare dso_local i32 @memcpy32(i32*, i32*, i32) #1

declare dso_local i32 @memset32(i32*, i32, i32) #1

declare dso_local i32 @add_job_940(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
