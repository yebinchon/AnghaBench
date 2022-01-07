; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/examples/extr_simpleover.c_sprite_op.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/examples/extr_simpleover.c_sprite_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprite = type { i32, i32, i64* }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sprite*, i32, i32, %struct.TYPE_3__*, i64*)* @sprite_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprite_op(%struct.sprite* %0, i32 %1, i32 %2, %struct.TYPE_3__* %3, i64* %4) #0 {
  %6 = alloca %struct.sprite*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  store %struct.sprite* %0, %struct.sprite** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  store i64* %4, i64** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.sprite*, %struct.sprite** %6, align 8
  %22 = getelementptr inbounds %struct.sprite, %struct.sprite* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %199

25:                                               ; preds = %19, %5
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.sprite*, %struct.sprite** %6, align 8
  %31 = getelementptr inbounds %struct.sprite, %struct.sprite* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %199

34:                                               ; preds = %28, %25
  store i32 0, i32* %11, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %191, %40
  store i32 0, i32* %12, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %183, %47
  %49 = load i64*, i64** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul i32 %50, %53
  %55 = load i32, i32* %12, align 4
  %56 = add i32 %54, %55
  %57 = mul i32 %56, 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %49, i64 %58
  store i64* %59, i64** %13, align 8
  %60 = load i64*, i64** %13, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 3
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %14, align 8
  %63 = load i64, i64* %14, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %182

65:                                               ; preds = %48
  %66 = load %struct.sprite*, %struct.sprite** %6, align 8
  %67 = getelementptr inbounds %struct.sprite, %struct.sprite* %66, i32 0, i32 2
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %8, align 4
  %71 = add i32 %69, %70
  %72 = load %struct.sprite*, %struct.sprite** %6, align 8
  %73 = getelementptr inbounds %struct.sprite, %struct.sprite* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = mul i32 %71, %74
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %7, align 4
  %78 = add i32 %76, %77
  %79 = add i32 %75, %78
  %80 = mul i32 %79, 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %68, i64 %81
  store i64* %82, i64** %15, align 8
  %83 = load i64, i64* %14, align 8
  %84 = sub nsw i64 65535, %83
  store i64 %84, i64* %14, align 8
  %85 = load i64, i64* %14, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %160

87:                                               ; preds = %65
  %88 = load i64*, i64** %15, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %14, align 8
  %92 = mul nsw i64 %90, %91
  store i64 %92, i64* %16, align 8
  %93 = load i64, i64* %16, align 8
  %94 = load i64, i64* %16, align 8
  %95 = ashr i64 %94, 16
  %96 = add nsw i64 %93, %95
  %97 = add nsw i64 %96, 32769
  %98 = ashr i64 %97, 16
  store i64 %98, i64* %16, align 8
  %99 = load i64, i64* %16, align 8
  %100 = load i64*, i64** %13, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %99, %102
  %104 = load i64*, i64** %15, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 0
  store i64 %103, i64* %105, align 8
  %106 = load i64*, i64** %15, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %14, align 8
  %110 = mul nsw i64 %108, %109
  store i64 %110, i64* %16, align 8
  %111 = load i64, i64* %16, align 8
  %112 = load i64, i64* %16, align 8
  %113 = ashr i64 %112, 16
  %114 = add nsw i64 %111, %113
  %115 = add nsw i64 %114, 32769
  %116 = ashr i64 %115, 16
  store i64 %116, i64* %16, align 8
  %117 = load i64, i64* %16, align 8
  %118 = load i64*, i64** %13, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 1
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %117, %120
  %122 = load i64*, i64** %15, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 1
  store i64 %121, i64* %123, align 8
  %124 = load i64*, i64** %15, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 2
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %14, align 8
  %128 = mul nsw i64 %126, %127
  store i64 %128, i64* %16, align 8
  %129 = load i64, i64* %16, align 8
  %130 = load i64, i64* %16, align 8
  %131 = ashr i64 %130, 16
  %132 = add nsw i64 %129, %131
  %133 = add nsw i64 %132, 32769
  %134 = ashr i64 %133, 16
  store i64 %134, i64* %16, align 8
  %135 = load i64, i64* %16, align 8
  %136 = load i64*, i64** %13, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 2
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %135, %138
  %140 = load i64*, i64** %15, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 2
  store i64 %139, i64* %141, align 8
  %142 = load i64*, i64** %15, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 3
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %14, align 8
  %146 = mul nsw i64 %144, %145
  store i64 %146, i64* %16, align 8
  %147 = load i64, i64* %16, align 8
  %148 = load i64, i64* %16, align 8
  %149 = ashr i64 %148, 16
  %150 = add nsw i64 %147, %149
  %151 = add nsw i64 %150, 32769
  %152 = ashr i64 %151, 16
  store i64 %152, i64* %16, align 8
  %153 = load i64, i64* %16, align 8
  %154 = load i64*, i64** %13, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 3
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %153, %156
  %158 = load i64*, i64** %15, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 3
  store i64 %157, i64* %159, align 8
  br label %181

160:                                              ; preds = %65
  %161 = load i64*, i64** %13, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64*, i64** %15, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 0
  store i64 %163, i64* %165, align 8
  %166 = load i64*, i64** %13, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64*, i64** %15, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 1
  store i64 %168, i64* %170, align 8
  %171 = load i64*, i64** %13, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 2
  %173 = load i64, i64* %172, align 8
  %174 = load i64*, i64** %15, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 2
  store i64 %173, i64* %175, align 8
  %176 = load i64*, i64** %13, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 3
  %178 = load i64, i64* %177, align 8
  %179 = load i64*, i64** %15, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 3
  store i64 %178, i64* %180, align 8
  br label %181

181:                                              ; preds = %160, %87
  br label %182

182:                                              ; preds = %181, %48
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %12, align 4
  %185 = add i32 %184, 1
  store i32 %185, i32* %12, align 4
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp ult i32 %185, %188
  br i1 %189, label %48, label %190

190:                                              ; preds = %183
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %11, align 4
  %193 = add i32 %192, 1
  store i32 %193, i32* %11, align 4
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp ult i32 %193, %196
  br i1 %197, label %41, label %198

198:                                              ; preds = %191
  br label %199

199:                                              ; preds = %198, %28, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
