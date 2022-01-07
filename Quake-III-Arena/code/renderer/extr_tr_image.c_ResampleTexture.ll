; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_image.c_ResampleTexture.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_image.c_ResampleTexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*)* }

@ri = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ResampleTexture: max width\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32*, i32, i32)* @ResampleTexture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ResampleTexture(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [2048 x i32], align 16
  %20 = alloca [2048 x i32], align 16
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp sgt i32 %25, 2048
  br i1 %26, label %27, label %31

27:                                               ; preds = %6
  %28 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 0), align 8
  %29 = load i32, i32* @ERR_DROP, align 4
  %30 = call i32 %28(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %27, %6
  %32 = load i32, i32* %8, align 4
  %33 = mul nsw i32 %32, 65536
  %34 = load i32, i32* %11, align 4
  %35 = sdiv i32 %33, %34
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %18, align 4
  %37 = lshr i32 %36, 2
  store i32 %37, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %52, %31
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i32, i32* %17, align 4
  %44 = lshr i32 %43, 16
  %45 = mul i32 4, %44
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [2048 x i32], [2048 x i32]* %19, i64 0, i64 %47
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %17, align 4
  %51 = add i32 %50, %49
  store i32 %51, i32* %17, align 4
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %13, align 4
  br label %38

55:                                               ; preds = %38
  %56 = load i32, i32* %18, align 4
  %57 = lshr i32 %56, 2
  %58 = mul i32 3, %57
  store i32 %58, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %59

59:                                               ; preds = %73, %55
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load i32, i32* %17, align 4
  %65 = lshr i32 %64, 16
  %66 = mul i32 4, %65
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [2048 x i32], [2048 x i32]* %20, i64 0, i64 %68
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %17, align 4
  %72 = add i32 %71, %70
  store i32 %72, i32* %17, align 4
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %13, align 4
  br label %59

76:                                               ; preds = %59
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %235, %76
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %242

81:                                               ; preds = %77
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %13, align 4
  %85 = sitofp i32 %84 to double
  %86 = fadd double %85, 2.500000e-01
  %87 = load i32, i32* %9, align 4
  %88 = sitofp i32 %87 to double
  %89 = fmul double %86, %88
  %90 = load i32, i32* %12, align 4
  %91 = sitofp i32 %90 to double
  %92 = fdiv double %89, %91
  %93 = fptosi double %92 to i32
  %94 = mul nsw i32 %83, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %82, i64 %95
  store i32* %96, i32** %15, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %13, align 4
  %100 = sitofp i32 %99 to double
  %101 = fadd double %100, 7.500000e-01
  %102 = load i32, i32* %9, align 4
  %103 = sitofp i32 %102 to double
  %104 = fmul double %101, %103
  %105 = load i32, i32* %12, align 4
  %106 = sitofp i32 %105 to double
  %107 = fdiv double %104, %106
  %108 = fptosi double %107 to i32
  %109 = mul nsw i32 %98, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %97, i64 %110
  store i32* %111, i32** %16, align 8
  %112 = load i32, i32* %18, align 4
  %113 = lshr i32 %112, 1
  store i32 %113, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %114

114:                                              ; preds = %231, %81
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %234

118:                                              ; preds = %114
  %119 = load i32*, i32** %15, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [2048 x i32], [2048 x i32]* %19, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %119, i64 %124
  store i32* %125, i32** %21, align 8
  %126 = load i32*, i32** %15, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [2048 x i32], [2048 x i32]* %20, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %126, i64 %131
  store i32* %132, i32** %22, align 8
  %133 = load i32*, i32** %16, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [2048 x i32], [2048 x i32]* %19, i64 0, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %133, i64 %138
  store i32* %139, i32** %23, align 8
  %140 = load i32*, i32** %16, align 8
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [2048 x i32], [2048 x i32]* %20, i64 0, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %140, i64 %145
  store i32* %146, i32** %24, align 8
  %147 = load i32*, i32** %21, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %22, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %149, %152
  %154 = load i32*, i32** %23, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %153, %156
  %158 = load i32*, i32** %24, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %157, %160
  %162 = ashr i32 %161, 2
  %163 = load i32*, i32** %10, align 8
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  store i32 %162, i32* %167, align 4
  %168 = load i32*, i32** %21, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32*, i32** %22, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %170, %173
  %175 = load i32*, i32** %23, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %174, %177
  %179 = load i32*, i32** %24, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %178, %181
  %183 = ashr i32 %182, 2
  %184 = load i32*, i32** %10, align 8
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  store i32 %183, i32* %188, align 4
  %189 = load i32*, i32** %21, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 2
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** %22, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %191, %194
  %196 = load i32*, i32** %23, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 2
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %195, %198
  %200 = load i32*, i32** %24, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %199, %202
  %204 = ashr i32 %203, 2
  %205 = load i32*, i32** %10, align 8
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = getelementptr inbounds i32, i32* %208, i64 2
  store i32 %204, i32* %209, align 4
  %210 = load i32*, i32** %21, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 3
  %212 = load i32, i32* %211, align 4
  %213 = load i32*, i32** %22, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 3
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %212, %215
  %217 = load i32*, i32** %23, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 3
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %216, %219
  %221 = load i32*, i32** %24, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 3
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %220, %223
  %225 = ashr i32 %224, 2
  %226 = load i32*, i32** %10, align 8
  %227 = load i32, i32* %14, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = getelementptr inbounds i32, i32* %229, i64 3
  store i32 %225, i32* %230, align 4
  br label %231

231:                                              ; preds = %118
  %232 = load i32, i32* %14, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %14, align 4
  br label %114

234:                                              ; preds = %114
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %13, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %13, align 4
  %238 = load i32, i32* %11, align 4
  %239 = load i32*, i32** %10, align 8
  %240 = sext i32 %238 to i64
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  store i32* %241, i32** %10, align 8
  br label %77

242:                                              ; preds = %77
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
