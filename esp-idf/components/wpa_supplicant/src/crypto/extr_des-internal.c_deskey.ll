; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_des-internal.c_deskey.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_des-internal.c_deskey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pc1 = common dso_local global i64* null, align 8
@bytebit = common dso_local global i32* null, align 8
@totrot = common dso_local global i64* null, align 8
@pc2 = common dso_local global i64* null, align 8
@bigbyte = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @deskey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deskey(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [32 x i32], align 16
  %13 = alloca [56 x i32], align 16
  %14 = alloca [56 x i32], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %50, %3
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 56
  br i1 %17, label %18, label %53

18:                                               ; preds = %15
  %19 = load i64*, i64** @pc1, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, 7
  store i32 %26, i32* %10, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %9, align 4
  %29 = ashr i32 %28, 3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** @bytebit, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %32, %37
  %39 = load i32*, i32** @bytebit, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %38, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [56 x i32], [56 x i32]* %13, i64 0, i64 %48
  store i32 %46, i32* %49, align 4
  br label %50

50:                                               ; preds = %18
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %15

53:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %201, %53
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 16
  br i1 %56, label %57, label %204

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 15, %61
  %63 = shl i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %67

64:                                               ; preds = %57
  %65 = load i32, i32* %7, align 4
  %66 = shl i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %71
  store i32 0, i32* %72, align 4
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %74
  store i32 0, i32* %75, align 4
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %108, %67
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 28
  br i1 %78, label %79, label %111

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = load i64*, i64** @totrot, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = add nsw i32 %80, %86
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp slt i32 %88, 28
  br i1 %89, label %90, label %98

90:                                               ; preds = %79
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [56 x i32], [56 x i32]* %13, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [56 x i32], [56 x i32]* %14, i64 0, i64 %96
  store i32 %94, i32* %97, align 4
  br label %107

98:                                               ; preds = %79
  %99 = load i32, i32* %9, align 4
  %100 = sub nsw i32 %99, 28
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [56 x i32], [56 x i32]* %13, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [56 x i32], [56 x i32]* %14, i64 0, i64 %105
  store i32 %103, i32* %106, align 4
  br label %107

107:                                              ; preds = %98, %90
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %76

111:                                              ; preds = %76
  br label %112

112:                                              ; preds = %144, %111
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %113, 56
  br i1 %114, label %115, label %147

115:                                              ; preds = %112
  %116 = load i32, i32* %8, align 4
  %117 = load i64*, i64** @totrot, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = add nsw i32 %116, %122
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp slt i32 %124, 56
  br i1 %125, label %126, label %134

126:                                              ; preds = %115
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [56 x i32], [56 x i32]* %13, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [56 x i32], [56 x i32]* %14, i64 0, i64 %132
  store i32 %130, i32* %133, align 4
  br label %143

134:                                              ; preds = %115
  %135 = load i32, i32* %9, align 4
  %136 = sub nsw i32 %135, 28
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [56 x i32], [56 x i32]* %13, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [56 x i32], [56 x i32]* %14, i64 0, i64 %141
  store i32 %139, i32* %142, align 4
  br label %143

143:                                              ; preds = %134, %126
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %112

147:                                              ; preds = %112
  store i32 0, i32* %8, align 4
  br label %148

148:                                              ; preds = %197, %147
  %149 = load i32, i32* %8, align 4
  %150 = icmp slt i32 %149, 24
  br i1 %150, label %151, label %200

151:                                              ; preds = %148
  %152 = load i64*, i64** @pc2, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [56 x i32], [56 x i32]* %14, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %173

162:                                              ; preds = %151
  %163 = load i32*, i32** @bigbyte, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %167
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %162, %151
  %174 = load i64*, i64** @pc2, align 8
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 24
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %174, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = trunc i64 %179 to i32
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [56 x i32], [56 x i32]* %14, i64 0, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %173
  %186 = load i32*, i32** @bigbyte, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %190
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %185, %173
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %8, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %8, align 4
  br label %148

200:                                              ; preds = %148
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %7, align 4
  br label %54

204:                                              ; preds = %54
  %205 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 0
  %206 = load i32*, i32** %6, align 8
  %207 = call i32 @cookey(i32* %205, i32* %206)
  ret void
}

declare dso_local i32 @cookey(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
