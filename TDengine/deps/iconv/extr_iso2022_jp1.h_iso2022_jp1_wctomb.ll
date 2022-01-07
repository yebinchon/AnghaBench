; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_jp1.h_iso2022_jp1_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_jp1.h_iso2022_jp1_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@RET_ILUNI = common dso_local global i32 0, align 4
@STATE_ASCII = common dso_local global i64 0, align 8
@RET_TOOSMALL = common dso_local global i32 0, align 4
@ESC = common dso_local global i8 0, align 1
@STATE_JISX0201ROMAN = common dso_local global i64 0, align 8
@STATE_JISX0208 = common dso_local global i64 0, align 8
@STATE_JISX0212 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32, i32)* @iso2022_jp1_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso2022_jp1_wctomb(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [2 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @ascii_wctomb(%struct.TYPE_7__* %20, i8* %21, i32 %22, i32 1)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @RET_ILUNI, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %73

27:                                               ; preds = %4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (...) @abort() #3
  unreachable

32:                                               ; preds = %27
  %33 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp slt i32 %35, 128
  br i1 %36, label %37, label %72

37:                                               ; preds = %32
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @STATE_ASCII, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 4
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %47, i32* %5, align 4
  br label %257

48:                                               ; preds = %37
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @STATE_ASCII, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load i8, i8* @ESC, align 1
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 %53, i8* %55, align 1
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  store i8 40, i8* %57, align 1
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  store i8 66, i8* %59, align 1
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 3
  store i8* %61, i8** %7, align 8
  %62 = load i64, i64* @STATE_ASCII, align 8
  store i64 %62, i64* %10, align 8
  br label %63

63:                                               ; preds = %52, %48
  %64 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  store i8 %65, i8* %67, align 1
  %68 = load i64, i64* %10, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %5, align 4
  br label %257

72:                                               ; preds = %32
  br label %73

73:                                               ; preds = %72, %4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @jisx0201_wctomb(%struct.TYPE_7__* %74, i8* %75, i32 %76, i32 1)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @RET_ILUNI, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %127

81:                                               ; preds = %73
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 1
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 (...) @abort() #3
  unreachable

86:                                               ; preds = %81
  %87 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp slt i32 %89, 128
  br i1 %90, label %91, label %126

91:                                               ; preds = %86
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* @STATE_JISX0201ROMAN, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 1, i32 4
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %101, i32* %5, align 4
  br label %257

102:                                              ; preds = %91
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* @STATE_JISX0201ROMAN, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %102
  %107 = load i8, i8* @ESC, align 1
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  store i8 %107, i8* %109, align 1
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  store i8 40, i8* %111, align 1
  %112 = load i8*, i8** %7, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 2
  store i8 74, i8* %113, align 1
  %114 = load i8*, i8** %7, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 3
  store i8* %115, i8** %7, align 8
  %116 = load i64, i64* @STATE_JISX0201ROMAN, align 8
  store i64 %116, i64* %10, align 8
  br label %117

117:                                              ; preds = %106, %102
  %118 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %119 = load i8, i8* %118, align 1
  %120 = load i8*, i8** %7, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  store i8 %119, i8* %121, align 1
  %122 = load i64, i64* %10, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %5, align 4
  br label %257

126:                                              ; preds = %86
  br label %127

127:                                              ; preds = %126, %73
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %129 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @jisx0208_wctomb(%struct.TYPE_7__* %128, i8* %129, i32 %130, i32 2)
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @RET_ILUNI, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %190

135:                                              ; preds = %127
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 2
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = call i32 (...) @abort() #3
  unreachable

140:                                              ; preds = %135
  %141 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = icmp slt i32 %143, 128
  br i1 %144, label %145, label %189

145:                                              ; preds = %140
  %146 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 1
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = icmp slt i32 %148, 128
  br i1 %149, label %150, label %189

150:                                              ; preds = %145
  %151 = load i64, i64* %10, align 8
  %152 = load i64, i64* @STATE_JISX0208, align 8
  %153 = icmp eq i64 %151, %152
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i32 2, i32 5
  store i32 %155, i32* %15, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %15, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %150
  %160 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %160, i32* %5, align 4
  br label %257

161:                                              ; preds = %150
  %162 = load i64, i64* %10, align 8
  %163 = load i64, i64* @STATE_JISX0208, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %176

165:                                              ; preds = %161
  %166 = load i8, i8* @ESC, align 1
  %167 = load i8*, i8** %7, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 0
  store i8 %166, i8* %168, align 1
  %169 = load i8*, i8** %7, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 1
  store i8 36, i8* %170, align 1
  %171 = load i8*, i8** %7, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 2
  store i8 66, i8* %172, align 1
  %173 = load i8*, i8** %7, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 3
  store i8* %174, i8** %7, align 8
  %175 = load i64, i64* @STATE_JISX0208, align 8
  store i64 %175, i64* %10, align 8
  br label %176

176:                                              ; preds = %165, %161
  %177 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %178 = load i8, i8* %177, align 1
  %179 = load i8*, i8** %7, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 0
  store i8 %178, i8* %180, align 1
  %181 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 1
  %182 = load i8, i8* %181, align 1
  %183 = load i8*, i8** %7, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 1
  store i8 %182, i8* %184, align 1
  %185 = load i64, i64* %10, align 8
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  store i64 %185, i64* %187, align 8
  %188 = load i32, i32* %15, align 4
  store i32 %188, i32* %5, align 4
  br label %257

189:                                              ; preds = %145, %140
  br label %190

190:                                              ; preds = %189, %127
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %192 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @jisx0212_wctomb(%struct.TYPE_7__* %191, i8* %192, i32 %193, i32 2)
  store i32 %194, i32* %12, align 4
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* @RET_ILUNI, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %255

198:                                              ; preds = %190
  %199 = load i32, i32* %12, align 4
  %200 = icmp ne i32 %199, 2
  br i1 %200, label %201, label %203

201:                                              ; preds = %198
  %202 = call i32 (...) @abort() #3
  unreachable

203:                                              ; preds = %198
  %204 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = icmp slt i32 %206, 128
  br i1 %207, label %208, label %254

208:                                              ; preds = %203
  %209 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 1
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = icmp slt i32 %211, 128
  br i1 %212, label %213, label %254

213:                                              ; preds = %208
  %214 = load i64, i64* %10, align 8
  %215 = load i64, i64* @STATE_JISX0212, align 8
  %216 = icmp eq i64 %214, %215
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i32 2, i32 6
  store i32 %218, i32* %16, align 4
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* %16, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %213
  %223 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %223, i32* %5, align 4
  br label %257

224:                                              ; preds = %213
  %225 = load i64, i64* %10, align 8
  %226 = load i64, i64* @STATE_JISX0212, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %228, label %241

228:                                              ; preds = %224
  %229 = load i8, i8* @ESC, align 1
  %230 = load i8*, i8** %7, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 0
  store i8 %229, i8* %231, align 1
  %232 = load i8*, i8** %7, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 1
  store i8 36, i8* %233, align 1
  %234 = load i8*, i8** %7, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 2
  store i8 40, i8* %235, align 1
  %236 = load i8*, i8** %7, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 3
  store i8 68, i8* %237, align 1
  %238 = load i8*, i8** %7, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 4
  store i8* %239, i8** %7, align 8
  %240 = load i64, i64* @STATE_JISX0212, align 8
  store i64 %240, i64* %10, align 8
  br label %241

241:                                              ; preds = %228, %224
  %242 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %243 = load i8, i8* %242, align 1
  %244 = load i8*, i8** %7, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 0
  store i8 %243, i8* %245, align 1
  %246 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 1
  %247 = load i8, i8* %246, align 1
  %248 = load i8*, i8** %7, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 1
  store i8 %247, i8* %249, align 1
  %250 = load i64, i64* %10, align 8
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 0
  store i64 %250, i64* %252, align 8
  %253 = load i32, i32* %16, align 4
  store i32 %253, i32* %5, align 4
  br label %257

254:                                              ; preds = %208, %203
  br label %255

255:                                              ; preds = %254, %190
  %256 = load i32, i32* @RET_ILUNI, align 4
  store i32 %256, i32* %5, align 4
  br label %257

257:                                              ; preds = %255, %241, %222, %176, %159, %117, %100, %63, %46
  %258 = load i32, i32* %5, align 4
  ret i32 %258
}

declare dso_local i32 @ascii_wctomb(%struct.TYPE_7__*, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @jisx0201_wctomb(%struct.TYPE_7__*, i8*, i32, i32) #1

declare dso_local i32 @jisx0208_wctomb(%struct.TYPE_7__*, i8*, i32, i32) #1

declare dso_local i32 @jisx0212_wctomb(%struct.TYPE_7__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
