; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_Adam7_getpassvalues.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_Adam7_getpassvalues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADAM7_DX = common dso_local global i32* null, align 8
@ADAM7_IX = common dso_local global i32* null, align 8
@ADAM7_DY = common dso_local global i32* null, align 8
@ADAM7_IY = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64*, i64*, i64*, i32, i32, i32)* @Adam7_getpassvalues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Adam7_getpassvalues(i32* %0, i32* %1, i64* %2, i64* %3, i64* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64* %2, i64** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %94, %8
  %19 = load i32, i32* %17, align 4
  %20 = icmp ult i32 %19, 7
  br i1 %20, label %21, label %97

21:                                               ; preds = %18
  %22 = load i32, i32* %14, align 4
  %23 = load i32*, i32** @ADAM7_DX, align 8
  %24 = load i32, i32* %17, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = add i32 %22, %27
  %29 = load i32*, i32** @ADAM7_IX, align 8
  %30 = load i32, i32* %17, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = sub i32 %28, %33
  %35 = sub i32 %34, 1
  %36 = load i32*, i32** @ADAM7_DX, align 8
  %37 = load i32, i32* %17, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = udiv i32 %35, %40
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %17, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32*, i32** @ADAM7_DY, align 8
  %48 = load i32, i32* %17, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = add i32 %46, %51
  %53 = load i32*, i32** @ADAM7_IY, align 8
  %54 = load i32, i32* %17, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sub i32 %52, %57
  %59 = sub i32 %58, 1
  %60 = load i32*, i32** @ADAM7_DY, align 8
  %61 = load i32, i32* %17, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = udiv i32 %59, %64
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %17, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %17, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %21
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %17, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 0, i32* %80, align 4
  br label %81

81:                                               ; preds = %76, %21
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %17, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %17, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %81
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %17, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %17, align 4
  br label %18

97:                                               ; preds = %18
  %98 = load i64*, i64** %13, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 0
  store i64 0, i64* %99, align 8
  %100 = load i64*, i64** %12, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  store i64 0, i64* %101, align 8
  %102 = load i64*, i64** %11, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 0
  store i64 0, i64* %103, align 8
  store i32 0, i32* %17, align 4
  br label %104

104:                                              ; preds = %207, %97
  %105 = load i32, i32* %17, align 4
  %106 = icmp ult i32 %105, 7
  br i1 %106, label %107, label %210

107:                                              ; preds = %104
  %108 = load i64*, i64** %11, align 8
  %109 = load i32, i32* %17, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %17, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %143

119:                                              ; preds = %107
  %120 = load i32*, i32** %10, align 8
  %121 = load i32, i32* %17, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %143

126:                                              ; preds = %119
  %127 = load i32*, i32** %10, align 8
  %128 = load i32, i32* %17, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %9, align 8
  %133 = load i32, i32* %17, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %16, align 4
  %138 = mul i32 %136, %137
  %139 = add i32 %138, 7
  %140 = udiv i32 %139, 8
  %141 = add i32 1, %140
  %142 = mul i32 %131, %141
  br label %144

143:                                              ; preds = %119, %107
  br label %144

144:                                              ; preds = %143, %126
  %145 = phi i32 [ %142, %126 ], [ 0, %143 ]
  %146 = zext i32 %145 to i64
  %147 = add i64 %112, %146
  %148 = load i64*, i64** %11, align 8
  %149 = load i32, i32* %17, align 4
  %150 = add i32 %149, 1
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %148, i64 %151
  store i64 %147, i64* %152, align 8
  %153 = load i64*, i64** %12, align 8
  %154 = load i32, i32* %17, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = load i32*, i32** %10, align 8
  %159 = load i32, i32* %17, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %9, align 8
  %164 = load i32, i32* %17, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %16, align 4
  %169 = mul i32 %167, %168
  %170 = add i32 %169, 7
  %171 = udiv i32 %170, 8
  %172 = mul i32 %162, %171
  %173 = zext i32 %172 to i64
  %174 = add i64 %157, %173
  %175 = load i64*, i64** %12, align 8
  %176 = load i32, i32* %17, align 4
  %177 = add i32 %176, 1
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %175, i64 %178
  store i64 %174, i64* %179, align 8
  %180 = load i64*, i64** %13, align 8
  %181 = load i32, i32* %17, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i64, i64* %180, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = load i32*, i32** %10, align 8
  %186 = load i32, i32* %17, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** %9, align 8
  %191 = load i32, i32* %17, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = mul i32 %189, %194
  %196 = load i32, i32* %16, align 4
  %197 = mul i32 %195, %196
  %198 = add i32 %197, 7
  %199 = udiv i32 %198, 8
  %200 = zext i32 %199 to i64
  %201 = add i64 %184, %200
  %202 = load i64*, i64** %13, align 8
  %203 = load i32, i32* %17, align 4
  %204 = add i32 %203, 1
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i64, i64* %202, i64 %205
  store i64 %201, i64* %206, align 8
  br label %207

207:                                              ; preds = %144
  %208 = load i32, i32* %17, align 4
  %209 = add i32 %208, 1
  store i32 %209, i32* %17, align 4
  br label %104

210:                                              ; preds = %104
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
