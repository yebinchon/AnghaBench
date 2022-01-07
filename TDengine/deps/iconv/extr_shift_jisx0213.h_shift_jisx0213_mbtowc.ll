; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_shift_jisx0213.h_shift_jisx0213_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_shift_jisx0213.h_shift_jisx0213_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@jisx0213_to_ucs_combining = common dso_local global i32** null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i8*, i32)* @shift_jisx0213_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shift_jisx0213_mbtowc(%struct.TYPE_3__* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  store i32 0, i32* %5, align 4
  br label %214

27:                                               ; preds = %4
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %11, align 1
  %30 = load i8, i8* %11, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp slt i32 %31, 128
  br i1 %32, label %33, label %51

33:                                               ; preds = %27
  %34 = load i8, i8* %11, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 92
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32*, i32** %7, align 8
  store i32 165, i32* %38, align 4
  br label %50

39:                                               ; preds = %33
  %40 = load i8, i8* %11, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 126
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32*, i32** %7, align 8
  store i32 8254, i32* %44, align 4
  br label %49

45:                                               ; preds = %39
  %46 = load i8, i8* %11, align 1
  %47 = zext i8 %46 to i32
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %43
  br label %50

50:                                               ; preds = %49, %37
  store i32 1, i32* %5, align 4
  br label %214

51:                                               ; preds = %27
  %52 = load i8, i8* %11, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp sge i32 %53, 161
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i8, i8* %11, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp sle i32 %57, 223
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i8, i8* %11, align 1
  %61 = zext i8 %60 to i32
  %62 = add nsw i32 %61, 65216
  %63 = load i32*, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  store i32 1, i32* %5, align 4
  br label %214

64:                                               ; preds = %55, %51
  %65 = load i8, i8* %11, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp sge i32 %66, 129
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i8, i8* %11, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp sle i32 %70, 159
  br i1 %71, label %80, label %72

72:                                               ; preds = %68, %64
  %73 = load i8, i8* %11, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp sge i32 %74, 224
  br i1 %75, label %76, label %212

76:                                               ; preds = %72
  %77 = load i8, i8* %11, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp sle i32 %78, 252
  br i1 %79, label %80, label %212

80:                                               ; preds = %76, %68
  %81 = load i32, i32* %9, align 4
  %82 = icmp sge i32 %81, 2
  br i1 %82, label %83, label %209

83:                                               ; preds = %80
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  store i8 %86, i8* %12, align 1
  %87 = load i8, i8* %12, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp sge i32 %88, 64
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load i8, i8* %12, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp sle i32 %92, 126
  br i1 %93, label %102, label %94

94:                                               ; preds = %90, %83
  %95 = load i8, i8* %12, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp sge i32 %96, 128
  br i1 %97, label %98, label %208

98:                                               ; preds = %94
  %99 = load i8, i8* %12, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp sle i32 %100, 252
  br i1 %101, label %102, label %208

102:                                              ; preds = %98, %90
  %103 = load i8, i8* %11, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp slt i32 %104, 224
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i8, i8* %11, align 1
  %108 = zext i8 %107 to i32
  %109 = sub nsw i32 %108, 129
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %11, align 1
  br label %116

111:                                              ; preds = %102
  %112 = load i8, i8* %11, align 1
  %113 = zext i8 %112 to i32
  %114 = sub nsw i32 %113, 193
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %11, align 1
  br label %116

116:                                              ; preds = %111, %106
  %117 = load i8, i8* %12, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp slt i32 %118, 128
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load i8, i8* %12, align 1
  %122 = zext i8 %121 to i32
  %123 = sub nsw i32 %122, 64
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %12, align 1
  br label %130

125:                                              ; preds = %116
  %126 = load i8, i8* %12, align 1
  %127 = zext i8 %126 to i32
  %128 = sub nsw i32 %127, 65
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %12, align 1
  br label %130

130:                                              ; preds = %125, %120
  %131 = load i8, i8* %11, align 1
  %132 = zext i8 %131 to i32
  %133 = mul nsw i32 2, %132
  store i32 %133, i32* %13, align 4
  %134 = load i8, i8* %12, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp sge i32 %135, 94
  br i1 %136, label %137, label %144

137:                                              ; preds = %130
  %138 = load i8, i8* %12, align 1
  %139 = zext i8 %138 to i32
  %140 = sub nsw i32 %139, 94
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %12, align 1
  %142 = load i32, i32* %13, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %13, align 4
  br label %144

144:                                              ; preds = %137, %130
  %145 = load i8, i8* %12, align 1
  %146 = zext i8 %145 to i32
  %147 = add nsw i32 %146, 33
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %12, align 1
  %149 = load i32, i32* %13, align 4
  %150 = icmp uge i32 %149, 94
  br i1 %150, label %151, label %171

151:                                              ; preds = %144
  %152 = load i32, i32* %13, align 4
  %153 = icmp uge i32 %152, 103
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i32, i32* %13, align 4
  %156 = add i32 %155, 230
  store i32 %156, i32* %13, align 4
  br label %170

157:                                              ; preds = %151
  %158 = load i32, i32* %13, align 4
  %159 = icmp uge i32 %158, 99
  br i1 %159, label %163, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %13, align 4
  %162 = icmp eq i32 %161, 95
  br i1 %162, label %163, label %166

163:                                              ; preds = %160, %157
  %164 = load i32, i32* %13, align 4
  %165 = add i32 %164, 168
  store i32 %165, i32* %13, align 4
  br label %169

166:                                              ; preds = %160
  %167 = load i32, i32* %13, align 4
  %168 = add i32 %167, 162
  store i32 %168, i32* %13, align 4
  br label %169

169:                                              ; preds = %166, %163
  br label %170

170:                                              ; preds = %169, %154
  br label %171

171:                                              ; preds = %170, %144
  %172 = load i32, i32* %13, align 4
  %173 = add i32 289, %172
  %174 = load i8, i8* %12, align 1
  %175 = call i32 @jisx0213_to_ucs4(i32 %173, i8 zeroext %174)
  store i32 %175, i32* %14, align 4
  %176 = load i32, i32* %14, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %207

178:                                              ; preds = %171
  %179 = load i32, i32* %14, align 4
  %180 = icmp slt i32 %179, 128
  br i1 %180, label %181, label %203

181:                                              ; preds = %178
  %182 = load i32**, i32*** @jisx0213_to_ucs_combining, align 8
  %183 = load i32, i32* %14, align 4
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32*, i32** %182, i64 %185
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %15, align 4
  %190 = load i32**, i32*** @jisx0213_to_ucs_combining, align 8
  %191 = load i32, i32* %14, align 4
  %192 = sub nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32*, i32** %190, i64 %193
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 1
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %16, align 4
  %198 = load i32, i32* %15, align 4
  %199 = load i32*, i32** %7, align 8
  store i32 %198, i32* %199, align 4
  %200 = load i32, i32* %16, align 4
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 4
  br label %206

203:                                              ; preds = %178
  %204 = load i32, i32* %14, align 4
  %205 = load i32*, i32** %7, align 8
  store i32 %204, i32* %205, align 4
  br label %206

206:                                              ; preds = %203, %181
  store i32 2, i32* %5, align 4
  br label %214

207:                                              ; preds = %171
  br label %208

208:                                              ; preds = %207, %98, %94
  br label %211

209:                                              ; preds = %80
  %210 = call i32 @RET_TOOFEW(i32 0)
  store i32 %210, i32* %5, align 4
  br label %214

211:                                              ; preds = %208
  br label %212

212:                                              ; preds = %211, %76, %72
  %213 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %213, i32* %5, align 4
  br label %214

214:                                              ; preds = %212, %209, %206, %59, %50, %22
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local i32 @jisx0213_to_ucs4(i32, i8 zeroext) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
