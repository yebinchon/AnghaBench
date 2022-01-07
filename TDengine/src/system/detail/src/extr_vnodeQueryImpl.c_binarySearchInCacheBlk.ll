; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_binarySearchInCacheBlk.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_binarySearchInCacheBlk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i32, i64* }
%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32, i32)* @binarySearchInCacheBlk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binarySearchInCacheBlk(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %5, %198
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = sub nsw i32 %23, %24
  %26 = add nsw i32 %25, 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %26, %29
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = srem i32 %30, %33
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %22
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %37, %22
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %12, align 4
  %44 = ashr i32 %43, 1
  %45 = add nsw i32 %42, %44
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = srem i32 %45, %48
  store i32 %49, i32* %11, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %52, i64 %54
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %13, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i64*
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %14, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 1
  %73 = load i32, i32* %8, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %68, %75
  %77 = inttoptr i64 %76 to i64*
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %15, align 8
  %79 = load i32, i32* %12, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %41
  br label %199

82:                                               ; preds = %41
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %15, align 8
  %87 = icmp sgt i64 %85, %86
  br i1 %87, label %88, label %135

88:                                               ; preds = %82
  %89 = load i32, i32* %12, align 4
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %199

92:                                               ; preds = %88
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %94 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_7__* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %128, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %98, %101
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = srem i32 %102, %105
  store i32 %106, i32* %16, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %108, align 8
  %110 = load i32, i32* %16, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %109, i64 %111
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  store %struct.TYPE_9__* %113, %struct.TYPE_9__** %17, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load i64*, i64** %115, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 0
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to i64*
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %18, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %18, align 8
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %96
  br label %199

127:                                              ; preds = %96
  br label %128

128:                                              ; preds = %127, %92
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = srem i32 %130, %133
  store i32 %134, i32* %9, align 4
  br label %198

135:                                              ; preds = %82
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %14, align 8
  %140 = icmp slt i64 %138, %139
  br i1 %140, label %141, label %196

141:                                              ; preds = %135
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %143 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_7__* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %185

145:                                              ; preds = %141
  %146 = load i32, i32* %11, align 4
  %147 = sub nsw i32 %146, 1
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %147, %150
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = srem i32 %151, %154
  store i32 %155, i32* %19, align 4
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %157, align 8
  %159 = load i32, i32* %19, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %158, i64 %160
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  store %struct.TYPE_9__* %162, %struct.TYPE_9__** %20, align 8
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  %165 = load i64*, i64** %164, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sub nsw i32 %170, 1
  %172 = load i32, i32* %8, align 4
  %173 = mul nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %167, %174
  %176 = inttoptr i64 %175 to i64*
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %21, align 8
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* %21, align 8
  %182 = icmp sgt i64 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %145
  br label %199

184:                                              ; preds = %145
  br label %185

185:                                              ; preds = %184, %141
  %186 = load i32, i32* %11, align 4
  %187 = sub nsw i32 %186, 1
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %187, %190
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = srem i32 %191, %194
  store i32 %195, i32* %10, align 4
  br label %197

196:                                              ; preds = %135
  br label %199

197:                                              ; preds = %185
  br label %198

198:                                              ; preds = %197, %128
  br label %22

199:                                              ; preds = %196, %183, %126, %91, %81
  %200 = load i32, i32* %11, align 4
  ret i32 %200
}

declare dso_local i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
