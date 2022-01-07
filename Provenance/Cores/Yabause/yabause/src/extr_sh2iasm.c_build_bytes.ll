; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sh2iasm.c_build_bytes.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sh2iasm.c_build_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @build_bytes(i32* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca %struct.TYPE_7__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32* %0, i32** %12, align 8
  %13 = bitcast %struct.TYPE_7__* %6 to i64*
  store i64 %1, i64* %13, align 4
  %14 = bitcast %struct.TYPE_7__* %7 to i64*
  store i64 %2, i64* %14, align 4
  %15 = bitcast %struct.TYPE_7__* %8 to i64*
  store i64 %3, i64* %15, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %166, %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %167

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 16
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @insert(i32* %11, i32 %29, i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %166

34:                                               ; preds = %19
  %35 = load i32, i32* %10, align 4
  switch i32 %35, label %163 [
    i32 129, label %36
    i32 128, label %51
    i32 139, label %66
    i32 137, label %66
    i32 136, label %72
    i32 135, label %81
    i32 141, label %90
    i32 138, label %112
    i32 134, label %112
    i32 140, label %112
    i32 131, label %127
    i32 133, label %127
    i32 130, label %145
    i32 132, label %145
  ]

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 129
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @insert(i32* %11, i32 %42, i32 %43)
  br label %50

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @insert(i32* %11, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %40
  br label %163

51:                                               ; preds = %34
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 128
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @insert(i32* %11, i32 %57, i32 %58)
  br label %65

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @insert(i32* %11, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %55
  br label %163

66:                                               ; preds = %34, %34
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 15
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @insert(i32* %11, i32 %69, i32 %70)
  br label %163

72:                                               ; preds = %34
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 15
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @insert(i32* %11, i32 %78, i32 %79)
  br label %163

81:                                               ; preds = %34
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 2
  store i32 %84, i32* %82, align 4
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 15
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @insert(i32* %11, i32 %87, i32 %88)
  br label %163

90:                                               ; preds = %34
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = ashr i32 %92, 8
  %94 = and i32 %93, 15
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @insert(i32* %11, i32 %94, i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 4
  %100 = and i32 %99, 15
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  %103 = call i32 @insert(i32* %11, i32 %100, i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 15
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 2
  %109 = call i32 @insert(i32* %11, i32 %106, i32 %108)
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 2
  store i32 %111, i32* %9, align 4
  br label %163

112:                                              ; preds = %34, %34, %34
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = ashr i32 %114, 4
  %116 = and i32 %115, 15
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @insert(i32* %11, i32 %116, i32 %117)
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 15
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  %124 = call i32 @insert(i32* %11, i32 %121, i32 %123)
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %163

127:                                              ; preds = %34, %34
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = ashr i32 %129, 1
  store i32 %130, i32* %128, align 4
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = ashr i32 %132, 4
  %134 = and i32 %133, 15
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @insert(i32* %11, i32 %134, i32 %135)
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 15
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 1
  %142 = call i32 @insert(i32* %11, i32 %139, i32 %141)
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %163

145:                                              ; preds = %34, %34
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = ashr i32 %147, 2
  store i32 %148, i32* %146, align 4
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = ashr i32 %150, 4
  %152 = and i32 %151, 15
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @insert(i32* %11, i32 %152, i32 %153)
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, 15
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, 1
  %160 = call i32 @insert(i32* %11, i32 %157, i32 %159)
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %163

163:                                              ; preds = %34, %145, %127, %112, %90, %81, %72, %66, %65, %50
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %9, align 4
  br label %166

166:                                              ; preds = %163, %28
  br label %16

167:                                              ; preds = %16
  %168 = load i32, i32* %11, align 4
  %169 = zext i32 %168 to i64
  ret i64 %169
}

declare dso_local i32 @insert(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
