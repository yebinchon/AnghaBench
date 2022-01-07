; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss3.c_decode_dct.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss3.c_decode_dct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32*, i32, i32, i32 }

@ff_zigzag_direct = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32*, i32, i32)* @decode_dct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_dct(i32* %0, %struct.TYPE_3__* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
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
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 1, i32* %15, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %23, %26
  %28 = add nsw i32 %22, %27
  store i32 %28, i32* %18, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @memset(i32* %29, i32 0, i32 256)
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 5
  %34 = call i32 @decode_coeff(i32* %31, i32* %33)
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %105

37:                                               ; preds = %5
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %90

40:                                               ; preds = %37
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %18, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %19, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %18, align 4
  %53 = sub nsw i32 %52, 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %53, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %51, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %20, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %18, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %64, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %63, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %21, align 4
  %72 = load i32, i32* %21, align 4
  %73 = load i32, i32* %20, align 4
  %74 = sub nsw i32 %72, %73
  %75 = call i64 @FFABS(i32 %74)
  %76 = load i32, i32* %19, align 4
  %77 = load i32, i32* %20, align 4
  %78 = sub nsw i32 %76, %77
  %79 = call i64 @FFABS(i32 %78)
  %80 = icmp sle i64 %75, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %40
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* %17, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %17, align 4
  br label %89

85:                                               ; preds = %40
  %86 = load i32, i32* %21, align 4
  %87 = load i32, i32* %17, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %17, align 4
  br label %89

89:                                               ; preds = %85, %81
  br label %104

90:                                               ; preds = %37
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %18, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %94, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %93, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %17, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %17, align 4
  br label %104

104:                                              ; preds = %90, %89
  br label %120

105:                                              ; preds = %5
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %105
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %17, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %17, align 4
  br label %119

119:                                              ; preds = %108, %105
  br label %120

120:                                              ; preds = %119, %104
  %121 = load i32, i32* %17, align 4
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %18, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %121, i32* %127, align 4
  %128 = load i32, i32* %17, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %128, %133
  %135 = load i32*, i32** %9, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %191, %151, %120
  %138 = load i32, i32* %15, align 4
  %139 = icmp slt i32 %138, 64
  br i1 %139, label %140, label %212

140:                                              ; preds = %137
  %141 = load i32*, i32** %7, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 4
  %144 = call i32 @rac_get_model256_sym(i32* %141, i32* %143)
  store i32 %144, i32* %13, align 4
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %140
  store i32 0, i32* %6, align 4
  br label %217

148:                                              ; preds = %140
  %149 = load i32, i32* %13, align 4
  %150 = icmp eq i32 %149, 240
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32, i32* %15, align 4
  %153 = add nsw i32 %152, 16
  store i32 %153, i32* %15, align 4
  br label %137

154:                                              ; preds = %148
  %155 = load i32, i32* %13, align 4
  %156 = ashr i32 %155, 4
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %13, align 4
  %158 = and i32 %157, 15
  store i32 %158, i32* %13, align 4
  %159 = load i32, i32* %13, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %154
  store i32 -1, i32* %6, align 4
  br label %217

162:                                              ; preds = %154
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* %15, align 4
  %165 = add nsw i32 %164, %163
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %15, align 4
  %167 = icmp sge i32 %166, 64
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  store i32 -1, i32* %6, align 4
  br label %217

169:                                              ; preds = %162
  %170 = load i32*, i32** %7, align 8
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 3
  %173 = call i32 @rac_get_model2_sym(i32* %170, i32* %172)
  store i32 %173, i32* %14, align 4
  %174 = load i32, i32* %13, align 4
  %175 = icmp sgt i32 %174, 1
  br i1 %175, label %176, label %185

176:                                              ; preds = %169
  %177 = load i32, i32* %13, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %13, align 4
  %179 = load i32, i32* %13, align 4
  %180 = shl i32 1, %179
  %181 = load i32*, i32** %7, align 8
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @rac_get_bits(i32* %181, i32 %182)
  %184 = add nsw i32 %180, %183
  store i32 %184, i32* %13, align 4
  br label %185

185:                                              ; preds = %176, %169
  %186 = load i32, i32* %14, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %185
  %189 = load i32, i32* %13, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %13, align 4
  br label %191

191:                                              ; preds = %188, %185
  %192 = load i32*, i32** @ff_zigzag_direct, align 8
  %193 = load i32, i32* %15, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %16, align 4
  %197 = load i32, i32* %13, align 4
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %16, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = mul nsw i32 %197, %204
  %206 = load i32*, i32** %9, align 8
  %207 = load i32, i32* %16, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  store i32 %205, i32* %209, align 4
  %210 = load i32, i32* %15, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %15, align 4
  br label %137

212:                                              ; preds = %137
  %213 = load i32, i32* %15, align 4
  %214 = icmp eq i32 %213, 64
  %215 = zext i1 %214 to i64
  %216 = select i1 %214, i32 0, i32 -1
  store i32 %216, i32* %6, align 4
  br label %217

217:                                              ; preds = %212, %168, %161, %147
  %218 = load i32, i32* %6, align 4
  ret i32 %218
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @decode_coeff(i32*, i32*) #1

declare dso_local i64 @FFABS(i32) #1

declare dso_local i32 @rac_get_model256_sym(i32*, i32*) #1

declare dso_local i32 @rac_get_model2_sym(i32*, i32*) #1

declare dso_local i32 @rac_get_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
