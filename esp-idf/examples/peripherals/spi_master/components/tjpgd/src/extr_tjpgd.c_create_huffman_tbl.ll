; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/spi_master/components/tjpgd/src/extr_tjpgd.c_create_huffman_tbl.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/spi_master/components/tjpgd/src/extr_tjpgd.c_create_huffman_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32***, i32***, i32*** }

@JDR_FMT1 = common dso_local global i32 0, align 4
@JDR_MEM1 = common dso_local global i32 0, align 4
@JDR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32)* @create_huffman_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_huffman_tbl(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %19

19:                                               ; preds = %178, %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %179

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 17
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @JDR_FMT1, align 4
  store i32 %26, i32* %4, align 4
  br label %181

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 17
  store i32 %29, i32* %7, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %6, align 8
  %32 = load i32, i32* %30, align 4
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = and i32 %33, 238
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @JDR_FMT1, align 4
  store i32 %37, i32* %4, align 4
  br label %181

38:                                               ; preds = %27
  %39 = load i32, i32* %14, align 4
  %40 = ashr i32 %39, 4
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %14, align 4
  %42 = and i32 %41, 15
  store i32 %42, i32* %13, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = call i32* @alloc_pool(%struct.TYPE_4__* %43, i32 16)
  store i32* %44, i32** %15, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @JDR_MEM1, align 4
  store i32 %48, i32* %4, align 4
  br label %181

49:                                               ; preds = %38
  %50 = load i32*, i32** %15, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32***, i32**** %52, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32**, i32*** %53, i64 %55
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  store i32* %50, i32** %60, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %74, %49
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 16
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %6, align 8
  %67 = load i32, i32* %65, align 4
  %68 = load i32*, i32** %15, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, %67
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %61

77:                                               ; preds = %61
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 4
  %82 = trunc i64 %81 to i32
  %83 = call i32* @alloc_pool(%struct.TYPE_4__* %78, i32 %82)
  store i32* %83, i32** %18, align 8
  %84 = load i32*, i32** %18, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %77
  %87 = load i32, i32* @JDR_MEM1, align 4
  store i32 %87, i32* %4, align 4
  br label %181

88:                                               ; preds = %77
  %89 = load i32*, i32** %18, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32***, i32**** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32**, i32*** %92, i64 %94
  %96 = load i32**, i32*** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  store i32* %89, i32** %99, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %124, %88
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %101, 16
  br i1 %102, label %103, label %127

103:                                              ; preds = %100
  %104 = load i32*, i32** %15, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %113, %103
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %10, align 4
  %112 = icmp ne i32 %110, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %17, align 4
  %116 = load i32*, i32** %18, align 8
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32 %114, i32* %120, align 4
  br label %109

121:                                              ; preds = %109
  %122 = load i32, i32* %17, align 4
  %123 = shl i32 %122, 1
  store i32 %123, i32* %17, align 4
  br label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %100

127:                                              ; preds = %100
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %11, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load i32, i32* @JDR_FMT1, align 4
  store i32 %132, i32* %4, align 4
  br label %181

133:                                              ; preds = %127
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %7, align 4
  %136 = sub nsw i32 %135, %134
  store i32 %136, i32* %7, align 4
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %138 = load i32, i32* %11, align 4
  %139 = call i32* @alloc_pool(%struct.TYPE_4__* %137, i32 %138)
  store i32* %139, i32** %16, align 8
  %140 = load i32*, i32** %16, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %144, label %142

142:                                              ; preds = %133
  %143 = load i32, i32* @JDR_MEM1, align 4
  store i32 %143, i32* %4, align 4
  br label %181

144:                                              ; preds = %133
  %145 = load i32*, i32** %16, align 8
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 2
  %148 = load i32***, i32**** %147, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32**, i32*** %148, i64 %150
  %152 = load i32**, i32*** %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32*, i32** %152, i64 %154
  store i32* %145, i32** %155, align 8
  store i32 0, i32* %8, align 4
  br label %156

156:                                              ; preds = %175, %144
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %178

160:                                              ; preds = %156
  %161 = load i32*, i32** %6, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %6, align 8
  %163 = load i32, i32* %161, align 4
  store i32 %163, i32* %14, align 4
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %160
  %167 = load i32, i32* %14, align 4
  %168 = icmp sgt i32 %167, 11
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = load i32, i32* @JDR_FMT1, align 4
  store i32 %170, i32* %4, align 4
  br label %181

171:                                              ; preds = %166, %160
  %172 = load i32, i32* %14, align 4
  %173 = load i32*, i32** %16, align 8
  %174 = getelementptr inbounds i32, i32* %173, i32 1
  store i32* %174, i32** %16, align 8
  store i32 %172, i32* %173, align 4
  br label %175

175:                                              ; preds = %171
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %8, align 4
  br label %156

178:                                              ; preds = %156
  br label %19

179:                                              ; preds = %19
  %180 = load i32, i32* @JDR_OK, align 4
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %179, %169, %142, %131, %86, %47, %36, %25
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32* @alloc_pool(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
