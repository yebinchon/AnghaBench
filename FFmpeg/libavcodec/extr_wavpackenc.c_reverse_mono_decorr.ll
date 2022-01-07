; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_reverse_mono_decorr.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_reverse_mono_decorr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Decorr = type { i32, i32* }

@MAX_TERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Decorr*)* @reverse_mono_decorr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reverse_mono_decorr(%struct.Decorr* %0) #0 {
  %2 = alloca %struct.Decorr*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.Decorr* %0, %struct.Decorr** %2, align 8
  %7 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %8 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MAX_TERM, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %108

12:                                               ; preds = %1
  %13 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %14 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %20 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 2, %23
  %25 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %26 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %24, %29
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %3, align 8
  br label %49

33:                                               ; preds = %12
  %34 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %35 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 3, %38
  %40 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %41 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %39, %44
  %46 = ashr i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** %3, align 8
  br label %49

49:                                               ; preds = %33, %18
  %50 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %51 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %56 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %54, i32* %58, align 4
  %59 = load i8*, i8** %3, align 8
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %62 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %60, i32* %64, align 4
  %65 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %66 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %49
  %71 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %72 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 2, %75
  %77 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %78 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %76, %81
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  store i8* %84, i8** %3, align 8
  br label %101

85:                                               ; preds = %49
  %86 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %87 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 3, %90
  %92 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %93 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %91, %96
  %98 = ashr i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  store i8* %100, i8** %3, align 8
  br label %101

101:                                              ; preds = %85, %70
  %102 = load i8*, i8** %3, align 8
  %103 = ptrtoint i8* %102 to i32
  %104 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %105 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  store i32 %103, i32* %107, align 4
  br label %188

108:                                              ; preds = %1
  %109 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %110 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp sgt i32 %111, 1
  br i1 %112, label %113, label %187

113:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  %114 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %115 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %179, %113
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %121 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sdiv i32 %122, 2
  %124 = icmp slt i32 %119, %123
  br i1 %124, label %125, label %186

125:                                              ; preds = %118
  %126 = load i32, i32* @MAX_TERM, align 4
  %127 = sub nsw i32 %126, 1
  %128 = load i32, i32* %4, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* @MAX_TERM, align 4
  %131 = sub nsw i32 %130, 1
  %132 = load i32, i32* %5, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %5, align 4
  %134 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %135 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %142 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = xor i32 %147, %140
  store i32 %148, i32* %146, align 4
  %149 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %150 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %4, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %157 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = xor i32 %162, %155
  store i32 %163, i32* %161, align 4
  %164 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %165 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.Decorr*, %struct.Decorr** %2, align 8
  %172 = getelementptr inbounds %struct.Decorr, %struct.Decorr* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %4, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = xor i32 %177, %170
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %125
  %180 = load i32, i32* %4, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %4, align 4
  %182 = load i32, i32* %5, align 4
  %183 = add nsw i32 %182, -1
  store i32 %183, i32* %5, align 4
  %184 = load i32, i32* %6, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %6, align 4
  br label %118

186:                                              ; preds = %118
  br label %187

187:                                              ; preds = %186, %108
  br label %188

188:                                              ; preds = %187, %101
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
