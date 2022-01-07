; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fspp.c_row_fdct_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fspp.c_row_fdct_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIX_0_707106781 = common dso_local global i32 0, align 4
@FIX_0_382683433 = common dso_local global i32 0, align 4
@FIX_0_541196100 = common dso_local global i32 0, align 4
@FIX_1_306562965 = common dso_local global i32 0, align 4
@DCTSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64, i32)* @row_fdct_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @row_fdct_c(i32* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
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
  %28 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = mul nsw i32 %29, 4
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** %5, align 8
  store i32* %31, i32** %28, align 8
  br label %32

32:                                               ; preds = %224, %4
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %227

35:                                               ; preds = %32
  %36 = load i32*, i32** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = mul i64 %37, 0
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = mul i64 %42, 7
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %40, %45
  store i32 %46, i32* %9, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = mul i64 %48, 0
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = mul i64 %53, 7
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %51, %56
  store i32 %57, i32* %16, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = mul i64 %59, 1
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = mul i64 %64, 6
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %62, %67
  store i32 %68, i32* %10, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = mul i64 %70, 1
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = mul i64 %75, 6
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %73, %78
  store i32 %79, i32* %15, align 4
  %80 = load i32*, i32** %6, align 8
  %81 = load i64, i64* %7, align 8
  %82 = mul i64 %81, 2
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = load i64, i64* %7, align 8
  %87 = mul i64 %86, 5
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %84, %89
  store i32 %90, i32* %11, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = load i64, i64* %7, align 8
  %93 = mul i64 %92, 2
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = load i64, i64* %7, align 8
  %98 = mul i64 %97, 5
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %95, %100
  store i32 %101, i32* %14, align 4
  %102 = load i32*, i32** %6, align 8
  %103 = load i64, i64* %7, align 8
  %104 = mul i64 %103, 3
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %6, align 8
  %108 = load i64, i64* %7, align 8
  %109 = mul i64 %108, 4
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %106, %111
  store i32 %112, i32* %12, align 4
  %113 = load i32*, i32** %6, align 8
  %114 = load i64, i64* %7, align 8
  %115 = mul i64 %114, 3
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %6, align 8
  %119 = load i64, i64* %7, align 8
  %120 = mul i64 %119, 4
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %117, %122
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %124, %125
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %12, align 4
  %129 = sub nsw i32 %127, %128
  store i32 %129, i32* %20, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %130, %131
  store i32 %132, i32* %18, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %11, align 4
  %135 = sub nsw i32 %133, %134
  store i32 %135, i32* %19, align 4
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* %18, align 4
  %138 = add nsw i32 %136, %137
  %139 = load i32*, i32** %28, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 2
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* %18, align 4
  %143 = sub nsw i32 %141, %142
  %144 = load i32*, i32** %28, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 3
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %19, align 4
  %147 = load i32, i32* %20, align 4
  %148 = add nsw i32 %146, %147
  %149 = shl i32 %148, 2
  %150 = load i32, i32* @FIX_0_707106781, align 4
  %151 = call i32 @MULTIPLY16H(i32 %149, i32 %150)
  store i32 %151, i32* %21, align 4
  %152 = load i32, i32* %20, align 4
  %153 = load i32, i32* %21, align 4
  %154 = add nsw i32 %152, %153
  %155 = load i32*, i32** %28, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* %20, align 4
  %158 = load i32, i32* %21, align 4
  %159 = sub nsw i32 %157, %158
  %160 = load i32*, i32** %28, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %162, %163
  %165 = shl i32 %164, 2
  store i32 %165, i32* %17, align 4
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* %15, align 4
  %168 = add nsw i32 %166, %167
  %169 = shl i32 %168, 2
  store i32 %169, i32* %18, align 4
  %170 = load i32, i32* %15, align 4
  %171 = load i32, i32* %16, align 4
  %172 = add nsw i32 %170, %171
  %173 = shl i32 %172, 2
  store i32 %173, i32* %19, align 4
  %174 = load i32, i32* %17, align 4
  %175 = load i32, i32* %19, align 4
  %176 = sub nsw i32 %174, %175
  %177 = load i32, i32* @FIX_0_382683433, align 4
  %178 = call i32 @MULTIPLY16H(i32 %176, i32 %177)
  store i32 %178, i32* %25, align 4
  %179 = load i32, i32* %17, align 4
  %180 = load i32, i32* @FIX_0_541196100, align 4
  %181 = call i32 @MULTIPLY16H(i32 %179, i32 %180)
  %182 = load i32, i32* %25, align 4
  %183 = add nsw i32 %181, %182
  store i32 %183, i32* %22, align 4
  %184 = load i32, i32* %19, align 4
  %185 = load i32, i32* @FIX_1_306562965, align 4
  %186 = call i32 @MULTIPLY16H(i32 %184, i32 %185)
  %187 = load i32, i32* %25, align 4
  %188 = add nsw i32 %186, %187
  store i32 %188, i32* %24, align 4
  %189 = load i32, i32* %18, align 4
  %190 = load i32, i32* @FIX_0_707106781, align 4
  %191 = call i32 @MULTIPLY16H(i32 %189, i32 %190)
  store i32 %191, i32* %23, align 4
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* %23, align 4
  %194 = add nsw i32 %192, %193
  store i32 %194, i32* %26, align 4
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* %23, align 4
  %197 = sub nsw i32 %195, %196
  store i32 %197, i32* %27, align 4
  %198 = load i32, i32* %27, align 4
  %199 = load i32, i32* %22, align 4
  %200 = add nsw i32 %198, %199
  %201 = load i32*, i32** %28, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 4
  store i32 %200, i32* %202, align 4
  %203 = load i32, i32* %27, align 4
  %204 = load i32, i32* %22, align 4
  %205 = sub nsw i32 %203, %204
  %206 = load i32*, i32** %28, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 5
  store i32 %205, i32* %207, align 4
  %208 = load i32, i32* %26, align 4
  %209 = load i32, i32* %24, align 4
  %210 = add nsw i32 %208, %209
  %211 = load i32*, i32** %28, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 6
  store i32 %210, i32* %212, align 4
  %213 = load i32, i32* %26, align 4
  %214 = load i32, i32* %24, align 4
  %215 = sub nsw i32 %213, %214
  %216 = load i32*, i32** %28, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 7
  store i32 %215, i32* %217, align 4
  %218 = load i32*, i32** %6, align 8
  %219 = getelementptr inbounds i32, i32* %218, i32 1
  store i32* %219, i32** %6, align 8
  %220 = load i32, i32* @DCTSIZE, align 4
  %221 = load i32*, i32** %28, align 8
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  store i32* %223, i32** %28, align 8
  br label %224

224:                                              ; preds = %35
  %225 = load i32, i32* %8, align 4
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %8, align 4
  br label %32

227:                                              ; preds = %32
  ret void
}

declare dso_local i32 @MULTIPLY16H(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
