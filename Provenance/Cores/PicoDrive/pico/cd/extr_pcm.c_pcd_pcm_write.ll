; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_pcm.c_pcd_pcm_write.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_pcm.c_pcd_pcm_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@Pico_mcd = common dso_local global %struct.TYPE_6__* null, align 8
@EL_CD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"pcm control %02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcd_pcm_write(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @SekCyclesDoneS68k()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico_mcd, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub i32 %7, %11
  %13 = icmp sge i32 %12, 384
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @pcd_pcm_sync(i32 %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* %3, align 4
  %19 = icmp ult i32 %18, 7
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico_mcd, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 5
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico_mcd, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %21, i32* %35, align 4
  br label %78

36:                                               ; preds = %17
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 7
  br i1 %38, label %39, label %67

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 64
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, 7
  %46 = zext i32 %45 to i64
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico_mcd, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i64 %46, i64* %49, align 8
  br label %56

50:                                               ; preds = %39
  %51 = load i32, i32* %4, align 4
  %52 = and i32 %51, 15
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico_mcd, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 8
  br label %56

56:                                               ; preds = %50, %43
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico_mcd, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @EL_CD, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico_mcd, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @elprintf(i32 %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %77

67:                                               ; preds = %36
  %68 = load i32, i32* %3, align 4
  %69 = icmp eq i32 %68, 8
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i32, i32* %4, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico_mcd, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 4
  store i32 %72, i32* %75, align 8
  br label %76

76:                                               ; preds = %70, %67
  br label %77

77:                                               ; preds = %76, %56
  br label %78

78:                                               ; preds = %77, %20
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Pico_mcd, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  ret void
}

declare dso_local i32 @SekCyclesDoneS68k(...) #1

declare dso_local i32 @pcd_pcm_sync(i32) #1

declare dso_local i32 @elprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
