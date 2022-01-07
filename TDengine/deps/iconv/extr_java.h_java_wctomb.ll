; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_java.h_java_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_java.h_java_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_TOOSMALL = common dso_local global i32 0, align 4
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @java_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @java_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 128
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = trunc i32 %17 to i8
  %19 = load i8*, i8** %7, align 8
  store i8 %18, i8* %19, align 1
  store i32 1, i32* %5, align 4
  br label %251

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 65536
  br i1 %22, label %23, label %96

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = icmp sge i32 %24, 6
  br i1 %25, label %26, label %94

26:                                               ; preds = %23
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 92, i8* %28, align 1
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  store i8 117, i8* %30, align 1
  %31 = load i32, i32* %8, align 4
  %32 = ashr i32 %31, 12
  %33 = and i32 %32, 15
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ult i32 %34, 10
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* %10, align 4
  %38 = add i32 48, %37
  br label %42

39:                                               ; preds = %26
  %40 = load i32, i32* %10, align 4
  %41 = add i32 87, %40
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ]
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  store i8 %44, i8* %46, align 1
  %47 = load i32, i32* %8, align 4
  %48 = ashr i32 %47, 8
  %49 = and i32 %48, 15
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ult i32 %50, 10
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load i32, i32* %10, align 4
  %54 = add i32 48, %53
  br label %58

55:                                               ; preds = %42
  %56 = load i32, i32* %10, align 4
  %57 = add i32 87, %56
  br label %58

58:                                               ; preds = %55, %52
  %59 = phi i32 [ %54, %52 ], [ %57, %55 ]
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 3
  store i8 %60, i8* %62, align 1
  %63 = load i32, i32* %8, align 4
  %64 = ashr i32 %63, 4
  %65 = and i32 %64, 15
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ult i32 %66, 10
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load i32, i32* %10, align 4
  %70 = add i32 48, %69
  br label %74

71:                                               ; preds = %58
  %72 = load i32, i32* %10, align 4
  %73 = add i32 87, %72
  br label %74

74:                                               ; preds = %71, %68
  %75 = phi i32 [ %70, %68 ], [ %73, %71 ]
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 4
  store i8 %76, i8* %78, align 1
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, 15
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ult i32 %81, 10
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load i32, i32* %10, align 4
  %85 = add i32 48, %84
  br label %89

86:                                               ; preds = %74
  %87 = load i32, i32* %10, align 4
  %88 = add i32 87, %87
  br label %89

89:                                               ; preds = %86, %83
  %90 = phi i32 [ %85, %83 ], [ %88, %86 ]
  %91 = trunc i32 %90 to i8
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 5
  store i8 %91, i8* %93, align 1
  store i32 6, i32* %5, align 4
  br label %251

94:                                               ; preds = %23
  %95 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %95, i32* %5, align 4
  br label %251

96:                                               ; preds = %20
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 1114112
  br i1 %98, label %99, label %247

99:                                               ; preds = %96
  %100 = load i32, i32* %9, align 4
  %101 = icmp sge i32 %100, 12
  br i1 %101, label %102, label %245

102:                                              ; preds = %99
  %103 = load i32, i32* %8, align 4
  %104 = sub nsw i32 %103, 65536
  %105 = ashr i32 %104, 10
  %106 = add nsw i32 55296, %105
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %8, align 4
  %108 = sub nsw i32 %107, 65536
  %109 = and i32 %108, 1023
  %110 = add nsw i32 56320, %109
  store i32 %110, i32* %12, align 4
  %111 = load i8*, i8** %7, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  store i8 92, i8* %112, align 1
  %113 = load i8*, i8** %7, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  store i8 117, i8* %114, align 1
  %115 = load i32, i32* %11, align 4
  %116 = ashr i32 %115, 12
  %117 = and i32 %116, 15
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp ult i32 %118, 10
  br i1 %119, label %120, label %123

120:                                              ; preds = %102
  %121 = load i32, i32* %13, align 4
  %122 = add i32 48, %121
  br label %126

123:                                              ; preds = %102
  %124 = load i32, i32* %13, align 4
  %125 = add i32 87, %124
  br label %126

126:                                              ; preds = %123, %120
  %127 = phi i32 [ %122, %120 ], [ %125, %123 ]
  %128 = trunc i32 %127 to i8
  %129 = load i8*, i8** %7, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 2
  store i8 %128, i8* %130, align 1
  %131 = load i32, i32* %11, align 4
  %132 = ashr i32 %131, 8
  %133 = and i32 %132, 15
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp ult i32 %134, 10
  br i1 %135, label %136, label %139

136:                                              ; preds = %126
  %137 = load i32, i32* %13, align 4
  %138 = add i32 48, %137
  br label %142

139:                                              ; preds = %126
  %140 = load i32, i32* %13, align 4
  %141 = add i32 87, %140
  br label %142

142:                                              ; preds = %139, %136
  %143 = phi i32 [ %138, %136 ], [ %141, %139 ]
  %144 = trunc i32 %143 to i8
  %145 = load i8*, i8** %7, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 3
  store i8 %144, i8* %146, align 1
  %147 = load i32, i32* %11, align 4
  %148 = ashr i32 %147, 4
  %149 = and i32 %148, 15
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp ult i32 %150, 10
  br i1 %151, label %152, label %155

152:                                              ; preds = %142
  %153 = load i32, i32* %13, align 4
  %154 = add i32 48, %153
  br label %158

155:                                              ; preds = %142
  %156 = load i32, i32* %13, align 4
  %157 = add i32 87, %156
  br label %158

158:                                              ; preds = %155, %152
  %159 = phi i32 [ %154, %152 ], [ %157, %155 ]
  %160 = trunc i32 %159 to i8
  %161 = load i8*, i8** %7, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 4
  store i8 %160, i8* %162, align 1
  %163 = load i32, i32* %11, align 4
  %164 = and i32 %163, 15
  store i32 %164, i32* %13, align 4
  %165 = load i32, i32* %13, align 4
  %166 = icmp ult i32 %165, 10
  br i1 %166, label %167, label %170

167:                                              ; preds = %158
  %168 = load i32, i32* %13, align 4
  %169 = add i32 48, %168
  br label %173

170:                                              ; preds = %158
  %171 = load i32, i32* %13, align 4
  %172 = add i32 87, %171
  br label %173

173:                                              ; preds = %170, %167
  %174 = phi i32 [ %169, %167 ], [ %172, %170 ]
  %175 = trunc i32 %174 to i8
  %176 = load i8*, i8** %7, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 5
  store i8 %175, i8* %177, align 1
  %178 = load i8*, i8** %7, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 6
  store i8 92, i8* %179, align 1
  %180 = load i8*, i8** %7, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 7
  store i8 117, i8* %181, align 1
  %182 = load i32, i32* %12, align 4
  %183 = ashr i32 %182, 12
  %184 = and i32 %183, 15
  store i32 %184, i32* %13, align 4
  %185 = load i32, i32* %13, align 4
  %186 = icmp ult i32 %185, 10
  br i1 %186, label %187, label %190

187:                                              ; preds = %173
  %188 = load i32, i32* %13, align 4
  %189 = add i32 48, %188
  br label %193

190:                                              ; preds = %173
  %191 = load i32, i32* %13, align 4
  %192 = add i32 87, %191
  br label %193

193:                                              ; preds = %190, %187
  %194 = phi i32 [ %189, %187 ], [ %192, %190 ]
  %195 = trunc i32 %194 to i8
  %196 = load i8*, i8** %7, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 8
  store i8 %195, i8* %197, align 1
  %198 = load i32, i32* %12, align 4
  %199 = ashr i32 %198, 8
  %200 = and i32 %199, 15
  store i32 %200, i32* %13, align 4
  %201 = load i32, i32* %13, align 4
  %202 = icmp ult i32 %201, 10
  br i1 %202, label %203, label %206

203:                                              ; preds = %193
  %204 = load i32, i32* %13, align 4
  %205 = add i32 48, %204
  br label %209

206:                                              ; preds = %193
  %207 = load i32, i32* %13, align 4
  %208 = add i32 87, %207
  br label %209

209:                                              ; preds = %206, %203
  %210 = phi i32 [ %205, %203 ], [ %208, %206 ]
  %211 = trunc i32 %210 to i8
  %212 = load i8*, i8** %7, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 9
  store i8 %211, i8* %213, align 1
  %214 = load i32, i32* %12, align 4
  %215 = ashr i32 %214, 4
  %216 = and i32 %215, 15
  store i32 %216, i32* %13, align 4
  %217 = load i32, i32* %13, align 4
  %218 = icmp ult i32 %217, 10
  br i1 %218, label %219, label %222

219:                                              ; preds = %209
  %220 = load i32, i32* %13, align 4
  %221 = add i32 48, %220
  br label %225

222:                                              ; preds = %209
  %223 = load i32, i32* %13, align 4
  %224 = add i32 87, %223
  br label %225

225:                                              ; preds = %222, %219
  %226 = phi i32 [ %221, %219 ], [ %224, %222 ]
  %227 = trunc i32 %226 to i8
  %228 = load i8*, i8** %7, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 10
  store i8 %227, i8* %229, align 1
  %230 = load i32, i32* %12, align 4
  %231 = and i32 %230, 15
  store i32 %231, i32* %13, align 4
  %232 = load i32, i32* %13, align 4
  %233 = icmp ult i32 %232, 10
  br i1 %233, label %234, label %237

234:                                              ; preds = %225
  %235 = load i32, i32* %13, align 4
  %236 = add i32 48, %235
  br label %240

237:                                              ; preds = %225
  %238 = load i32, i32* %13, align 4
  %239 = add i32 87, %238
  br label %240

240:                                              ; preds = %237, %234
  %241 = phi i32 [ %236, %234 ], [ %239, %237 ]
  %242 = trunc i32 %241 to i8
  %243 = load i8*, i8** %7, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 11
  store i8 %242, i8* %244, align 1
  store i32 12, i32* %5, align 4
  br label %251

245:                                              ; preds = %99
  %246 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %246, i32* %5, align 4
  br label %251

247:                                              ; preds = %96
  br label %248

248:                                              ; preds = %247
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* @RET_ILUNI, align 4
  store i32 %250, i32* %5, align 4
  br label %251

251:                                              ; preds = %249, %245, %240, %94, %89, %16
  %252 = load i32, i32* %5, align 4
  ret i32 %252
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
