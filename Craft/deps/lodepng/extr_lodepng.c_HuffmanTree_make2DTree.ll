; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_HuffmanTree_make2DTree.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_HuffmanTree_make2DTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @HuffmanTree_make2DTree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HuffmanTree_make2DTree(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = mul nsw i32 %11, 2
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = call i64 @lodepng_malloc(i32 %15)
  %17 = inttoptr i64 %16 to i32*
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32* %17, i32** %19, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 83, i32* %2, align 4
  br label %198

25:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %40, %25
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %30, 2
  %32 = icmp ult i32 %27, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 32767, i32* %39, align 4
  br label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %26

43:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %166, %43
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %169

50:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %162, %50
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp ult i32 %52, %59
  br i1 %60, label %61, label %165

61:                                               ; preds = %51
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = sub i32 %75, %76
  %78 = sub i32 %77, 1
  %79 = lshr i32 %68, %78
  %80 = and i32 %79, 1
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %8, align 1
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %85, 2
  %87 = icmp ugt i32 %82, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %61
  store i32 55, i32* %2, align 4
  br label %198

89:                                               ; preds = %61
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = mul i32 2, %93
  %95 = load i8, i8* %8, align 1
  %96 = zext i8 %95 to i32
  %97 = add i32 %94, %96
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %92, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 32767
  br i1 %101, label %102, label %145

102:                                              ; preds = %89
  %103 = load i32, i32* %7, align 4
  %104 = add i32 %103, 1
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %104, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %102
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = mul i32 2, %118
  %120 = load i8, i8* %8, align 1
  %121 = zext i8 %120 to i32
  %122 = add i32 %119, %121
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %117, i64 %123
  store i32 %114, i32* %124, align 4
  store i32 0, i32* %5, align 4
  br label %144

125:                                              ; preds = %102
  %126 = load i32, i32* %4, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = add i32 %128, %131
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = mul i32 2, %136
  %138 = load i8, i8* %8, align 1
  %139 = zext i8 %138 to i32
  %140 = add i32 %137, %139
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %135, i64 %141
  store i32 %132, i32* %142, align 4
  %143 = load i32, i32* %4, align 4
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %125, %113
  br label %161

145:                                              ; preds = %89
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = mul i32 2, %149
  %151 = load i8, i8* %8, align 1
  %152 = zext i8 %151 to i32
  %153 = add i32 %150, %152
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %148, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = sub i32 %156, %159
  store i32 %160, i32* %5, align 4
  br label %161

161:                                              ; preds = %145, %144
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %7, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %7, align 4
  br label %51

165:                                              ; preds = %51
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %6, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %44

169:                                              ; preds = %44
  store i32 0, i32* %6, align 4
  br label %170

170:                                              ; preds = %194, %169
  %171 = load i32, i32* %6, align 4
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = mul nsw i32 %174, 2
  %176 = icmp ult i32 %171, %175
  br i1 %176, label %177, label %197

177:                                              ; preds = %170
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %6, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 32767
  br i1 %185, label %186, label %193

186:                                              ; preds = %177
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %6, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  store i32 0, i32* %192, align 4
  br label %193

193:                                              ; preds = %186, %177
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %6, align 4
  %196 = add i32 %195, 1
  store i32 %196, i32* %6, align 4
  br label %170

197:                                              ; preds = %170
  store i32 0, i32* %2, align 4
  br label %198

198:                                              ; preds = %197, %88, %24
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local i64 @lodepng_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
