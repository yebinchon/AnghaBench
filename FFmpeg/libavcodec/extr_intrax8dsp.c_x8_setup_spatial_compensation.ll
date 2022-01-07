; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_intrax8dsp.c_x8_setup_spatial_compensation.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_intrax8dsp.c_x8_setup_spatial_compensation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@area1 = common dso_local global i32 0, align 4
@area2 = common dso_local global i32 0, align 4
@area5 = common dso_local global i32 0, align 4
@area4 = common dso_local global i32 0, align 4
@area6 = common dso_local global i32 0, align 4
@area3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32*, i32*, i32)* @x8_setup_spatial_compensation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x8_setup_spatial_compensation(i32* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = and i32 %21, 3
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %29

24:                                               ; preds = %6
  %25 = load i32*, i32** %11, align 8
  store i32 2432, i32* %25, align 4
  %26 = load i32*, i32** %10, align 8
  store i32 0, i32* %26, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @memset(i32* %27, i32 128, i32 41)
  br label %209

29:                                               ; preds = %6
  store i32 256, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %14, align 4
  %30 = load i32, i32* %12, align 4
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %76, label %33

33:                                               ; preds = %29
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 -1
  store i32* %35, i32** %13, align 8
  store i32 7, i32* %15, align 4
  br label %36

36:                                               ; preds = %72, %33
  %37 = load i32, i32* %15, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %75

39:                                               ; preds = %36
  %40 = load i32*, i32** %13, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 -1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %18, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* @area1, align 4
  %46 = load i32, i32* %15, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  store i32 %43, i32* %49, align 4
  %50 = load i32*, i32** %13, align 8
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %18, align 4
  %57 = call i32 @FFMIN(i32 %55, i32 %56)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %18, align 4
  %60 = call i32 @FFMAX(i32 %58, i32 %59)
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %18, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* @area2, align 4
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  store i32 %61, i32* %67, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32*, i32** %13, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %13, align 8
  br label %72

72:                                               ; preds = %39
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %15, align 4
  br label %36

75:                                               ; preds = %36
  br label %76

76:                                               ; preds = %75, %29
  %77 = load i32, i32* %12, align 4
  %78 = and i32 %77, 2
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %142, label %80

80:                                               ; preds = %76
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = sub i64 0, %83
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  store i32* %85, i32** %13, align 8
  store i32 0, i32* %15, align 4
  br label %86

86:                                               ; preds = %104, %80
  %87 = load i32, i32* %15, align 4
  %88 = icmp slt i32 %87, 8
  br i1 %88, label %89, label %107

89:                                               ; preds = %86
  %90 = load i32*, i32** %13, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %18, align 4
  %100 = call i32 @FFMIN(i32 %98, i32 %99)
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %18, align 4
  %103 = call i32 @FFMAX(i32 %101, i32 %102)
  store i32 %103, i32* %17, align 4
  br label %104

104:                                              ; preds = %89
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %15, align 4
  br label %86

107:                                              ; preds = %86
  %108 = load i32, i32* %12, align 4
  %109 = and i32 %108, 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %107
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* @area5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %18, align 4
  %117 = call i32 @memset(i32* %115, i32 %116, i32 8)
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* @area4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32*, i32** %13, align 8
  %123 = call i32 @memcpy(i32* %121, i32* %122, i32 8)
  br label %131

124:                                              ; preds = %107
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* @area4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32*, i32** %13, align 8
  %130 = call i32 @memcpy(i32* %128, i32* %129, i32 16)
  br label %131

131:                                              ; preds = %124, %111
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* @area6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32*, i32** %13, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = sub i64 0, %138
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = call i32 @memcpy(i32* %135, i32* %140, i32 8)
  br label %142

142:                                              ; preds = %131, %76
  %143 = load i32, i32* %12, align 4
  %144 = and i32 %143, 3
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %172

146:                                              ; preds = %142
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %147, 4
  %149 = ashr i32 %148, 3
  store i32 %149, i32* %19, align 4
  %150 = load i32, i32* %12, align 4
  %151 = and i32 %150, 1
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %146
  %154 = load i32*, i32** %8, align 8
  %155 = load i32, i32* @area1, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %19, align 4
  %159 = call i32 @memset(i32* %157, i32 %158, i32 17)
  br label %167

160:                                              ; preds = %146
  %161 = load i32*, i32** %8, align 8
  %162 = load i32, i32* @area3, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %19, align 4
  %166 = call i32 @memset(i32* %164, i32 %165, i32 25)
  br label %167

167:                                              ; preds = %160, %153
  %168 = load i32, i32* %19, align 4
  %169 = mul nsw i32 %168, 9
  %170 = load i32, i32* %14, align 4
  %171 = add nsw i32 %170, %169
  store i32 %171, i32* %14, align 4
  br label %188

172:                                              ; preds = %142
  %173 = load i32*, i32** %7, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 -1
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = sub i64 0, %176
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %20, align 4
  %180 = load i32, i32* %20, align 4
  %181 = load i32*, i32** %8, align 8
  %182 = load i32, i32* @area3, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  store i32 %180, i32* %184, align 4
  %185 = load i32, i32* %20, align 4
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %14, align 4
  br label %188

188:                                              ; preds = %172, %167
  %189 = load i32, i32* %17, align 4
  %190 = load i32, i32* %16, align 4
  %191 = sub nsw i32 %189, %190
  %192 = load i32*, i32** %10, align 8
  store i32 %191, i32* %192, align 4
  %193 = load i32*, i32** %8, align 8
  %194 = load i32, i32* @area5, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %8, align 8
  %199 = load i32, i32* @area5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %197, %203
  %205 = load i32, i32* %14, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %14, align 4
  %207 = load i32, i32* %14, align 4
  %208 = load i32*, i32** %11, align 8
  store i32 %207, i32* %208, align 4
  br label %209

209:                                              ; preds = %188, %24
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
