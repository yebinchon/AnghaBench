; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tcompression.c_tsCompressFloatImp.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tcompression.c_tsCompressFloatImp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { float }

@FLOAT_BYTES = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsCompressFloatImp(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.anon, align 4
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
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = bitcast i8* %28 to float*
  store float* %29, float** %8, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @FLOAT_BYTES, align 4
  %32 = mul nsw i32 %30, %31
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %34

34:                                               ; preds = %150, %3
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %153

38:                                               ; preds = %34
  %39 = load float*, float** %8, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %39, i64 %41
  %43 = load float, float* %42, align 4
  %44 = bitcast %union.anon* %15 to float*
  store float %43, float* %44, align 4
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %16, align 4
  %46 = bitcast %union.anon* %15 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %16, align 4
  %49 = xor i32 %47, %48
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* @FLOAT_BYTES, align 4
  %51 = load i32, i32* @BITS_PER_BYTE, align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %18, align 4
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %38
  %57 = load i32, i32* %17, align 4
  %58 = call i32 @BUILDIN_CTZ(i32 %57)
  store i32 %58, i32* %19, align 4
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @BUILDIN_CLZ(i32 %59)
  store i32 %60, i32* %18, align 4
  br label %61

61:                                               ; preds = %56, %38
  store i32 0, i32* %20, align 4
  %62 = load i32, i32* %19, align 4
  %63 = load i32, i32* %18, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = load i32, i32* @FLOAT_BYTES, align 4
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* @BITS_PER_BYTE, align 4
  %69 = sdiv i32 %67, %68
  %70 = sub nsw i32 %66, %69
  store i32 %70, i32* %20, align 4
  %71 = load i32, i32* %20, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i32, i32* %20, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %20, align 4
  br label %76

76:                                               ; preds = %73, %65
  %77 = load i32, i32* %20, align 4
  %78 = or i32 8, %77
  store i32 %78, i32* %21, align 4
  br label %92

79:                                               ; preds = %61
  %80 = load i32, i32* @FLOAT_BYTES, align 4
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* @BITS_PER_BYTE, align 4
  %83 = sdiv i32 %81, %82
  %84 = sub nsw i32 %80, %83
  store i32 %84, i32* %20, align 4
  %85 = load i32, i32* %20, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* %20, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %20, align 4
  br label %90

90:                                               ; preds = %87, %79
  %91 = load i32, i32* %20, align 4
  store i32 %91, i32* %21, align 4
  br label %92

92:                                               ; preds = %90, %76
  %93 = load i32, i32* %14, align 4
  %94 = srem i32 %93, 2
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* %17, align 4
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %21, align 4
  store i32 %98, i32* %13, align 4
  br label %147

99:                                               ; preds = %92
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @INT8MASK(i32 3)
  %102 = and i32 %100, %101
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %22, align 4
  %104 = load i32, i32* %21, align 4
  %105 = call i32 @INT8MASK(i32 3)
  %106 = and i32 %104, %105
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %23, align 4
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  %110 = load i32, i32* %22, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* %23, align 4
  %113 = add nsw i32 %111, %112
  %114 = load i32, i32* %9, align 4
  %115 = icmp sle i32 %113, %114
  br i1 %115, label %116, label %136

116:                                              ; preds = %99
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %21, align 4
  %119 = shl i32 %118, 4
  %120 = or i32 %117, %119
  store i32 %120, i32* %24, align 4
  %121 = load i32, i32* %24, align 4
  %122 = trunc i32 %121 to i8
  %123 = load i8*, i8** %7, align 8
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  store i8 %122, i8* %127, align 1
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %13, align 4
  %130 = load i8*, i8** %7, align 8
  %131 = call i32 @encodeFloatValue(i32 %128, i32 %129, i8* %130, i32* %10)
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* %21, align 4
  %134 = load i8*, i8** %7, align 8
  %135 = call i32 @encodeFloatValue(i32 %132, i32 %133, i8* %134, i32* %10)
  br label %146

136:                                              ; preds = %99
  %137 = load i8*, i8** %7, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  store i8 1, i8* %138, align 1
  %139 = load i8*, i8** %7, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  %141 = load i8*, i8** %5, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sub nsw i32 %142, 1
  %144 = call i32 @memcpy(i8* %140, i8* %141, i32 %143)
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %4, align 4
  br label %200

146:                                              ; preds = %116
  br label %147

147:                                              ; preds = %146, %96
  %148 = bitcast %union.anon* %15 to i32*
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %11, align 4
  br label %150

150:                                              ; preds = %147
  %151 = load i32, i32* %14, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %14, align 4
  br label %34

153:                                              ; preds = %34
  %154 = load i32, i32* %6, align 4
  %155 = srem i32 %154, 2
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %196

157:                                              ; preds = %153
  %158 = load i32, i32* %13, align 4
  %159 = call i32 @INT8MASK(i32 3)
  %160 = and i32 %158, %159
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %25, align 4
  store i32 1, i32* %26, align 4
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, 1
  %164 = load i32, i32* %25, align 4
  %165 = add nsw i32 %163, %164
  %166 = load i32, i32* %26, align 4
  %167 = add nsw i32 %165, %166
  %168 = load i32, i32* %9, align 4
  %169 = icmp sle i32 %167, %168
  br i1 %169, label %170, label %185

170:                                              ; preds = %157
  %171 = load i32, i32* %13, align 4
  store i32 %171, i32* %27, align 4
  %172 = load i32, i32* %27, align 4
  %173 = trunc i32 %172 to i8
  %174 = load i8*, i8** %7, align 8
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %10, align 4
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i8, i8* %174, i64 %177
  store i8 %173, i8* %178, align 1
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* %13, align 4
  %181 = load i8*, i8** %7, align 8
  %182 = call i32 @encodeFloatValue(i32 %179, i32 %180, i8* %181, i32* %10)
  %183 = load i8*, i8** %7, align 8
  %184 = call i32 @encodeFloatValue(i32 0, i32 0, i8* %183, i32* %10)
  br label %195

185:                                              ; preds = %157
  %186 = load i8*, i8** %7, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 0
  store i8 1, i8* %187, align 1
  %188 = load i8*, i8** %7, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 1
  %190 = load i8*, i8** %5, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sub nsw i32 %191, 1
  %193 = call i32 @memcpy(i8* %189, i8* %190, i32 %192)
  %194 = load i32, i32* %9, align 4
  store i32 %194, i32* %4, align 4
  br label %200

195:                                              ; preds = %170
  br label %196

196:                                              ; preds = %195, %153
  %197 = load i8*, i8** %7, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 0
  store i8 0, i8* %198, align 1
  %199 = load i32, i32* %10, align 4
  store i32 %199, i32* %4, align 4
  br label %200

200:                                              ; preds = %196, %185, %136
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local i32 @BUILDIN_CTZ(i32) #1

declare dso_local i32 @BUILDIN_CLZ(i32) #1

declare dso_local i32 @INT8MASK(i32) #1

declare dso_local i32 @encodeFloatValue(i32, i32, i8*, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
