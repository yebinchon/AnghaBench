; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_minterpolate.c_var_size_bmc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_minterpolate.c_var_size_bmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32*, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32**, i64, %struct.TYPE_10__* }

@PX_WEIGHT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32, i32, i32)* @var_size_bmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @var_size_bmc(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %15, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %49

49:                                               ; preds = %198, %6
  %50 = load i32, i32* %14, align 4
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %201

52:                                               ; preds = %49
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %194, %52
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %54, 2
  br i1 %55, label %56, label %197

56:                                               ; preds = %53
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = mul nsw i32 %61, 2
  %63 = add nsw i32 %60, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i64 %64
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** %17, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %56
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %11, align 4
  %76 = sub nsw i32 %75, 1
  %77 = shl i32 %74, %76
  %78 = add nsw i32 %73, %77
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %81, 1
  %83 = shl i32 %80, %82
  %84 = add nsw i32 %79, %83
  %85 = load i32, i32* %11, align 4
  %86 = sub nsw i32 %85, 1
  %87 = load i32, i32* %12, align 4
  call void @var_size_bmc(%struct.TYPE_9__* %71, %struct.TYPE_10__* %72, i32 %78, i32 %84, i32 %86, i32 %87)
  br label %193

88:                                               ; preds = %56
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32**, i32*** %90, align 8
  %92 = getelementptr inbounds i32*, i32** %91, i64 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %95, 2
  store i32 %96, i32* %20, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32**, i32*** %98, align 8
  %100 = getelementptr inbounds i32*, i32** %99, i64 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %103, 2
  store i32 %104, i32* %21, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %11, align 4
  %108 = sub nsw i32 %107, 1
  %109 = shl i32 %106, %108
  %110 = add nsw i32 %105, %109
  store i32 %110, i32* %22, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %11, align 4
  %114 = sub nsw i32 %113, 1
  %115 = shl i32 %112, %114
  %116 = add nsw i32 %111, %115
  store i32 %116, i32* %23, align 4
  %117 = load i32, i32* %22, align 4
  %118 = load i32, i32* %11, align 4
  %119 = sub nsw i32 %118, 1
  %120 = shl i32 1, %119
  %121 = add nsw i32 %117, %120
  store i32 %121, i32* %24, align 4
  %122 = load i32, i32* %23, align 4
  %123 = load i32, i32* %11, align 4
  %124 = sub nsw i32 %123, 1
  %125 = shl i32 1, %124
  %126 = add nsw i32 %122, %125
  store i32 %126, i32* %25, align 4
  %127 = load i32, i32* %23, align 4
  store i32 %127, i32* %19, align 4
  br label %128

128:                                              ; preds = %189, %88
  %129 = load i32, i32* %19, align 4
  %130 = load i32, i32* %25, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %192

132:                                              ; preds = %128
  %133 = load i32, i32* %19, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %26, align 4
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %19, align 4
  %137 = sub nsw i32 %135, %136
  %138 = sub nsw i32 %137, 1
  store i32 %138, i32* %27, align 4
  %139 = load i32, i32* %22, align 4
  store i32 %139, i32* %18, align 4
  br label %140

140:                                              ; preds = %185, %132
  %141 = load i32, i32* %18, align 4
  %142 = load i32, i32* %24, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %188

144:                                              ; preds = %140
  %145 = load i32, i32* %18, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %28, align 4
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* %18, align 4
  %149 = sub nsw i32 %147, %148
  %150 = sub nsw i32 %149, 1
  store i32 %150, i32* %29, align 4
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %18, align 4
  %155 = load i32, i32* %19, align 4
  %156 = load i32, i32* %15, align 4
  %157 = mul nsw i32 %155, %156
  %158 = add nsw i32 %154, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %153, i64 %159
  store i32* %160, i32** %30, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* %19, align 4
  %166 = load i32, i32* %15, align 4
  %167 = mul nsw i32 %165, %166
  %168 = add nsw i32 %164, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %163, i64 %169
  store i32* %170, i32** %31, align 8
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* %19, align 4
  %176 = load i32, i32* %15, align 4
  %177 = mul nsw i32 %175, %176
  %178 = add nsw i32 %174, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %173, i64 %179
  store i32* %180, i32** %32, align 8
  %181 = load i32, i32* @PX_WEIGHT_MAX, align 4
  %182 = load i32, i32* %20, align 4
  %183 = load i32, i32* %21, align 4
  %184 = call i32 @ADD_PIXELS(i32 %181, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %144
  %186 = load i32, i32* %18, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %18, align 4
  br label %140

188:                                              ; preds = %140
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %19, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %19, align 4
  br label %128

192:                                              ; preds = %128
  br label %193

193:                                              ; preds = %192, %70
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %13, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %13, align 4
  br label %53

197:                                              ; preds = %53
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %14, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %14, align 4
  br label %49

201:                                              ; preds = %49
  ret void
}

declare dso_local i32 @ADD_PIXELS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
