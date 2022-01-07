; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_bitwise.c_oggpackB_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/tremor/extr_bitwise.c_oggpackB_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @oggpackB_read(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = sub nsw i32 32, %8
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* %7, align 8
  %15 = icmp sgt i64 %14, 32
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  br label %162

17:                                               ; preds = %13
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %26, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %17
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 7
  %40 = ashr i32 %39, 3
  %41 = sub nsw i32 %37, %40
  %42 = icmp sgt i32 %34, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %161

44:                                               ; preds = %31
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store i64 0, i64* %3, align 8
  br label %172

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49, %17
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 24, %58
  %60 = shl i32 %55, %59
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %6, align 8
  %62 = load i32, i32* %5, align 4
  %63 = icmp sgt i32 %62, 8
  br i1 %63, label %64, label %133

64:                                               ; preds = %50
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 16, %72
  %74 = shl i32 %69, %73
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %6, align 8
  %77 = or i64 %76, %75
  store i64 %77, i64* %6, align 8
  %78 = load i32, i32* %5, align 4
  %79 = icmp sgt i32 %78, 16
  br i1 %79, label %80, label %132

80:                                               ; preds = %64
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 8, %88
  %90 = shl i32 %85, %89
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %6, align 8
  %93 = or i64 %92, %91
  store i64 %93, i64* %6, align 8
  %94 = load i32, i32* %5, align 4
  %95 = icmp sgt i32 %94, 24
  br i1 %95, label %96, label %131

96:                                               ; preds = %80
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = shl i32 %101, %104
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %6, align 8
  %108 = or i64 %107, %106
  store i64 %108, i64* %6, align 8
  %109 = load i32, i32* %5, align 4
  %110 = icmp sgt i32 %109, 32
  br i1 %110, label %111, label %130

111:                                              ; preds = %96
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %111
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 4
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sub nsw i32 8, %124
  %126 = ashr i32 %121, %125
  %127 = sext i32 %126 to i64
  %128 = load i64, i64* %6, align 8
  %129 = or i64 %128, %127
  store i64 %129, i64* %6, align 8
  br label %130

130:                                              ; preds = %116, %111, %96
  br label %131

131:                                              ; preds = %130, %80
  br label %132

132:                                              ; preds = %131, %64
  br label %133

133:                                              ; preds = %132, %50
  %134 = load i64, i64* %6, align 8
  %135 = and i64 %134, 4294967295
  %136 = load i64, i64* %7, align 8
  %137 = ashr i64 %136, 1
  %138 = lshr i64 %135, %137
  %139 = load i64, i64* %7, align 8
  %140 = add nsw i64 %139, 1
  %141 = ashr i64 %140, 1
  %142 = lshr i64 %138, %141
  store i64 %142, i64* %6, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sdiv i32 %143, 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = sext i32 %144 to i64
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32* %149, i32** %146, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sdiv i32 %150, 8
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, %151
  store i32 %155, i32* %153, align 4
  %156 = load i32, i32* %5, align 4
  %157 = and i32 %156, 7
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load i64, i64* %6, align 8
  store i64 %160, i64* %3, align 8
  br label %172

161:                                              ; preds = %43
  br label %162

162:                                              ; preds = %161, %16
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 3
  store i32* null, i32** %164, align 8
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  store i32 1, i32* %171, align 8
  store i64 -1, i64* %3, align 8
  br label %172

172:                                              ; preds = %162, %133, %47
  %173 = load i64, i64* %3, align 8
  ret i64 %173
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
