; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2MpegSetMode.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2MpegSetMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@Cs2Area = common dso_local global %struct.TYPE_6__* null, align 8
@CDB_HIRQ_CMOK = common dso_local global i32 0, align 4
@CDB_HIRQ_MPCM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cs2MpegSetMode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 255
  store i32 %9, i32* %1, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 8
  store i32 %14, i32* %2, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 255
  store i32 %19, i32* %3, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 8
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %1, align 4
  %26 = icmp ne i32 %25, 255
  br i1 %26, label %27, label %32

27:                                               ; preds = %0
  %28 = load i32, i32* %1, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %27, %0
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 255
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* %2, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, 255
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 255
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %48
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @doMPEGReport(i32 %59)
  %61 = load i32, i32* @CDB_HIRQ_CMOK, align 4
  %62 = load i32, i32* @CDB_HIRQ_MPCM, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %63
  store i32 %68, i32* %66, align 4
  ret void
}

declare dso_local i32 @doMPEGReport(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
