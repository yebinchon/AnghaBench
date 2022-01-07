; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonencodingsencoding_base64.c_unbase64.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonencodingsencoding_base64.c_unbase64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@unb64 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @unbase64(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
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
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %22 = load i8*, i8** %5, align 8
  store i8* %22, i8** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32*, i32** %7, align 8
  store i32 0, i32* %26, align 4
  store i8* null, i8** %4, align 8
  br label %240

27:                                               ; preds = %3
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 61
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %36, %27
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 61
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %48, %39
  %52 = load i32, i32* %6, align 4
  %53 = mul nsw i32 3, %52
  %54 = sdiv i32 %53, 4
  %55 = load i32, i32* %12, align 4
  %56 = sub nsw i32 %54, %55
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @malloc(i32 %59)
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %9, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %51
  store i8* null, i8** %4, align 8
  br label %240

65:                                               ; preds = %51
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %145, %65
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %68, 4
  %70 = load i32, i32* %12, align 4
  %71 = sub nsw i32 %69, %70
  %72 = icmp sle i32 %67, %71
  br i1 %72, label %73, label %148

73:                                               ; preds = %66
  %74 = load i32*, i32** @unb64, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i64
  %81 = getelementptr inbounds i32, i32* %74, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %13, align 4
  %83 = load i32*, i32** @unb64, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds i32, i32* %83, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %14, align 4
  %93 = load i32*, i32** @unb64, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 2
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i64
  %101 = getelementptr inbounds i32, i32* %93, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %15, align 4
  %103 = load i32*, i32** @unb64, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 3
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i64
  %111 = getelementptr inbounds i32, i32* %103, i64 %110
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %13, align 4
  %114 = shl i32 %113, 2
  %115 = load i32, i32* %14, align 4
  %116 = ashr i32 %115, 4
  %117 = or i32 %114, %116
  %118 = trunc i32 %117 to i8
  %119 = load i8*, i8** %9, align 8
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  store i8 %118, i8* %123, align 1
  %124 = load i32, i32* %14, align 4
  %125 = shl i32 %124, 4
  %126 = load i32, i32* %15, align 4
  %127 = ashr i32 %126, 2
  %128 = or i32 %125, %127
  %129 = trunc i32 %128 to i8
  %130 = load i8*, i8** %9, align 8
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  store i8 %129, i8* %134, align 1
  %135 = load i32, i32* %15, align 4
  %136 = shl i32 %135, 6
  %137 = load i32, i32* %16, align 4
  %138 = or i32 %136, %137
  %139 = trunc i32 %138 to i8
  %140 = load i8*, i8** %9, align 8
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i8, i8* %140, i64 %143
  store i8 %139, i8* %144, align 1
  br label %145

145:                                              ; preds = %73
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, 4
  store i32 %147, i32* %11, align 4
  br label %66

148:                                              ; preds = %66
  %149 = load i32, i32* %12, align 4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %203

151:                                              ; preds = %148
  %152 = load i32*, i32** @unb64, align 8
  %153 = load i8*, i8** %8, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i64
  %159 = getelementptr inbounds i32, i32* %152, i64 %158
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %17, align 4
  %161 = load i32*, i32** @unb64, align 8
  %162 = load i8*, i8** %8, align 8
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %162, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i64
  %169 = getelementptr inbounds i32, i32* %161, i64 %168
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %18, align 4
  %171 = load i32*, i32** @unb64, align 8
  %172 = load i8*, i8** %8, align 8
  %173 = load i32, i32* %11, align 4
  %174 = add nsw i32 %173, 2
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %172, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i64
  %179 = getelementptr inbounds i32, i32* %171, i64 %178
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %19, align 4
  %181 = load i32, i32* %17, align 4
  %182 = shl i32 %181, 2
  %183 = load i32, i32* %18, align 4
  %184 = ashr i32 %183, 4
  %185 = or i32 %182, %184
  %186 = trunc i32 %185 to i8
  %187 = load i8*, i8** %9, align 8
  %188 = load i32, i32* %10, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %10, align 4
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i8, i8* %187, i64 %190
  store i8 %186, i8* %191, align 1
  %192 = load i32, i32* %18, align 4
  %193 = shl i32 %192, 4
  %194 = load i32, i32* %19, align 4
  %195 = ashr i32 %194, 2
  %196 = or i32 %193, %195
  %197 = trunc i32 %196 to i8
  %198 = load i8*, i8** %9, align 8
  %199 = load i32, i32* %10, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %10, align 4
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i8, i8* %198, i64 %201
  store i8 %197, i8* %202, align 1
  br label %238

203:                                              ; preds = %148
  %204 = load i32, i32* %12, align 4
  %205 = icmp eq i32 %204, 2
  br i1 %205, label %206, label %237

206:                                              ; preds = %203
  %207 = load i32*, i32** @unb64, align 8
  %208 = load i8*, i8** %8, align 8
  %209 = load i32, i32* %11, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i64
  %214 = getelementptr inbounds i32, i32* %207, i64 %213
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* %20, align 4
  %216 = load i32*, i32** @unb64, align 8
  %217 = load i8*, i8** %8, align 8
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %217, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i64
  %224 = getelementptr inbounds i32, i32* %216, i64 %223
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %21, align 4
  %226 = load i32, i32* %20, align 4
  %227 = shl i32 %226, 2
  %228 = load i32, i32* %21, align 4
  %229 = ashr i32 %228, 4
  %230 = or i32 %227, %229
  %231 = trunc i32 %230 to i8
  %232 = load i8*, i8** %9, align 8
  %233 = load i32, i32* %10, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %10, align 4
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i8, i8* %232, i64 %235
  store i8 %231, i8* %236, align 1
  br label %237

237:                                              ; preds = %206, %203
  br label %238

238:                                              ; preds = %237, %151
  %239 = load i8*, i8** %9, align 8
  store i8* %239, i8** %4, align 8
  br label %240

240:                                              ; preds = %238, %64, %25
  %241 = load i8*, i8** %4, align 8
  ret i8* %241
}

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
