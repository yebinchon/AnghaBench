; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_blist.c_blst_meta_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_blist.c_blst_meta_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@BLIST_META_RADIX_SHIFT = common dso_local global i32 0, align 4
@SWAPBLK_NONE = common dso_local global i32 0, align 4
@BLIST_BMAP_RADIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"blist_meta_alloc: allocation too large\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i32, i32)* @blst_meta_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blst_meta_alloc(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @BLIST_META_RADIX_SHIFT, align 4
  %17 = ashr i32 %15, %16
  store i32 %17, i32* %13, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @SWAPBLK_NONE, align 4
  store i32 %27, i32* %6, align 4
  br label %200

28:                                               ; preds = %5
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %36, label %90

36:                                               ; preds = %28
  %37 = load i32, i32* @BLIST_META_RADIX_SHIFT, align 4
  %38 = load i32, i32* %10, align 4
  %39 = ashr i32 %38, %37
  store i32 %39, i32* %10, align 4
  store i32 1, i32* %12, align 4
  br label %40

40:                                               ; preds = %85, %36
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %89

44:                                               ; preds = %40
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %89

53:                                               ; preds = %44
  %54 = load i32, i32* %13, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store i64 -1, i64* %62, align 8
  %63 = load i32, i32* @BLIST_BMAP_RADIX, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i32 %63, i32* %68, align 8
  br label %84

69:                                               ; preds = %53
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 %70, i32* %75, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i64 %77, i64* %83, align 8
  br label %84

84:                                               ; preds = %69, %56
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %12, align 4
  br label %40

89:                                               ; preds = %52, %40
  br label %94

90:                                               ; preds = %28
  %91 = load i32, i32* @BLIST_META_RADIX_SHIFT, align 4
  %92 = load i32, i32* %10, align 4
  %93 = ashr i32 %92, %91
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %90, %89
  store i32 1, i32* %12, align 4
  br label %95

95:                                               ; preds = %183, %94
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %187

99:                                               ; preds = %95
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp sle i32 %100, %106
  br i1 %107, label %108, label %162

108:                                              ; preds = %99
  %109 = load i32, i32* %13, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 %114
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @blst_leaf_alloc(%struct.TYPE_6__* %115, i32 %116, i32 %117)
  store i32 %118, i32* %14, align 4
  br label %130

119:                                              ; preds = %108
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %122
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %13, align 4
  %128 = sub nsw i32 %127, 1
  %129 = call i32 @blst_meta_alloc(%struct.TYPE_6__* %123, i32 %124, i32 %125, i32 %126, i32 %128)
  store i32 %129, i32* %14, align 4
  br label %130

130:                                              ; preds = %119, %111
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* @SWAPBLK_NONE, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %161

134:                                              ; preds = %130
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %140, %136
  store i64 %141, i64* %139, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp sgt i64 %145, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %134
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = trunc i64 %155 to i32
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  br label %159

159:                                              ; preds = %151, %134
  %160 = load i32, i32* %14, align 4
  store i32 %160, i32* %6, align 4
  br label %200

161:                                              ; preds = %130
  br label %179

162:                                              ; preds = %99
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp eq i32 %168, -1
  br i1 %169, label %170, label %171

170:                                              ; preds = %162
  br label %187

171:                                              ; preds = %162
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %177

177:                                              ; preds = %175, %171
  br label %178

178:                                              ; preds = %177
  br label %179

179:                                              ; preds = %178, %161
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, %180
  store i32 %182, i32* %8, align 4
  br label %183

183:                                              ; preds = %179
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %12, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* %12, align 4
  br label %95

187:                                              ; preds = %170, %95
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %9, align 4
  %192 = icmp sge i32 %190, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %187
  %194 = load i32, i32* %9, align 4
  %195 = sub nsw i32 %194, 1
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  br label %198

198:                                              ; preds = %193, %187
  %199 = load i32, i32* @SWAPBLK_NONE, align 4
  store i32 %199, i32* %6, align 4
  br label %200

200:                                              ; preds = %198, %159, %23
  %201 = load i32, i32* %6, align 4
  ret i32 %201
}

declare dso_local i32 @blst_leaf_alloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
