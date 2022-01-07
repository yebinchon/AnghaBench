; ModuleID = '/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_os.c_mz_path_resolve.c'
source_filename = "/home/carl/AnghaBench/ZipArchive/SSZipArchive/minizip/extr_mz_os.c_mz_path_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MZ_PARAM_ERROR = common dso_local global i32 0, align 4
@MZ_INTERNAL_ERROR = common dso_local global i32 0, align 4
@MZ_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mz_path_resolve(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @MZ_PARAM_ERROR, align 4
  store i32 %17, i32* %4, align 4
  br label %251

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %231, %226, %125, %85, %61, %18
  %20 = load i8*, i8** %8, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 1
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi i1 [ false, %19 ], [ %26, %24 ]
  br i1 %28, label %29, label %241

29:                                               ; preds = %27
  %30 = load i8*, i8** %8, align 8
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 92
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load i8*, i8** %9, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 47
  br i1 %39, label %40, label %43

40:                                               ; preds = %35, %29
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  store i8* %42, i8** %9, align 8
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ne i8* %48, %49
  br i1 %50, label %51, label %231

51:                                               ; preds = %47, %43
  %52 = load i8*, i8** %9, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 92
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load i8*, i8** %9, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 47
  br i1 %60, label %61, label %64

61:                                               ; preds = %56, %51
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8* %63, i8** %8, align 8
  br label %19

64:                                               ; preds = %56
  %65 = load i8*, i8** %9, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %230

69:                                               ; preds = %64
  %70 = load i8*, i8** %9, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 46
  br i1 %73, label %74, label %230

74:                                               ; preds = %69
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  store i8* %76, i8** %9, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %74
  %82 = load i8*, i8** %8, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = icmp ne i8* %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %81
  %86 = load i8*, i8** %8, align 8
  %87 = load i8, i8* %86, align 1
  %88 = load i8*, i8** %10, align 8
  store i8 %87, i8* %88, align 1
  %89 = load i8*, i8** %10, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  store i8* %90, i8** %10, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sub nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  %93 = load i8*, i8** %9, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 %97
  store i8* %99, i8** %8, align 8
  br label %19

100:                                              ; preds = %81, %74
  %101 = load i8*, i8** %9, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %100
  %106 = load i8*, i8** %9, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 92
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = load i8*, i8** %9, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 47
  br i1 %114, label %115, label %134

115:                                              ; preds = %110, %105, %100
  %116 = load i8*, i8** %9, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %115
  %122 = load i8*, i8** %5, align 8
  %123 = load i8*, i8** %8, align 8
  %124 = icmp ne i8* %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %121, %115
  %126 = load i8*, i8** %9, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = ptrtoint i8* %126 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  %131 = load i8*, i8** %8, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 %130
  store i8* %132, i8** %8, align 8
  br label %19

133:                                              ; preds = %121
  br label %134

134:                                              ; preds = %133, %110
  %135 = load i8*, i8** %9, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %134
  %140 = load i8*, i8** %9, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 46
  br i1 %143, label %144, label %229

144:                                              ; preds = %139, %134
  %145 = load i8*, i8** %9, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  store i8* %146, i8** %9, align 8
  %147 = load i8*, i8** %9, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %161, label %151

151:                                              ; preds = %144
  %152 = load i8*, i8** %9, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 92
  br i1 %155, label %161, label %156

156:                                              ; preds = %151
  %157 = load i8*, i8** %9, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 47
  br i1 %160, label %161, label %228

161:                                              ; preds = %156, %151, %144
  %162 = load i8*, i8** %9, align 8
  %163 = load i8*, i8** %8, align 8
  %164 = ptrtoint i8* %162 to i64
  %165 = ptrtoint i8* %163 to i64
  %166 = sub i64 %164, %165
  %167 = load i8*, i8** %8, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 %166
  store i8* %168, i8** %8, align 8
  %169 = load i8*, i8** %10, align 8
  %170 = load i8*, i8** %6, align 8
  %171 = icmp ne i8* %169, %170
  br i1 %171, label %172, label %196

172:                                              ; preds = %161
  %173 = load i8*, i8** %10, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 -1
  store i8* %174, i8** %10, align 8
  br label %175

175:                                              ; preds = %191, %172
  %176 = load i8*, i8** %10, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 92
  br i1 %179, label %185, label %180

180:                                              ; preds = %175
  %181 = load i8*, i8** %10, align 8
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 47
  br i1 %184, label %185, label %186

185:                                              ; preds = %180, %175
  br label %195

186:                                              ; preds = %180
  %187 = load i8*, i8** %10, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 -1
  store i8* %188, i8** %10, align 8
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %7, align 4
  br label %191

191:                                              ; preds = %186
  %192 = load i8*, i8** %10, align 8
  %193 = load i8*, i8** %6, align 8
  %194 = icmp ugt i8* %192, %193
  br i1 %194, label %175, label %195

195:                                              ; preds = %191, %185
  br label %196

196:                                              ; preds = %195, %161
  %197 = load i8*, i8** %10, align 8
  %198 = load i8*, i8** %6, align 8
  %199 = icmp eq i8* %197, %198
  br i1 %199, label %200, label %208

200:                                              ; preds = %196
  %201 = load i8*, i8** %8, align 8
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load i8*, i8** %8, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 1
  store i8* %207, i8** %8, align 8
  br label %208

208:                                              ; preds = %205, %200, %196
  %209 = load i8*, i8** %10, align 8
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp eq i32 %211, 92
  br i1 %212, label %218, label %213

213:                                              ; preds = %208
  %214 = load i8*, i8** %10, align 8
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp eq i32 %216, 47
  br i1 %217, label %218, label %226

218:                                              ; preds = %213, %208
  %219 = load i8*, i8** %8, align 8
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  %224 = load i8*, i8** %10, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 1
  store i8* %225, i8** %10, align 8
  br label %226

226:                                              ; preds = %223, %218, %213
  %227 = load i8*, i8** %10, align 8
  store i8 0, i8* %227, align 1
  br label %19

228:                                              ; preds = %156
  br label %229

229:                                              ; preds = %228, %139
  br label %230

230:                                              ; preds = %229, %69, %64
  br label %231

231:                                              ; preds = %230, %47
  %232 = load i8*, i8** %8, align 8
  %233 = load i8, i8* %232, align 1
  %234 = load i8*, i8** %10, align 8
  store i8 %233, i8* %234, align 1
  %235 = load i8*, i8** %8, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 1
  store i8* %236, i8** %8, align 8
  %237 = load i8*, i8** %10, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 1
  store i8* %238, i8** %10, align 8
  %239 = load i32, i32* %7, align 4
  %240 = sub nsw i32 %239, 1
  store i32 %240, i32* %7, align 4
  br label %19

241:                                              ; preds = %27
  %242 = load i8*, i8** %10, align 8
  store i8 0, i8* %242, align 1
  %243 = load i8*, i8** %5, align 8
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %241
  %248 = load i32, i32* @MZ_INTERNAL_ERROR, align 4
  store i32 %248, i32* %4, align 4
  br label %251

249:                                              ; preds = %241
  %250 = load i32, i32* @MZ_OK, align 4
  store i32 %250, i32* %4, align 4
  br label %251

251:                                              ; preds = %249, %247, %16
  %252 = load i32, i32* %4, align 4
  ret i32 %252
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
