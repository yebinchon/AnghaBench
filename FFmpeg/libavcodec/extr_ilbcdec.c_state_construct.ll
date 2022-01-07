; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ilbcdec.c_state_construct.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ilbcdec.c_state_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LPC_FILTERORDER = common dso_local global i32 0, align 4
@STATE_SHORT_LEN_30MS = common dso_local global i32 0, align 4
@frg_quant_mod = common dso_local global i64* null, align 8
@ilbc_state = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64*, i64*, i64*, i64)* @state_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @state_construct(i64 %0, i64* %1, i64* %2, i64* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  store i64 %0, i64* %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 %4, i64* %10, align 8
  %23 = load i32, i32* @LPC_FILTERORDER, align 4
  %24 = add nsw i32 1, %23
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %16, align 8
  %27 = alloca i64, i64 %25, align 16
  store i64 %25, i64* %17, align 8
  %28 = load i32, i32* @STATE_SHORT_LEN_30MS, align 4
  %29 = mul nsw i32 2, %28
  %30 = load i32, i32* @LPC_FILTERORDER, align 4
  %31 = add nsw i32 %29, %30
  %32 = zext i32 %31 to i64
  %33 = alloca i64, i64 %32, align 16
  store i64 %32, i64* %18, align 8
  %34 = load i32, i32* @STATE_SHORT_LEN_30MS, align 4
  %35 = mul nsw i32 2, %34
  %36 = load i32, i32* @LPC_FILTERORDER, align 4
  %37 = add nsw i32 %35, %36
  %38 = zext i32 %37 to i64
  %39 = alloca i64, i64 %38, align 16
  store i64 %38, i64* %19, align 8
  %40 = load i32, i32* @LPC_FILTERORDER, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %33, i64 %41
  store i64* %42, i64** %20, align 8
  %43 = load i32, i32* @LPC_FILTERORDER, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %39, i64 %44
  store i64* %45, i64** %21, align 8
  %46 = load i32, i32* @LPC_FILTERORDER, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %33, i64 %47
  store i64* %48, i64** %22, align 8
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %65, %5
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @LPC_FILTERORDER, align 4
  %52 = add nsw i32 %51, 1
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load i64*, i64** %8, align 8
  %56 = load i32, i32* @LPC_FILTERORDER, align 4
  %57 = load i32, i32* %11, align 4
  %58 = sub nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %55, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %27, i64 %63
  store i64 %61, i64* %64, align 8
  br label %65

65:                                               ; preds = %54
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %49

68:                                               ; preds = %49
  %69 = load i64*, i64** @frg_quant_mod, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %12, align 8
  %73 = load i64*, i64** %20, align 8
  store i64* %73, i64** %13, align 8
  %74 = load i64*, i64** %7, align 8
  %75 = load i64, i64* %10, align 8
  %76 = sub i64 %75, 1
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  store i64* %77, i64** %14, align 8
  %78 = load i64, i64* %6, align 8
  %79 = icmp ult i64 %78, 37
  br i1 %79, label %80, label %106

80:                                               ; preds = %68
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %102, %80
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %10, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %105

86:                                               ; preds = %81
  %87 = load i64, i64* %12, align 8
  %88 = load i32*, i32** @ilbc_state, align 8
  %89 = load i64*, i64** %14, align 8
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @SPL_MUL_16_16(i64 %87, i32 %92)
  %94 = add nsw i32 %93, 2097152
  %95 = ashr i32 %94, 22
  %96 = sext i32 %95 to i64
  %97 = load i64*, i64** %13, align 8
  store i64 %96, i64* %97, align 8
  %98 = load i64*, i64** %13, align 8
  %99 = getelementptr inbounds i64, i64* %98, i32 1
  store i64* %99, i64** %13, align 8
  %100 = load i64*, i64** %14, align 8
  %101 = getelementptr inbounds i64, i64* %100, i32 -1
  store i64* %101, i64** %14, align 8
  br label %102

102:                                              ; preds = %86
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  br label %81

105:                                              ; preds = %81
  br label %162

106:                                              ; preds = %68
  %107 = load i64, i64* %6, align 8
  %108 = icmp ult i64 %107, 59
  br i1 %108, label %109, label %135

109:                                              ; preds = %106
  store i32 0, i32* %11, align 4
  br label %110

110:                                              ; preds = %131, %109
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %10, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %134

115:                                              ; preds = %110
  %116 = load i64, i64* %12, align 8
  %117 = load i32*, i32** @ilbc_state, align 8
  %118 = load i64*, i64** %14, align 8
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @SPL_MUL_16_16(i64 %116, i32 %121)
  %123 = add nsw i32 %122, 262144
  %124 = ashr i32 %123, 19
  %125 = sext i32 %124 to i64
  %126 = load i64*, i64** %13, align 8
  store i64 %125, i64* %126, align 8
  %127 = load i64*, i64** %13, align 8
  %128 = getelementptr inbounds i64, i64* %127, i32 1
  store i64* %128, i64** %13, align 8
  %129 = load i64*, i64** %14, align 8
  %130 = getelementptr inbounds i64, i64* %129, i32 -1
  store i64* %130, i64** %14, align 8
  br label %131

131:                                              ; preds = %115
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %11, align 4
  br label %110

134:                                              ; preds = %110
  br label %161

135:                                              ; preds = %106
  store i32 0, i32* %11, align 4
  br label %136

136:                                              ; preds = %157, %135
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* %10, align 8
  %140 = icmp ult i64 %138, %139
  br i1 %140, label %141, label %160

141:                                              ; preds = %136
  %142 = load i64, i64* %12, align 8
  %143 = load i32*, i32** @ilbc_state, align 8
  %144 = load i64*, i64** %14, align 8
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @SPL_MUL_16_16(i64 %142, i32 %147)
  %149 = add nsw i32 %148, 65536
  %150 = ashr i32 %149, 17
  %151 = sext i32 %150 to i64
  %152 = load i64*, i64** %13, align 8
  store i64 %151, i64* %152, align 8
  %153 = load i64*, i64** %13, align 8
  %154 = getelementptr inbounds i64, i64* %153, i32 1
  store i64* %154, i64** %13, align 8
  %155 = load i64*, i64** %14, align 8
  %156 = getelementptr inbounds i64, i64* %155, i32 -1
  store i64* %156, i64** %14, align 8
  br label %157

157:                                              ; preds = %141
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %11, align 4
  br label %136

160:                                              ; preds = %136
  br label %161

161:                                              ; preds = %160, %134
  br label %162

162:                                              ; preds = %161, %105
  %163 = load i64*, i64** %20, align 8
  %164 = load i64, i64* %10, align 8
  %165 = getelementptr inbounds i64, i64* %163, i64 %164
  %166 = load i64, i64* %10, align 8
  %167 = mul i64 %166, 2
  %168 = call i32 @memset(i64* %165, i32 0, i64 %167)
  %169 = load i32, i32* @LPC_FILTERORDER, align 4
  %170 = mul nsw i32 %169, 2
  %171 = sext i32 %170 to i64
  %172 = call i32 @memset(i64* %33, i32 0, i64 %171)
  %173 = load i64*, i64** %20, align 8
  %174 = load i64*, i64** %21, align 8
  %175 = load i32, i32* @LPC_FILTERORDER, align 4
  %176 = add nsw i32 %175, 1
  %177 = load i64, i64* %10, align 8
  %178 = load i32, i32* @LPC_FILTERORDER, align 4
  %179 = sext i32 %178 to i64
  %180 = add i64 %177, %179
  %181 = call i32 @filter_mafq12(i64* %173, i64* %174, i64* %27, i32 %176, i64 %180)
  %182 = load i64*, i64** %21, align 8
  %183 = load i64, i64* %10, align 8
  %184 = load i32, i32* @LPC_FILTERORDER, align 4
  %185 = sext i32 %184 to i64
  %186 = add i64 %183, %185
  %187 = getelementptr inbounds i64, i64* %182, i64 %186
  %188 = load i64, i64* %10, align 8
  %189 = load i32, i32* @LPC_FILTERORDER, align 4
  %190 = sext i32 %189 to i64
  %191 = sub i64 %188, %190
  %192 = mul i64 %191, 2
  %193 = call i32 @memset(i64* %187, i32 0, i64 %192)
  %194 = load i64*, i64** %21, align 8
  %195 = load i64*, i64** %22, align 8
  %196 = load i64*, i64** %8, align 8
  %197 = load i32, i32* @LPC_FILTERORDER, align 4
  %198 = add nsw i32 %197, 1
  %199 = load i64, i64* %10, align 8
  %200 = mul i64 2, %199
  %201 = trunc i64 %200 to i32
  %202 = call i32 @filter_arfq12(i64* %194, i64* %195, i64* %196, i32 %198, i32 %201)
  %203 = load i64*, i64** %22, align 8
  %204 = load i64, i64* %10, align 8
  %205 = sub i64 %204, 1
  %206 = getelementptr inbounds i64, i64* %203, i64 %205
  store i64* %206, i64** %13, align 8
  %207 = load i64*, i64** %22, align 8
  %208 = load i64, i64* %10, align 8
  %209 = mul i64 2, %208
  %210 = sub i64 %209, 1
  %211 = getelementptr inbounds i64, i64* %207, i64 %210
  store i64* %211, i64** %14, align 8
  %212 = load i64*, i64** %9, align 8
  store i64* %212, i64** %15, align 8
  store i32 0, i32* %11, align 4
  br label %213

213:                                              ; preds = %231, %162
  %214 = load i32, i32* %11, align 4
  %215 = sext i32 %214 to i64
  %216 = load i64, i64* %10, align 8
  %217 = icmp ult i64 %215, %216
  br i1 %217, label %218, label %234

218:                                              ; preds = %213
  %219 = load i64*, i64** %13, align 8
  %220 = load i64, i64* %219, align 8
  %221 = load i64*, i64** %14, align 8
  %222 = load i64, i64* %221, align 8
  %223 = add i64 %220, %222
  %224 = load i64*, i64** %15, align 8
  store i64 %223, i64* %224, align 8
  %225 = load i64*, i64** %13, align 8
  %226 = getelementptr inbounds i64, i64* %225, i32 -1
  store i64* %226, i64** %13, align 8
  %227 = load i64*, i64** %14, align 8
  %228 = getelementptr inbounds i64, i64* %227, i32 -1
  store i64* %228, i64** %14, align 8
  %229 = load i64*, i64** %15, align 8
  %230 = getelementptr inbounds i64, i64* %229, i32 1
  store i64* %230, i64** %15, align 8
  br label %231

231:                                              ; preds = %218
  %232 = load i32, i32* %11, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %11, align 4
  br label %213

234:                                              ; preds = %213
  %235 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %235)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SPL_MUL_16_16(i64, i32) #2

declare dso_local i32 @memset(i64*, i32, i64) #2

declare dso_local i32 @filter_mafq12(i64*, i64*, i64*, i32, i64) #2

declare dso_local i32 @filter_arfq12(i64*, i64*, i64*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
