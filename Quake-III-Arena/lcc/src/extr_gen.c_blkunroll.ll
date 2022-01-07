; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_gen.c_blkunroll.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_gen.c_blkunroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)* }

@IR = common dso_local global %struct.TYPE_4__* null, align 8
@salign = common dso_local global i32 0, align 4
@dalign = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32*)* @blkunroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blkunroll(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @IR, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @IR, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %21, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %7
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @salign, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @dalign, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31, %27
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @IR, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %35, %31, %7
  store i32 0, i32* %15, align 4
  br label %41

41:                                               ; preds = %104, %40
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %109

47:                                               ; preds = %41
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @IR, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* %11, align 4
  %57 = load i32*, i32** %14, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 %51(i32 %52, i32 %55, i32 %56, i32 %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @IR, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* %11, align 4
  %72 = load i32*, i32** %14, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 %64(i32 %65, i32 %70, i32 %71, i32 %74)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @IR, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %81, %82
  %84 = load i32, i32* %9, align 4
  %85 = load i32*, i32** %14, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 %79(i32 %80, i32 %83, i32 %84, i32 %87)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @IR, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %15, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* %9, align 4
  %100 = load i32*, i32** %14, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 %92(i32 %93, i32 %98, i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %47
  %105 = load i32, i32* %8, align 4
  %106 = mul nsw i32 2, %105
  %107 = load i32, i32* %15, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %15, align 4
  br label %41

109:                                              ; preds = %41
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %140

113:                                              ; preds = %109
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** @IR, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %119, %120
  %122 = load i32, i32* %11, align 4
  %123 = load i32*, i32** %14, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 %117(i32 %118, i32 %121, i32 %122, i32 %125)
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @IR, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32, i32* %9, align 4
  %136 = load i32*, i32** %14, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 %130(i32 %131, i32 %134, i32 %135, i32 %138)
  br label %140

140:                                              ; preds = %113, %109
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
