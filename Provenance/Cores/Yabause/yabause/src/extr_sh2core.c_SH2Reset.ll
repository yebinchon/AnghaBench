; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sh2core.c_SH2Reset.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sh2core.c_SH2Reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*, i32, i64)*, i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32, i32)* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__, i64, %struct.TYPE_19__, %struct.TYPE_18__, i64, i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32, i64, i64 }
%struct.TYPE_18__ = type { i32, i64 }

@SH2Core = common dso_local global %struct.TYPE_17__* null, align 8
@MAX_INTERRUPTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SH2Reset(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %14, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 15
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** @SH2Core, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 8
  %10 = load i32 (%struct.TYPE_21__*, i32, i32)*, i32 (%struct.TYPE_21__*, i32, i32)** %9, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 %10(%struct.TYPE_21__* %11, i32 %12, i32 0)
  br label %14

14:                                               ; preds = %7
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %4

17:                                               ; preds = %4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** @SH2Core, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 7
  %20 = load i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32)** %19, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %22 = call i32 %20(%struct.TYPE_21__* %21, i32 240)
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** @SH2Core, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 6
  %25 = load i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32)** %24, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %27 = call i32 %25(%struct.TYPE_21__* %26, i32 0)
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** @SH2Core, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 5
  %30 = load i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32)** %29, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %32 = call i32 %30(%struct.TYPE_21__* %31, i32 0)
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** @SH2Core, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 4
  %35 = load i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32)** %34, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %37 = call i32 %35(%struct.TYPE_21__* %36, i32 0)
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** @SH2Core, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 3
  %40 = load i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32)** %39, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %42 = call i32 %40(%struct.TYPE_21__* %41, i32 0)
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** @SH2Core, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 2
  %45 = load i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32)** %44, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %47 = call i32 %45(%struct.TYPE_21__* %46, i32 0)
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 6
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 5
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  store i32 3, i32* %59, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 3
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = load i32, i32* @MAX_INTERRUPTS, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 4, %77
  %79 = trunc i64 %78 to i32
  %80 = call i32 @memset(i8* %75, i32 0, i32 %79)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** @SH2Core, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = load i32 (%struct.TYPE_21__*, i32, i64)*, i32 (%struct.TYPE_21__*, i32, i64)** %82, align 8
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = call i32 %83(%struct.TYPE_21__* %84, i32 0, i64 %87)
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** @SH2Core, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)** %90, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %93 = call i32 %91(%struct.TYPE_21__* %92)
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %95 = call i32 @OnchipReset(%struct.TYPE_21__* %94)
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @OnchipReset(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
