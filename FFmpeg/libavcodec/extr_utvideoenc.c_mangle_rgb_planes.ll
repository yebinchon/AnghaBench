; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utvideoenc.c_mangle_rgb_planes.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_utvideoenc.c_mangle_rgb_planes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32, i32**, i32, i32*, i32, i32)* @mangle_rgb_planes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mangle_rgb_planes(i32** %0, i32 %1, i32** %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store i32** %0, i32*** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32** %2, i32*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %23 = load i32, i32* %9, align 4
  %24 = mul nsw i32 2, %23
  store i32 %24, i32* %17, align 4
  %25 = load i32**, i32*** %10, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %18, align 8
  %28 = load i32**, i32*** %10, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %19, align 8
  %31 = load i32**, i32*** %10, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 2
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %20, align 8
  %34 = load i32**, i32*** %10, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 3
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %21, align 8
  store i32 0, i32* %16, align 4
  br label %37

37:                                               ; preds = %189, %7
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %192

41:                                               ; preds = %37
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %96

44:                                               ; preds = %41
  store i32 0, i32* %15, align 4
  br label %45

45:                                               ; preds = %92, %44
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %95

49:                                               ; preds = %45
  %50 = load i32*, i32** %18, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %22, align 4
  %55 = load i32, i32* %22, align 4
  %56 = load i32**, i32*** %8, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %55, i32* %61, align 4
  %62 = load i32, i32* %22, align 4
  %63 = add i32 %62, 128
  store i32 %63, i32* %22, align 4
  %64 = load i32*, i32** %19, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %22, align 4
  %70 = sub i32 %68, %69
  %71 = load i32**, i32*** %8, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %17, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  %77 = load i32*, i32** %20, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %22, align 4
  %83 = sub i32 %81, %82
  %84 = load i32**, i32*** %8, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %17, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %83, i32* %89, align 4
  %90 = load i32, i32* %17, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %17, align 4
  br label %92

92:                                               ; preds = %49
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %15, align 4
  br label %45

95:                                               ; preds = %45
  br label %165

96:                                               ; preds = %41
  store i32 0, i32* %15, align 4
  br label %97

97:                                               ; preds = %155, %96
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %158

101:                                              ; preds = %97
  %102 = load i32*, i32** %18, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %22, align 4
  %107 = load i32, i32* %22, align 4
  %108 = load i32**, i32*** %8, align 8
  %109 = getelementptr inbounds i32*, i32** %108, i64 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %17, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %107, i32* %113, align 4
  %114 = load i32, i32* %22, align 4
  %115 = add i32 %114, 128
  store i32 %115, i32* %22, align 4
  %116 = load i32*, i32** %19, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %22, align 4
  %122 = sub i32 %120, %121
  %123 = load i32**, i32*** %8, align 8
  %124 = getelementptr inbounds i32*, i32** %123, i64 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %17, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %122, i32* %128, align 4
  %129 = load i32*, i32** %20, align 8
  %130 = load i32, i32* %15, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %22, align 4
  %135 = sub i32 %133, %134
  %136 = load i32**, i32*** %8, align 8
  %137 = getelementptr inbounds i32*, i32** %136, i64 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %17, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %135, i32* %141, align 4
  %142 = load i32*, i32** %21, align 8
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32**, i32*** %8, align 8
  %148 = getelementptr inbounds i32*, i32** %147, i64 3
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %17, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %146, i32* %152, align 4
  %153 = load i32, i32* %17, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %17, align 4
  br label %155

155:                                              ; preds = %101
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %15, align 4
  br label %97

158:                                              ; preds = %97
  %159 = load i32*, i32** %12, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 3
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %21, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32* %164, i32** %21, align 8
  br label %165

165:                                              ; preds = %158, %95
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %13, align 4
  %168 = sub nsw i32 %166, %167
  %169 = load i32, i32* %17, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %17, align 4
  %171 = load i32*, i32** %12, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %18, align 8
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  store i32* %176, i32** %18, align 8
  %177 = load i32*, i32** %12, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %19, align 8
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  store i32* %182, i32** %19, align 8
  %183 = load i32*, i32** %12, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 2
  %185 = load i32, i32* %184, align 4
  %186 = load i32*, i32** %20, align 8
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  store i32* %188, i32** %20, align 8
  br label %189

189:                                              ; preds = %165
  %190 = load i32, i32* %16, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %16, align 4
  br label %37

192:                                              ; preds = %37
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
