; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_lzo.c_av_lzo1x_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_lzo.c_av_lzo1x_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32*, i32*, i32*, i32* }

@AV_LZO_OUTPUT_FULL = common dso_local global i32 0, align 4
@AV_LZO_INPUT_DEPLETED = common dso_local global i32 0, align 4
@AV_LZO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_lzo1x_decode(i8* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %19, %4
  store i32 0, i32* %13, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* @AV_LZO_OUTPUT_FULL, align 4
  %29 = load i32, i32* %13, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* @AV_LZO_INPUT_DEPLETED, align 4
  %37 = load i32, i32* %13, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %5, align 4
  br label %226

41:                                               ; preds = %19
  %42 = load i8*, i8** %8, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  store i32* %43, i32** %44, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  store i32* %50, i32** %51, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 5
  store i32* %53, i32** %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i32* %53, i32** %55, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = bitcast i8* %56 to i32*
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store i32* %61, i32** %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = call i32 @GETB(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %12)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp sgt i32 %65, 17
  br i1 %66, label %67, label %80

67:                                               ; preds = %41
  %68 = load i32, i32* %11, align 4
  %69 = sub nsw i32 %68, 17
  %70 = call i32 @copy(%struct.TYPE_6__* %12, i32 %69)
  %71 = call i32 @GETB(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %12)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %72, 16
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load i32, i32* @AV_LZO_ERROR, align 4
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %75
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %74, %67
  br label %80

80:                                               ; preds = %79, %41
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ugt i32* %82, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = load i32, i32* @AV_LZO_INPUT_DEPLETED, align 4
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %87
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %86, %80
  br label %92

92:                                               ; preds = %185, %168, %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  br i1 %96, label %97, label %195

97:                                               ; preds = %92
  %98 = load i32, i32* %11, align 4
  %99 = icmp sgt i32 %98, 15
  br i1 %99, label %100, label %156

100:                                              ; preds = %97
  %101 = load i32, i32* %11, align 4
  %102 = icmp sgt i32 %101, 63
  br i1 %102, label %103, label %114

103:                                              ; preds = %100
  %104 = load i32, i32* %11, align 4
  %105 = ashr i32 %104, 5
  %106 = sub nsw i32 %105, 1
  store i32 %106, i32* %14, align 4
  %107 = call i32 @GETB(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %12)
  %108 = shl i32 %107, 3
  %109 = load i32, i32* %11, align 4
  %110 = ashr i32 %109, 2
  %111 = and i32 %110, 7
  %112 = add nsw i32 %108, %111
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %15, align 4
  br label %155

114:                                              ; preds = %100
  %115 = load i32, i32* %11, align 4
  %116 = icmp sgt i32 %115, 31
  br i1 %116, label %117, label %127

117:                                              ; preds = %114
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @get_len(%struct.TYPE_6__* %12, i32 %118, i32 31)
  store i32 %119, i32* %14, align 4
  %120 = call i32 @GETB(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %12)
  store i32 %120, i32* %11, align 4
  %121 = call i32 @GETB(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %12)
  %122 = shl i32 %121, 6
  %123 = load i32, i32* %11, align 4
  %124 = ashr i32 %123, 2
  %125 = add nsw i32 %122, %124
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %15, align 4
  br label %154

127:                                              ; preds = %114
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @get_len(%struct.TYPE_6__* %12, i32 %128, i32 7)
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %11, align 4
  %131 = and i32 %130, 8
  %132 = shl i32 %131, 11
  %133 = add nsw i32 16384, %132
  store i32 %133, i32* %15, align 4
  %134 = call i32 @GETB(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %12)
  store i32 %134, i32* %11, align 4
  %135 = call i32 @GETB(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %12)
  %136 = shl i32 %135, 6
  %137 = load i32, i32* %11, align 4
  %138 = ashr i32 %137, 2
  %139 = add nsw i32 %136, %138
  %140 = load i32, i32* %15, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* %15, align 4
  %143 = icmp eq i32 %142, 16384
  br i1 %143, label %144, label %153

144:                                              ; preds = %127
  %145 = load i32, i32* %14, align 4
  %146 = icmp ne i32 %145, 1
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load i32, i32* @AV_LZO_ERROR, align 4
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %148
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %147, %144
  br label %195

153:                                              ; preds = %127
  br label %154

154:                                              ; preds = %153, %117
  br label %155

155:                                              ; preds = %154, %103
  br label %185

156:                                              ; preds = %97
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %177, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @get_len(%struct.TYPE_6__* %12, i32 %160, i32 15)
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %14, align 4
  %163 = add nsw i32 %162, 3
  %164 = call i32 @copy(%struct.TYPE_6__* %12, i32 %163)
  %165 = call i32 @GETB(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %12)
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %11, align 4
  %167 = icmp sgt i32 %166, 15
  br i1 %167, label %168, label %169

168:                                              ; preds = %159
  br label %92

169:                                              ; preds = %159
  store i32 1, i32* %14, align 4
  %170 = call i32 @GETB(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %12)
  %171 = shl i32 %170, 2
  %172 = add nsw i32 2048, %171
  %173 = load i32, i32* %11, align 4
  %174 = ashr i32 %173, 2
  %175 = add nsw i32 %172, %174
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %15, align 4
  br label %184

177:                                              ; preds = %156
  store i32 0, i32* %14, align 4
  %178 = call i32 @GETB(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %12)
  %179 = shl i32 %178, 2
  %180 = load i32, i32* %11, align 4
  %181 = ashr i32 %180, 2
  %182 = add nsw i32 %179, %181
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %15, align 4
  br label %184

184:                                              ; preds = %177, %169
  br label %185

185:                                              ; preds = %184, %155
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* %14, align 4
  %188 = add nsw i32 %187, 2
  %189 = call i32 @copy_backptr(%struct.TYPE_6__* %12, i32 %186, i32 %188)
  %190 = load i32, i32* %11, align 4
  %191 = and i32 %190, 3
  store i32 %191, i32* %14, align 4
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* %14, align 4
  %193 = call i32 @copy(%struct.TYPE_6__* %12, i32 %192)
  %194 = call i32 @GETB(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %12)
  store i32 %194, i32* %11, align 4
  br label %92

195:                                              ; preds = %152, %92
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %199 = load i32*, i32** %198, align 8
  %200 = ptrtoint i32* %197 to i64
  %201 = ptrtoint i32* %199 to i64
  %202 = sub i64 %200, %201
  %203 = sdiv exact i64 %202, 4
  %204 = trunc i64 %203 to i32
  %205 = load i32*, i32** %9, align 8
  store i32 %204, i32* %205, align 4
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %209 = load i32*, i32** %208, align 8
  %210 = icmp ugt i32* %207, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %195
  %212 = load i32*, i32** %9, align 8
  store i32 0, i32* %212, align 4
  br label %213

213:                                              ; preds = %211, %195
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = ptrtoint i32* %215 to i64
  %219 = ptrtoint i32* %217 to i64
  %220 = sub i64 %218, %219
  %221 = sdiv exact i64 %220, 4
  %222 = trunc i64 %221 to i32
  %223 = load i32*, i32** %7, align 8
  store i32 %222, i32* %223, align 4
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  store i32 %225, i32* %5, align 4
  br label %226

226:                                              ; preds = %213, %39
  %227 = load i32, i32* %5, align 4
  ret i32 %227
}

declare dso_local i32 @GETB(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #1

declare dso_local i32 @copy(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @get_len(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @copy_backptr(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
