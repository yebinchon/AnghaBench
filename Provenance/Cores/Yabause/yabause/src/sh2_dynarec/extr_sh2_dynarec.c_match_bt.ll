; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_match_bt.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_match_bt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@start = common dso_local global i32 0, align 4
@slen = common dso_local global i32 0, align 4
@regs = common dso_local global %struct.TYPE_2__* null, align 8
@HOST_CCREG = common dso_local global i64 0, align 8
@CCREG = common dso_local global i8 0, align 1
@HOST_REGS = common dso_local global i32 0, align 4
@EXCLUDE_REG = common dso_local global i32 0, align 4
@TEMPREG = common dso_local global i8 0, align 1
@unneeded_reg = common dso_local global i8* null, align 8
@is_ds = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @match_bt(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @start, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %184

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @start, align 4
  %17 = load i32, i32* @slen, align 4
  %18 = mul nsw i32 %17, 2
  %19 = add nsw i32 %16, %18
  %20 = sub nsw i32 %19, 2
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %22, label %184

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @start, align 4
  %25 = sub nsw i32 %23, %24
  %26 = ashr i32 %25, 1
  store i32 %26, i32* %8, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i64, i64* @HOST_CCREG, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8, i8* @CCREG, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %232

41:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %172, %41
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @HOST_REGS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %175

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @EXCLUDE_REG, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %171

50:                                               ; preds = %46
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %56, %67
  br i1 %68, label %69, label %124

69:                                               ; preds = %50
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %69
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = load i8, i8* @TEMPREG, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %232

98:                                               ; preds = %82, %69
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %9, align 4
  %101 = ashr i32 %99, %100
  %102 = and i32 %101, 1
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %98
  %105 = load i8*, i8** @unneeded_reg, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = load i8*, i8** %5, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = ashr i32 %110, %116
  %118 = and i32 %117, 1
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %232

121:                                              ; preds = %104
  br label %122

122:                                              ; preds = %121, %98
  br label %123

123:                                              ; preds = %122
  br label %170

124:                                              ; preds = %50
  %125 = load i8*, i8** %5, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp sge i32 %130, 0
  br i1 %131, label %132, label %169

132:                                              ; preds = %124
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = ashr i32 %138, %139
  %141 = and i32 %140, 1
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %168, label %143

143:                                              ; preds = %132
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %9, align 4
  %146 = ashr i32 %144, %145
  %147 = and i32 %146, 1
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %167

149:                                              ; preds = %143
  %150 = load i8*, i8** @unneeded_reg, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = load i8*, i8** %5, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = ashr i32 %155, %161
  %163 = and i32 %162, 1
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %149
  store i32 0, i32* %4, align 4
  br label %232

166:                                              ; preds = %149
  br label %167

167:                                              ; preds = %166, %143
  br label %168

168:                                              ; preds = %167, %132
  br label %169

169:                                              ; preds = %168, %124
  br label %170

170:                                              ; preds = %169, %123
  br label %171

171:                                              ; preds = %170, %46
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %9, align 4
  br label %42

175:                                              ; preds = %42
  %176 = load i64*, i64** @is_ds, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %175
  store i32 0, i32* %4, align 4
  br label %232

183:                                              ; preds = %175
  br label %231

184:                                              ; preds = %14, %3
  store i32 0, i32* %10, align 4
  br label %185

185:                                              ; preds = %227, %184
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* @HOST_REGS, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %230

189:                                              ; preds = %185
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* @EXCLUDE_REG, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %226

193:                                              ; preds = %189
  %194 = load i8*, i8** %5, align 8
  %195 = load i32, i32* %10, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp sge i32 %199, 0
  br i1 %200, label %201, label %225

201:                                              ; preds = %193
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = load i64, i64* @HOST_CCREG, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %216, label %206

206:                                              ; preds = %201
  %207 = load i8*, i8** %5, align 8
  %208 = load i32, i32* %10, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %207, i64 %209
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = load i8, i8* @CCREG, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp ne i32 %212, %214
  br i1 %215, label %216, label %224

216:                                              ; preds = %206, %201
  %217 = load i32, i32* %6, align 4
  %218 = load i32, i32* %10, align 4
  %219 = ashr i32 %217, %218
  %220 = and i32 %219, 1
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %216
  store i32 0, i32* %4, align 4
  br label %232

223:                                              ; preds = %216
  br label %224

224:                                              ; preds = %223, %206
  br label %225

225:                                              ; preds = %224, %193
  br label %226

226:                                              ; preds = %225, %189
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %10, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %10, align 4
  br label %185

230:                                              ; preds = %185
  br label %231

231:                                              ; preds = %230, %183
  store i32 1, i32* %4, align 4
  br label %232

232:                                              ; preds = %231, %222, %182, %165, %120, %97, %40
  %233 = load i32, i32* %4, align 4
  ret i32 %233
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
