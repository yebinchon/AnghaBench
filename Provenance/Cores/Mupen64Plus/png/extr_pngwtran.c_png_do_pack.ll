; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngwtran.c_png_do_pack.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngwtran.c_png_do_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"in png_do_pack\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32)* @png_do_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @png_do_pack(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %27 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 8
  br i1 %31, label %32, label %186

32:                                               ; preds = %3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %186

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  switch i32 %38, label %165 [
    i32 1, label %39
    i32 2, label %81
    i32 4, label %123
  ]

39:                                               ; preds = %37
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %12, align 4
  %43 = load i32*, i32** %5, align 8
  store i32* %43, i32** %7, align 8
  %44 = load i32*, i32** %5, align 8
  store i32* %44, i32** %8, align 8
  store i32 128, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %71, %39
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %45
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* %9, align 4
  %64 = ashr i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %70

65:                                               ; preds = %57
  store i32 128, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32*, i32** %8, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %8, align 8
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %65, %62
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %45

74:                                               ; preds = %45
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 128
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %10, align 4
  %79 = load i32*, i32** %8, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %74
  br label %166

81:                                               ; preds = %37
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %18, align 4
  %85 = load i32*, i32** %5, align 8
  store i32* %85, i32** %13, align 8
  %86 = load i32*, i32** %5, align 8
  store i32* %86, i32** %14, align 8
  store i32 6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %87

87:                                               ; preds = %113, %81
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %18, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %116

91:                                               ; preds = %87
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 3
  store i32 %94, i32* %19, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %15, align 4
  %97 = shl i32 %95, %96
  %98 = load i32, i32* %16, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %15, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %91
  store i32 6, i32* %15, align 4
  %103 = load i32, i32* %16, align 4
  %104 = load i32*, i32** %14, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i32*, i32** %14, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %14, align 8
  store i32 0, i32* %16, align 4
  br label %110

107:                                              ; preds = %91
  %108 = load i32, i32* %15, align 4
  %109 = sub i32 %108, 2
  store i32 %109, i32* %15, align 4
  br label %110

110:                                              ; preds = %107, %102
  %111 = load i32*, i32** %13, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %13, align 8
  br label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %17, align 4
  br label %87

116:                                              ; preds = %87
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 6
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* %16, align 4
  %121 = load i32*, i32** %14, align 8
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %119, %116
  br label %166

123:                                              ; preds = %37
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %25, align 4
  %127 = load i32*, i32** %5, align 8
  store i32* %127, i32** %20, align 8
  %128 = load i32*, i32** %5, align 8
  store i32* %128, i32** %21, align 8
  store i32 4, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %129

129:                                              ; preds = %155, %123
  %130 = load i32, i32* %24, align 4
  %131 = load i32, i32* %25, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %158

133:                                              ; preds = %129
  %134 = load i32*, i32** %20, align 8
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 15
  store i32 %136, i32* %26, align 4
  %137 = load i32, i32* %26, align 4
  %138 = load i32, i32* %22, align 4
  %139 = shl i32 %137, %138
  %140 = load i32, i32* %23, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %23, align 4
  %142 = load i32, i32* %22, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %133
  store i32 4, i32* %22, align 4
  %145 = load i32, i32* %23, align 4
  %146 = load i32*, i32** %21, align 8
  store i32 %145, i32* %146, align 4
  %147 = load i32*, i32** %21, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %21, align 8
  store i32 0, i32* %23, align 4
  br label %152

149:                                              ; preds = %133
  %150 = load i32, i32* %22, align 4
  %151 = sub i32 %150, 4
  store i32 %151, i32* %22, align 4
  br label %152

152:                                              ; preds = %149, %144
  %153 = load i32*, i32** %20, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %20, align 8
  br label %155

155:                                              ; preds = %152
  %156 = load i32, i32* %24, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %24, align 4
  br label %129

158:                                              ; preds = %129
  %159 = load i32, i32* %22, align 4
  %160 = icmp ne i32 %159, 4
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i32, i32* %23, align 4
  %163 = load i32*, i32** %21, align 8
  store i32 %162, i32* %163, align 4
  br label %164

164:                                              ; preds = %161, %158
  br label %166

165:                                              ; preds = %37
  br label %166

166:                                              ; preds = %165, %164, %122, %80
  %167 = load i32, i32* %6, align 4
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %6, align 4
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = mul nsw i32 %170, %173
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 4
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @PNG_ROWBYTES(i32 %179, i32 %182)
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %166, %32, %3
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @PNG_ROWBYTES(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
