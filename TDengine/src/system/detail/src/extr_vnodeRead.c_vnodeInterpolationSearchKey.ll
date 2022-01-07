; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeRead.c_vnodeInterpolationSearchKey.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeRead.c_vnodeInterpolationSearchKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeInterpolationSearchKey(i8* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 -1, i32* %12, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to i64*
  store i64* %17, i64** %15, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %113

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %22, %111
  %24 = load i64, i64* %8, align 8
  %25 = load i64*, i64** %15, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %24, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %211

33:                                               ; preds = %23
  %34 = load i64, i64* %8, align 8
  %35 = load i64*, i64** %15, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %34, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %5, align 4
  br label %211

43:                                               ; preds = %33
  %44 = load i64, i64* %8, align 8
  %45 = load i64*, i64** %15, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %44, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* %10, align 4
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %211

54:                                               ; preds = %43
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 %55, %56
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %14, align 4
  %59 = load i64*, i64** %15, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %15, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %63, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %13, align 4
  %71 = load i64, i64* %8, align 8
  %72 = load i64*, i64** %15, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %71, %76
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = sdiv i64 %77, %79
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = mul nsw i64 %80, %82
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %12, align 4
  %88 = load i64, i64* %8, align 8
  %89 = load i64*, i64** %15, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %88, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %54
  %96 = load i32, i32* %12, align 4
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %111

98:                                               ; preds = %54
  %99 = load i64, i64* %8, align 8
  %100 = load i64*, i64** %15, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %99, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %110

109:                                              ; preds = %98
  br label %112

110:                                              ; preds = %106
  br label %111

111:                                              ; preds = %110, %95
  br label %23

112:                                              ; preds = %109
  br label %209

113:                                              ; preds = %4
  br label %114

114:                                              ; preds = %113, %207
  %115 = load i64, i64* %8, align 8
  %116 = load i64*, i64** %15, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = icmp sle i64 %115, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %114
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %5, align 4
  br label %211

124:                                              ; preds = %114
  %125 = load i64, i64* %8, align 8
  %126 = load i64*, i64** %15, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %125, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %124
  %133 = load i32, i32* %11, align 4
  store i32 %133, i32* %5, align 4
  br label %211

134:                                              ; preds = %124
  %135 = load i64, i64* %8, align 8
  %136 = load i64*, i64** %15, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = icmp sgt i64 %135, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %134
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp sge i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  store i32 -1, i32* %5, align 4
  br label %211

149:                                              ; preds = %142
  br label %150

150:                                              ; preds = %149, %134
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %10, align 4
  %153 = sub nsw i32 %151, %152
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %14, align 4
  %155 = load i64*, i64** %15, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %155, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = load i64*, i64** %15, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = sub nsw i64 %159, %164
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %13, align 4
  %167 = load i64, i64* %8, align 8
  %168 = load i64*, i64** %15, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = sub nsw i64 %167, %172
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = sdiv i64 %173, %175
  %177 = load i32, i32* %14, align 4
  %178 = sext i32 %177 to i64
  %179 = mul nsw i64 %176, %178
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %179, %181
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %12, align 4
  %184 = load i64, i64* %8, align 8
  %185 = load i64*, i64** %15, align 8
  %186 = load i32, i32* %12, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = icmp slt i64 %184, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %150
  %192 = load i32, i32* %12, align 4
  %193 = sub nsw i32 %192, 1
  store i32 %193, i32* %11, align 4
  br label %207

194:                                              ; preds = %150
  %195 = load i64, i64* %8, align 8
  %196 = load i64*, i64** %15, align 8
  %197 = load i32, i32* %12, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %196, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = icmp sgt i64 %195, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %194
  %203 = load i32, i32* %12, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %10, align 4
  br label %206

205:                                              ; preds = %194
  br label %208

206:                                              ; preds = %202
  br label %207

207:                                              ; preds = %206, %191
  br label %114

208:                                              ; preds = %205
  br label %209

209:                                              ; preds = %208, %112
  %210 = load i32, i32* %12, align 4
  store i32 %210, i32* %5, align 4
  br label %211

211:                                              ; preds = %209, %148, %132, %122, %51, %41, %31
  %212 = load i32, i32* %5, align 4
  ret i32 %212
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
