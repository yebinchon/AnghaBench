; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/utils/extr_oggplayer.c_f_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/utils/extr_oggplayer.c_f_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }

@file = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32*)* @f_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_read(i8* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = mul nsw i32 %13, %14
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %141

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %130, %18
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %137

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp sgt i32 %27, 4096
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 4096, i32* %10, align 4
  br label %30

30:                                               ; preds = %29, %25
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %32, 1638
  br i1 %33, label %34, label %114

34:                                               ; preds = %30
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %36, 1641
  br i1 %37, label %38, label %114

38:                                               ; preds = %34
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1638
  store i32 %41, i32* %12, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  store i32 -1, i32* %5, align 4
  br label %141

50:                                               ; preds = %38
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %59, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %50
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %73, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %67, %50
  %83 = load i32, i32* %10, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %113

85:                                               ; preds = %82
  %86 = load i8*, i8** %6, align 8
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %93, %99
  %101 = trunc i64 %100 to i32
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @memcpy(i8* %86, i32 %101, i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @file, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, %105
  store i64 %112, i64* %110, align 8
  br label %113

113:                                              ; preds = %85, %82
  br label %123

114:                                              ; preds = %34, %30
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* %115, align 4
  %117 = load i8*, i8** %6, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @read(i32 %116, i8* %120, i32 %121)
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %114, %113
  %124 = load i32, i32* %10, align 4
  %125 = icmp sle i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %7, align 4
  %129 = sdiv i32 %127, %128
  store i32 %129, i32* %5, align 4
  br label %141

130:                                              ; preds = %123
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %8, align 4
  %136 = sub nsw i32 %135, %134
  store i32 %136, i32* %8, align 4
  br label %22

137:                                              ; preds = %22
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %7, align 4
  %140 = sdiv i32 %138, %139
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %137, %126, %49, %17
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
