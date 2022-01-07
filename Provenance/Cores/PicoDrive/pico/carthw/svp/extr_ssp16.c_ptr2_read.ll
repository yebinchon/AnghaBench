; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_ssp16.c_ptr2_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_ssp16.c_ptr2_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64*, i64*, i32*, i32* }
%struct.TYPE_3__ = type { i64 }

@ssp = common dso_local global %struct.TYPE_4__* null, align 8
@EL_SVP = common dso_local global i32 0, align 4
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ssp FIXME: invalid mod in ((rX))? @ %04x\00", align 1
@svp = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i32)* @ptr2_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @ptr2_read(i32 %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, 3
  %8 = load i32, i32* %3, align 4
  %9 = ashr i32 %8, 6
  %10 = and i32 %9, 4
  %11 = or i32 %7, %10
  %12 = load i32, i32* %3, align 4
  %13 = shl i32 %12, 1
  %14 = and i32 %13, 24
  %15 = or i32 %11, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %103 [
    i32 0, label %17
    i32 1, label %17
    i32 2, label %17
    i32 3, label %32
    i32 4, label %39
    i32 5, label %39
    i32 6, label %39
    i32 7, label %54
    i32 11, label %61
    i32 15, label %68
    i32 19, label %75
    i32 23, label %82
    i32 27, label %89
    i32 31, label %96
  ]

17:                                               ; preds = %1, %1, %1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ssp, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ssp, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %20, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  br label %109

32:                                               ; preds = %1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ssp, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  store i32 %37, i32* %4, align 4
  br label %109

39:                                               ; preds = %1, %1, %1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ssp, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ssp, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, 3
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %45, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %42, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  store i32 %52, i32* %4, align 4
  br label %109

54:                                               ; preds = %1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ssp, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  store i32 %59, i32* %4, align 4
  br label %109

61:                                               ; preds = %1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ssp, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  store i32 %66, i32* %4, align 4
  br label %109

68:                                               ; preds = %1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ssp, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  store i32 %73, i32* %4, align 4
  br label %109

75:                                               ; preds = %1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ssp, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  store i32 %80, i32* %4, align 4
  br label %109

82:                                               ; preds = %1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ssp, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  store i32 %87, i32* %4, align 4
  br label %109

89:                                               ; preds = %1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ssp, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  store i32 %94, i32* %4, align 4
  br label %109

96:                                               ; preds = %1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ssp, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 3
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  store i32 %101, i32* %4, align 4
  br label %109

103:                                              ; preds = %1
  %104 = load i32, i32* @EL_SVP, align 4
  %105 = load i32, i32* @EL_ANOMALY, align 4
  %106 = or i32 %104, %105
  %107 = call i32 (...) @GET_PPC_OFFS()
  %108 = call i32 @elprintf(i32 %106, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %107)
  store i16 0, i16* %2, align 2
  br label %118

109:                                              ; preds = %96, %89, %82, %75, %68, %61, %54, %39, %32, %17
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** @svp, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to i16*
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i16, i16* %113, i64 %115
  %117 = load i16, i16* %116, align 2
  store i16 %117, i16* %2, align 2
  br label %118

118:                                              ; preds = %109, %103
  %119 = load i16, i16* %2, align 2
  ret i16 %119
}

declare dso_local i32 @elprintf(i32, i8*, i32) #1

declare dso_local i32 @GET_PPC_OFFS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
