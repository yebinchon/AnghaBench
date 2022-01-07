; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss2dsp.c_upsample_plane_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss2dsp.c_upsample_plane_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @upsample_plane_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upsample_plane_c(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %4
  br label %192

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 1
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 1
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %17, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %17, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %17, align 4
  %44 = ashr i32 %43, 1
  %45 = mul nsw i32 %42, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %41, i64 %46
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @memcpy(i32* %40, i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %123, %24
  %51 = load i32, i32* %17, align 4
  %52 = sub nsw i32 %51, 2
  store i32 %52, i32* %17, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %124

54:                                               ; preds = %50
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %17, align 4
  %58 = add nsw i32 %57, 1
  %59 = mul nsw i32 %56, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %55, i64 %60
  store i32* %61, i32** %11, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %17, align 4
  %65 = mul nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  store i32* %67, i32** %12, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %17, align 4
  %71 = add nsw i32 %70, 1
  %72 = ashr i32 %71, 1
  %73 = mul nsw i32 %69, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %68, i64 %74
  store i32* %75, i32** %9, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %17, align 4
  %79 = ashr i32 %78, 1
  %80 = mul nsw i32 %77, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %76, i64 %81
  store i32* %82, i32** %10, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sub nsw i32 %83, 1
  %85 = ashr i32 %84, 1
  store i32 %85, i32* %16, align 4
  br label %86

86:                                               ; preds = %120, %54
  %87 = load i32, i32* %16, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %123

89:                                               ; preds = %86
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %14, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %16, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %14, align 4
  %101 = mul nsw i32 3, %100
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %101, %102
  %104 = add nsw i32 %103, 2
  %105 = ashr i32 %104, 2
  %106 = load i32*, i32** %11, align 8
  %107 = load i32, i32* %16, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %105, i32* %109, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %15, align 4
  %112 = mul nsw i32 3, %111
  %113 = add nsw i32 %110, %112
  %114 = add nsw i32 %113, 2
  %115 = ashr i32 %114, 2
  %116 = load i32*, i32** %12, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %115, i32* %119, align 4
  br label %120

120:                                              ; preds = %89
  %121 = load i32, i32* %16, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %16, align 4
  br label %86

123:                                              ; preds = %86
  br label %50

124:                                              ; preds = %50
  %125 = load i32, i32* %8, align 4
  %126 = sub nsw i32 %125, 1
  store i32 %126, i32* %17, align 4
  br label %127

127:                                              ; preds = %189, %124
  %128 = load i32, i32* %17, align 4
  %129 = icmp sge i32 %128, 0
  br i1 %129, label %130, label %192

130:                                              ; preds = %127
  %131 = load i32*, i32** %5, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %17, align 4
  %134 = mul nsw i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %131, i64 %135
  store i32* %136, i32** %13, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sub nsw i32 %137, 1
  store i32 %138, i32* %16, align 4
  %139 = load i32*, i32** %13, align 8
  %140 = load i32, i32* %16, align 4
  %141 = ashr i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %13, align 8
  %146 = load i32, i32* %16, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32 %144, i32* %148, align 4
  br label %149

149:                                              ; preds = %153, %130
  %150 = load i32, i32* %16, align 4
  %151 = sub nsw i32 %150, 2
  store i32 %151, i32* %16, align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %188

153:                                              ; preds = %149
  %154 = load i32*, i32** %13, align 8
  %155 = load i32, i32* %16, align 4
  %156 = ashr i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %14, align 4
  %160 = load i32*, i32** %13, align 8
  %161 = load i32, i32* %16, align 4
  %162 = add nsw i32 %161, 1
  %163 = ashr i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %160, i64 %164
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %14, align 4
  %168 = mul nsw i32 3, %167
  %169 = load i32, i32* %15, align 4
  %170 = add nsw i32 %168, %169
  %171 = add nsw i32 %170, 1
  %172 = ashr i32 %171, 2
  %173 = load i32*, i32** %13, align 8
  %174 = load i32, i32* %16, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %172, i32* %176, align 4
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* %15, align 4
  %179 = mul nsw i32 3, %178
  %180 = add nsw i32 %177, %179
  %181 = add nsw i32 %180, 1
  %182 = ashr i32 %181, 2
  %183 = load i32*, i32** %13, align 8
  %184 = load i32, i32* %16, align 4
  %185 = add nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  store i32 %182, i32* %187, align 4
  br label %149

188:                                              ; preds = %149
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %17, align 4
  %191 = add nsw i32 %190, -1
  store i32 %191, i32* %17, align 4
  br label %127

192:                                              ; preds = %23, %127
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
