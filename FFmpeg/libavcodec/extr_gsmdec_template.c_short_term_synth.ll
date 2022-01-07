; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_gsmdec_template.c_short_term_synth.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_gsmdec_template.c_short_term_synth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32**, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32*)* @short_term_synth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @short_term_synth(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32**, i32*** %12, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32*, i32** %13, i64 %16
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %9, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32**, i32*** %20, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = xor i64 %24, 1
  %26 = getelementptr inbounds i32*, i32** %21, i64 %25
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %10, align 8
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %56, %3
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %31, label %59

31:                                               ; preds = %28
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 2
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 1
  %44 = add nsw i32 %37, %43
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 2
  %51 = add nsw i32 %44, %50
  %52 = call i32 @get_rrp(i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %54
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %31
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %28

59:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %78, %59
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 13
  br i1 %62, label %63, label %81

63:                                               ; preds = %60
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @filter_value(i32 %68, i32* %69, i32 %72)
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  br label %78

78:                                               ; preds = %63
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %60

81:                                               ; preds = %60
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %103, %81
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 8
  br i1 %84, label %85, label %106

85:                                               ; preds = %82
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = ashr i32 %90, 1
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 1
  %98 = add nsw i32 %91, %97
  %99 = call i32 @get_rrp(i32 %98)
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %101
  store i32 %99, i32* %102, align 4
  br label %103

103:                                              ; preds = %85
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %82

106:                                              ; preds = %82
  store i32 13, i32* %7, align 4
  br label %107

107:                                              ; preds = %125, %106
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %108, 27
  br i1 %109, label %110, label %128

110:                                              ; preds = %107
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @filter_value(i32 %115, i32* %116, i32 %119)
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %120, i32* %124, align 4
  br label %125

125:                                              ; preds = %110
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %107

128:                                              ; preds = %107
  store i32 0, i32* %7, align 4
  br label %129

129:                                              ; preds = %157, %128
  %130 = load i32, i32* %7, align 4
  %131 = icmp slt i32 %130, 8
  br i1 %131, label %132, label %160

132:                                              ; preds = %129
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = ashr i32 %137, 2
  %139 = load i32*, i32** %9, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = ashr i32 %143, 1
  %145 = add nsw i32 %138, %144
  %146 = load i32*, i32** %9, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = ashr i32 %150, 2
  %152 = add nsw i32 %145, %151
  %153 = call i32 @get_rrp(i32 %152)
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %155
  store i32 %153, i32* %156, align 4
  br label %157

157:                                              ; preds = %132
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %7, align 4
  br label %129

160:                                              ; preds = %129
  store i32 27, i32* %7, align 4
  br label %161

161:                                              ; preds = %179, %160
  %162 = load i32, i32* %7, align 4
  %163 = icmp slt i32 %162, 40
  br i1 %163, label %164, label %182

164:                                              ; preds = %161
  %165 = load i32*, i32** %6, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @filter_value(i32 %169, i32* %170, i32 %173)
  %175 = load i32*, i32** %5, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  store i32 %174, i32* %178, align 4
  br label %179

179:                                              ; preds = %164
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %7, align 4
  br label %161

182:                                              ; preds = %161
  store i32 0, i32* %7, align 4
  br label %183

183:                                              ; preds = %196, %182
  %184 = load i32, i32* %7, align 4
  %185 = icmp slt i32 %184, 8
  br i1 %185, label %186, label %199

186:                                              ; preds = %183
  %187 = load i32*, i32** %9, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @get_rrp(i32 %191)
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %194
  store i32 %192, i32* %195, align 4
  br label %196

196:                                              ; preds = %186
  %197 = load i32, i32* %7, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %7, align 4
  br label %183

199:                                              ; preds = %183
  store i32 40, i32* %7, align 4
  br label %200

200:                                              ; preds = %218, %199
  %201 = load i32, i32* %7, align 4
  %202 = icmp slt i32 %201, 160
  br i1 %202, label %203, label %221

203:                                              ; preds = %200
  %204 = load i32*, i32** %6, align 8
  %205 = load i32, i32* %7, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @filter_value(i32 %208, i32* %209, i32 %212)
  %214 = load i32*, i32** %5, align 8
  %215 = load i32, i32* %7, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  store i32 %213, i32* %217, align 4
  br label %218

218:                                              ; preds = %203
  %219 = load i32, i32* %7, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %7, align 4
  br label %200

221:                                              ; preds = %200
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = xor i64 %224, 1
  store i64 %225, i64* %223, align 8
  ret void
}

declare dso_local i32 @get_rrp(i32) #1

declare dso_local i32 @filter_value(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
