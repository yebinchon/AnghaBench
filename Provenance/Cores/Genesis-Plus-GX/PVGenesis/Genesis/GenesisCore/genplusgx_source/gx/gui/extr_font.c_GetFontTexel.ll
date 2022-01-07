; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_font.c_GetFontTexel.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_font.c_GetFontTexel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i32 }

@fontHeader = common dso_local global %struct.TYPE_3__* null, align 8
@fontImage = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*, i64, i64)* @GetFontTexel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetFontTexel(i64 %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fontHeader, align 8
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %4
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25, %4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %5, align 8
  br label %41

35:                                               ; preds = %25
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = sub nsw i64 %39, %38
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %35, %31
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = mul nsw i64 %44, %47
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* %9, align 8
  %51 = srem i64 %49, %50
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %9, align 8
  %54 = sdiv i64 %52, %53
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = srem i64 %55, %58
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = mul nsw i64 %59, %62
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = sdiv i64 %64, %67
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = mul nsw i64 %68, %71
  store i64 %72, i64* %12, align 8
  %73 = load i32*, i32** @fontImage, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 7
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = mul nsw i64 %76, %77
  %79 = getelementptr inbounds i32, i32* %73, i64 %78
  store i32* %79, i32** %15, align 8
  store i64 0, i64* %14, align 8
  br label %80

80:                                               ; preds = %162, %41
  %81 = load i64, i64* %14, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %81, %84
  br i1 %85, label %86, label %165

86:                                               ; preds = %80
  store i64 0, i64* %13, align 8
  br label %87

87:                                               ; preds = %93, %86
  %88 = load i64, i64* %13, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %88, %91
  br i1 %92, label %93, label %162

93:                                               ; preds = %87
  %94 = load i32*, i32** %15, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 8
  %98 = sdiv i32 %97, 8
  %99 = shl i32 %98, 5
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* %14, align 8
  %102 = load i64, i64* %12, align 8
  %103 = add nsw i64 %101, %102
  %104 = sdiv i64 %103, 8
  %105 = mul nsw i64 %100, %104
  %106 = getelementptr inbounds i32, i32* %94, i64 %105
  store i32* %106, i32** %16, align 8
  %107 = load i32*, i32** %16, align 8
  %108 = load i64, i64* %13, align 8
  %109 = load i64, i64* %11, align 8
  %110 = add nsw i64 %108, %109
  %111 = sdiv i64 %110, 8
  %112 = shl i64 %111, 5
  %113 = getelementptr inbounds i32, i32* %107, i64 %112
  store i32* %113, i32** %16, align 8
  %114 = load i32*, i32** %16, align 8
  %115 = load i64, i64* %14, align 8
  %116 = load i64, i64* %12, align 8
  %117 = add nsw i64 %115, %116
  %118 = srem i64 %117, 8
  %119 = shl i64 %118, 2
  %120 = getelementptr inbounds i32, i32* %114, i64 %119
  store i32* %120, i32** %16, align 8
  %121 = load i32*, i32** %16, align 8
  %122 = load i64, i64* %13, align 8
  %123 = load i64, i64* %11, align 8
  %124 = add nsw i64 %122, %123
  %125 = srem i64 %124, 8
  %126 = sdiv i64 %125, 2
  %127 = getelementptr inbounds i32, i32* %121, i64 %126
  store i32* %127, i32** %16, align 8
  %128 = load i8*, i8** %6, align 8
  %129 = load i64, i64* %14, align 8
  %130 = sdiv i64 %129, 8
  %131 = load i64, i64* %8, align 8
  %132 = shl i64 %131, 1
  %133 = sdiv i64 %132, 8
  %134 = shl i64 %133, 5
  %135 = mul nsw i64 %130, %134
  %136 = getelementptr i8, i8* %128, i64 %135
  %137 = bitcast i8* %136 to i32*
  store i32* %137, i32** %17, align 8
  %138 = load i32*, i32** %17, align 8
  %139 = load i64, i64* %13, align 8
  %140 = load i64, i64* %7, align 8
  %141 = add nsw i64 %139, %140
  %142 = sdiv i64 %141, 8
  %143 = shl i64 %142, 5
  %144 = getelementptr inbounds i32, i32* %138, i64 %143
  store i32* %144, i32** %17, align 8
  %145 = load i32*, i32** %17, align 8
  %146 = load i64, i64* %13, align 8
  %147 = load i64, i64* %7, align 8
  %148 = add nsw i64 %146, %147
  %149 = srem i64 %148, 8
  %150 = sdiv i64 %149, 2
  %151 = getelementptr inbounds i32, i32* %145, i64 %150
  store i32* %151, i32** %17, align 8
  %152 = load i32*, i32** %17, align 8
  %153 = load i64, i64* %14, align 8
  %154 = srem i64 %153, 8
  %155 = shl i64 %154, 2
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  store i32* %156, i32** %17, align 8
  %157 = load i32*, i32** %16, align 8
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %17, align 8
  store i32 %158, i32* %159, align 4
  %160 = load i64, i64* %13, align 8
  %161 = add nsw i64 %160, 2
  store i64 %161, i64* %13, align 8
  br label %87

162:                                              ; preds = %87
  %163 = load i64, i64* %14, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %14, align 8
  br label %80

165:                                              ; preds = %80
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
