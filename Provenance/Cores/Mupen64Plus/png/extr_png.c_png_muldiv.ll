; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_png.c_png_muldiv.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_png.c_png_muldiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @png_muldiv(i32* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
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
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %198

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %23
  %30 = load i32*, i32** %6, align 8
  store i32 0, i32* %30, align 4
  store i32 1, i32* %5, align 4
  br label %199

31:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  store i32 1, i32* %10, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %11, align 4
  br label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i64, i64* %8, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %10, align 4
  %47 = load i64, i64* %8, align 8
  %48 = sub nsw i64 0, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %12, align 4
  br label %53

50:                                               ; preds = %39
  %51 = load i64, i64* %8, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %50, %42
  %54 = load i64, i64* %9, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %10, align 4
  %61 = load i64, i64* %9, align 8
  %62 = sub nsw i64 0, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %13, align 4
  br label %67

64:                                               ; preds = %53
  %65 = load i64, i64* %9, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %64, %56
  %68 = load i32, i32* %11, align 4
  %69 = ashr i32 %68, 16
  %70 = load i32, i32* %12, align 4
  %71 = and i32 %70, 65535
  %72 = mul nsw i32 %69, %71
  %73 = load i32, i32* %11, align 4
  %74 = and i32 %73, 65535
  %75 = load i32, i32* %12, align 4
  %76 = ashr i32 %75, 16
  %77 = mul nsw i32 %74, %76
  %78 = add nsw i32 %72, %77
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %11, align 4
  %80 = ashr i32 %79, 16
  %81 = load i32, i32* %12, align 4
  %82 = ashr i32 %81, 16
  %83 = mul nsw i32 %80, %82
  %84 = load i32, i32* %14, align 4
  %85 = ashr i32 %84, 16
  %86 = add nsw i32 %83, %85
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %11, align 4
  %88 = and i32 %87, 65535
  %89 = load i32, i32* %12, align 4
  %90 = and i32 %89, 65535
  %91 = mul nsw i32 %88, %90
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %14, align 4
  %93 = and i32 %92, 65535
  %94 = shl i32 %93, 16
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %67
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %15, align 4
  br label %104

104:                                              ; preds = %101, %67
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %196

108:                                              ; preds = %104
  store i32 32, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %109

109:                                              ; preds = %165, %108
  %110 = load i32, i32* %17, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %17, align 4
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %166

113:                                              ; preds = %109
  %114 = load i32, i32* %17, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %17, align 4
  %119 = sub nsw i32 32, %118
  %120 = ashr i32 %117, %119
  store i32 %120, i32* %19, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %17, align 4
  %123 = shl i32 %121, %122
  store i32 %123, i32* %20, align 4
  br label %126

124:                                              ; preds = %113
  store i32 0, i32* %19, align 4
  %125 = load i32, i32* %13, align 4
  store i32 %125, i32* %20, align 4
  br label %126

126:                                              ; preds = %124, %116
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %19, align 4
  %129 = icmp sgt i32 %127, %128
  br i1 %129, label %130, label %148

130:                                              ; preds = %126
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %20, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %15, align 4
  br label %137

137:                                              ; preds = %134, %130
  %138 = load i32, i32* %19, align 4
  %139 = load i32, i32* %15, align 4
  %140 = sub nsw i32 %139, %138
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %20, align 4
  %142 = load i32, i32* %16, align 4
  %143 = sub nsw i32 %142, %141
  store i32 %143, i32* %16, align 4
  %144 = load i32, i32* %17, align 4
  %145 = shl i32 1, %144
  %146 = load i32, i32* %18, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %18, align 4
  br label %165

148:                                              ; preds = %126
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %19, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %164

152:                                              ; preds = %148
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %20, align 4
  %155 = icmp sge i32 %153, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %152
  store i32 0, i32* %15, align 4
  %157 = load i32, i32* %20, align 4
  %158 = load i32, i32* %16, align 4
  %159 = sub nsw i32 %158, %157
  store i32 %159, i32* %16, align 4
  %160 = load i32, i32* %17, align 4
  %161 = shl i32 1, %160
  %162 = load i32, i32* %18, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %18, align 4
  br label %164

164:                                              ; preds = %156, %152, %148
  br label %165

165:                                              ; preds = %164, %137
  br label %109

166:                                              ; preds = %109
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* %13, align 4
  %169 = ashr i32 %168, 1
  %170 = icmp sge i32 %167, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load i32, i32* %18, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %18, align 4
  br label %174

174:                                              ; preds = %171, %166
  %175 = load i32, i32* %10, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i32, i32* %18, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %18, align 4
  br label %180

180:                                              ; preds = %177, %174
  %181 = load i32, i32* %10, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i32, i32* %18, align 4
  %185 = icmp sle i32 %184, 0
  br i1 %185, label %192, label %186

186:                                              ; preds = %183, %180
  %187 = load i32, i32* %10, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %186
  %190 = load i32, i32* %18, align 4
  %191 = icmp sge i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %189, %183
  %193 = load i32, i32* %18, align 4
  %194 = load i32*, i32** %6, align 8
  store i32 %193, i32* %194, align 4
  store i32 1, i32* %5, align 4
  br label %199

195:                                              ; preds = %189, %186
  br label %196

196:                                              ; preds = %195, %104
  br label %197

197:                                              ; preds = %196
  br label %198

198:                                              ; preds = %197, %4
  store i32 0, i32* %5, align 4
  br label %199

199:                                              ; preds = %198, %192, %29
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
