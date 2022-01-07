; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_base64.c_mbedtls_base64_encode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_base64.c_mbedtls_base64_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BASE64_SIZE_T_MAX = common dso_local global i32 0, align 4
@MBEDTLS_ERR_BASE64_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@base64_enc_map = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_base64_encode(i8* %0, i64 %1, i64* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i64*, i64** %9, align 8
  store i64 0, i64* %21, align 8
  store i32 0, i32* %6, align 4
  br label %204

22:                                               ; preds = %5
  %23 = load i64, i64* %11, align 8
  %24 = udiv i64 %23, 3
  %25 = load i64, i64* %11, align 8
  %26 = urem i64 %25, 3
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = add i64 %24, %29
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load i32, i32* @BASE64_SIZE_T_MAX, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sdiv i32 %33, 4
  %35 = sext i32 %34 to i64
  %36 = icmp ugt i64 %31, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %22
  %38 = load i32, i32* @BASE64_SIZE_T_MAX, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64*, i64** %9, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i32, i32* @MBEDTLS_ERR_BASE64_BUFFER_TOO_SMALL, align 4
  store i32 %41, i32* %6, align 4
  br label %204

42:                                               ; preds = %22
  %43 = load i64, i64* %13, align 8
  %44 = mul i64 %43, 4
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %13, align 8
  %47 = add i64 %46, 1
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load i8*, i8** %7, align 8
  %51 = icmp eq i8* null, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %49, %42
  %53 = load i64, i64* %13, align 8
  %54 = add i64 %53, 1
  %55 = load i64*, i64** %9, align 8
  store i64 %54, i64* %55, align 8
  %56 = load i32, i32* @MBEDTLS_ERR_BASE64_BUFFER_TOO_SMALL, align 4
  store i32 %56, i32* %6, align 4
  br label %204

57:                                               ; preds = %49
  %58 = load i64, i64* %11, align 8
  %59 = udiv i64 %58, 3
  %60 = mul i64 %59, 3
  store i64 %60, i64* %13, align 8
  store i64 0, i64* %12, align 8
  %61 = load i8*, i8** %7, align 8
  store i8* %61, i8** %17, align 8
  br label %62

62:                                               ; preds = %126, %57
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %13, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %129

66:                                               ; preds = %62
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %10, align 8
  %69 = load i8, i8* %67, align 1
  %70 = zext i8 %69 to i32
  store i32 %70, i32* %14, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %10, align 8
  %73 = load i8, i8* %71, align 1
  %74 = zext i8 %73 to i32
  store i32 %74, i32* %15, align 4
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %10, align 8
  %77 = load i8, i8* %75, align 1
  %78 = zext i8 %77 to i32
  store i32 %78, i32* %16, align 4
  %79 = load i8**, i8*** @base64_enc_map, align 8
  %80 = load i32, i32* %14, align 4
  %81 = ashr i32 %80, 2
  %82 = and i32 %81, 63
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %79, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = ptrtoint i8* %85 to i8
  %87 = load i8*, i8** %17, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %17, align 8
  store i8 %86, i8* %87, align 1
  %89 = load i8**, i8*** @base64_enc_map, align 8
  %90 = load i32, i32* %14, align 4
  %91 = and i32 %90, 3
  %92 = shl i32 %91, 4
  %93 = load i32, i32* %15, align 4
  %94 = ashr i32 %93, 4
  %95 = add nsw i32 %92, %94
  %96 = and i32 %95, 63
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %89, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = ptrtoint i8* %99 to i8
  %101 = load i8*, i8** %17, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %17, align 8
  store i8 %100, i8* %101, align 1
  %103 = load i8**, i8*** @base64_enc_map, align 8
  %104 = load i32, i32* %15, align 4
  %105 = and i32 %104, 15
  %106 = shl i32 %105, 2
  %107 = load i32, i32* %16, align 4
  %108 = ashr i32 %107, 6
  %109 = add nsw i32 %106, %108
  %110 = and i32 %109, 63
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %103, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = ptrtoint i8* %113 to i8
  %115 = load i8*, i8** %17, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %17, align 8
  store i8 %114, i8* %115, align 1
  %117 = load i8**, i8*** @base64_enc_map, align 8
  %118 = load i32, i32* %16, align 4
  %119 = and i32 %118, 63
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %117, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = ptrtoint i8* %122 to i8
  %124 = load i8*, i8** %17, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %17, align 8
  store i8 %123, i8* %124, align 1
  br label %126

126:                                              ; preds = %66
  %127 = load i64, i64* %12, align 8
  %128 = add i64 %127, 3
  store i64 %128, i64* %12, align 8
  br label %62

129:                                              ; preds = %62
  %130 = load i64, i64* %12, align 8
  %131 = load i64, i64* %11, align 8
  %132 = icmp ult i64 %130, %131
  br i1 %132, label %133, label %196

133:                                              ; preds = %129
  %134 = load i8*, i8** %10, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %10, align 8
  %136 = load i8, i8* %134, align 1
  %137 = zext i8 %136 to i32
  store i32 %137, i32* %14, align 4
  %138 = load i64, i64* %12, align 8
  %139 = add i64 %138, 1
  %140 = load i64, i64* %11, align 8
  %141 = icmp ult i64 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %133
  %143 = load i8*, i8** %10, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %10, align 8
  %145 = load i8, i8* %143, align 1
  %146 = zext i8 %145 to i32
  br label %148

147:                                              ; preds = %133
  br label %148

148:                                              ; preds = %147, %142
  %149 = phi i32 [ %146, %142 ], [ 0, %147 ]
  store i32 %149, i32* %15, align 4
  %150 = load i8**, i8*** @base64_enc_map, align 8
  %151 = load i32, i32* %14, align 4
  %152 = ashr i32 %151, 2
  %153 = and i32 %152, 63
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %150, i64 %154
  %156 = load i8*, i8** %155, align 8
  %157 = ptrtoint i8* %156 to i8
  %158 = load i8*, i8** %17, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %17, align 8
  store i8 %157, i8* %158, align 1
  %160 = load i8**, i8*** @base64_enc_map, align 8
  %161 = load i32, i32* %14, align 4
  %162 = and i32 %161, 3
  %163 = shl i32 %162, 4
  %164 = load i32, i32* %15, align 4
  %165 = ashr i32 %164, 4
  %166 = add nsw i32 %163, %165
  %167 = and i32 %166, 63
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %160, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = ptrtoint i8* %170 to i8
  %172 = load i8*, i8** %17, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %17, align 8
  store i8 %171, i8* %172, align 1
  %174 = load i64, i64* %12, align 8
  %175 = add i64 %174, 1
  %176 = load i64, i64* %11, align 8
  %177 = icmp ult i64 %175, %176
  br i1 %177, label %178, label %190

178:                                              ; preds = %148
  %179 = load i8**, i8*** @base64_enc_map, align 8
  %180 = load i32, i32* %15, align 4
  %181 = and i32 %180, 15
  %182 = shl i32 %181, 2
  %183 = and i32 %182, 63
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %179, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = ptrtoint i8* %186 to i8
  %188 = load i8*, i8** %17, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %17, align 8
  store i8 %187, i8* %188, align 1
  br label %193

190:                                              ; preds = %148
  %191 = load i8*, i8** %17, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %17, align 8
  store i8 61, i8* %191, align 1
  br label %193

193:                                              ; preds = %190, %178
  %194 = load i8*, i8** %17, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %17, align 8
  store i8 61, i8* %194, align 1
  br label %196

196:                                              ; preds = %193, %129
  %197 = load i8*, i8** %17, align 8
  %198 = load i8*, i8** %7, align 8
  %199 = ptrtoint i8* %197 to i64
  %200 = ptrtoint i8* %198 to i64
  %201 = sub i64 %199, %200
  %202 = load i64*, i64** %9, align 8
  store i64 %201, i64* %202, align 8
  %203 = load i8*, i8** %17, align 8
  store i8 0, i8* %203, align 1
  store i32 0, i32* %6, align 4
  br label %204

204:                                              ; preds = %196, %52, %37, %20
  %205 = load i32, i32* %6, align 4
  ret i32 %205
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
