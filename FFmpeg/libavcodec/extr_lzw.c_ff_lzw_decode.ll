; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lzw.c_ff_lzw_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_lzw.c_ff_lzw_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LZWState = type { i32, i32, i32, i32, i64, i64, i32, i32, i32, i32*, i32*, i64, i32*, i8*, i32* }

@mask = common dso_local global i8** null, align 8
@LZW_MAXBITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_lzw_decode(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.LZWState*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = bitcast i32* %15 to %struct.LZWState*
  store %struct.LZWState* %16, %struct.LZWState** %14, align 8
  %17 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %18 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %231

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %25 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %24, i32 0, i32 12
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %13, align 8
  %27 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %28 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %31 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %214, %22
  br label %34

34:                                               ; preds = %50, %33
  %35 = load i32*, i32** %13, align 8
  %36 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %37 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %36, i32 0, i32 14
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ugt i32* %35, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load i32*, i32** %13, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 -1
  store i32* %42, i32** %13, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %6, align 8
  store i32 %43, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %218

50:                                               ; preds = %40
  br label %34

51:                                               ; preds = %34
  %52 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %53 = call i32 @lzw_get_code(%struct.LZWState* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %56 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %215

60:                                               ; preds = %51
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %63 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %93

66:                                               ; preds = %60
  %67 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %68 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, 1
  %71 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %72 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %71, i32 0, i32 4
  store i64 %70, i64* %72, align 8
  %73 = load i8**, i8*** @mask, align 8
  %74 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %75 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i8*, i8** %73, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %80 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %79, i32 0, i32 13
  store i8* %78, i8** %80, align 8
  %81 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %82 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %85 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 8
  %86 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %87 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = shl i32 1, %89
  %91 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %92 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %91, i32 0, i32 8
  store i32 %90, i32* %92, align 8
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  br label %213

93:                                               ; preds = %60
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %97 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %95, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %93
  %101 = load i32, i32* %12, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load i32, i32* %12, align 4
  %105 = load i32*, i32** %13, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %13, align 8
  store i32 %104, i32* %105, align 4
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %10, align 4
  br label %116

108:                                              ; preds = %100, %93
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %111 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = icmp sge i32 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %215

115:                                              ; preds = %108
  br label %116

116:                                              ; preds = %115, %103
  br label %117

117:                                              ; preds = %123, %116
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %120 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 4
  %122 = icmp sge i32 %118, %121
  br i1 %122, label %123, label %140

123:                                              ; preds = %117
  %124 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %125 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %124, i32 0, i32 9
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %13, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %13, align 8
  store i32 %130, i32* %131, align 4
  %133 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %134 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %133, i32 0, i32 10
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %10, align 4
  br label %117

140:                                              ; preds = %117
  %141 = load i32, i32* %10, align 4
  %142 = load i32*, i32** %13, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %13, align 8
  store i32 %141, i32* %142, align 4
  %144 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %145 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %148 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %147, i32 0, i32 8
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %151, label %174

151:                                              ; preds = %140
  %152 = load i32, i32* %11, align 4
  %153 = icmp sge i32 %152, 0
  br i1 %153, label %154, label %174

154:                                              ; preds = %151
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %157 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %156, i32 0, i32 9
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %160 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %158, i64 %162
  store i32 %155, i32* %163, align 4
  %164 = load i32, i32* %11, align 4
  %165 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %166 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %165, i32 0, i32 10
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %169 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 8
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i32, i32* %167, i64 %172
  store i32 %164, i32* %173, align 4
  br label %174

174:                                              ; preds = %154, %151, %140
  %175 = load i32, i32* %10, align 4
  store i32 %175, i32* %12, align 4
  %176 = load i32, i32* %9, align 4
  store i32 %176, i32* %11, align 4
  %177 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %178 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %182 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %181, i32 0, i32 8
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %186 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %185, i32 0, i32 11
  %187 = load i64, i64* %186, align 8
  %188 = sub i64 %184, %187
  %189 = icmp uge i64 %180, %188
  br i1 %189, label %190, label %212

190:                                              ; preds = %174
  %191 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %192 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* @LZW_MAXBITS, align 4
  %195 = sext i32 %194 to i64
  %196 = icmp ult i64 %193, %195
  br i1 %196, label %197, label %211

197:                                              ; preds = %190
  %198 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %199 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %198, i32 0, i32 8
  %200 = load i32, i32* %199, align 8
  %201 = shl i32 %200, 1
  store i32 %201, i32* %199, align 8
  %202 = load i8**, i8*** @mask, align 8
  %203 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %204 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %203, i32 0, i32 4
  %205 = load i64, i64* %204, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %204, align 8
  %207 = getelementptr inbounds i8*, i8** %202, i64 %206
  %208 = load i8*, i8** %207, align 8
  %209 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %210 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %209, i32 0, i32 13
  store i8* %208, i8** %210, align 8
  br label %211

211:                                              ; preds = %197, %190
  br label %212

212:                                              ; preds = %211, %174
  br label %213

213:                                              ; preds = %212, %66
  br label %214

214:                                              ; preds = %213
  br label %33

215:                                              ; preds = %114, %59
  %216 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %217 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %216, i32 0, i32 0
  store i32 -1, i32* %217, align 8
  br label %218

218:                                              ; preds = %215, %49
  %219 = load i32*, i32** %13, align 8
  %220 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %221 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %220, i32 0, i32 12
  store i32* %219, i32** %221, align 8
  %222 = load i32, i32* %11, align 4
  %223 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %224 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* %12, align 4
  %226 = load %struct.LZWState*, %struct.LZWState** %14, align 8
  %227 = getelementptr inbounds %struct.LZWState, %struct.LZWState* %226, i32 0, i32 2
  store i32 %225, i32* %227, align 8
  %228 = load i32, i32* %7, align 4
  %229 = load i32, i32* %8, align 4
  %230 = sub nsw i32 %228, %229
  store i32 %230, i32* %4, align 4
  br label %231

231:                                              ; preds = %218, %21
  %232 = load i32, i32* %4, align 4
  ret i32 %232
}

declare dso_local i32 @lzw_get_code(%struct.LZWState*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
