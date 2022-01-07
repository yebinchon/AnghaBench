; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_gb18030.h_gb18030_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_gb18030.h_gb18030_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILUNI = common dso_local global i32 0, align 4
@gb18030_pua2charset = common dso_local global i32* null, align 8
@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @gb18030_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb18030_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @ascii_wctomb(i32 %18, i8* %19, i32 %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @RET_ILUNI, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %237

28:                                               ; preds = %4
  %29 = load i32, i32* %6, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @gbk_wctomb(i32 %29, i8* %30, i32 %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @RET_ILUNI, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %237

39:                                               ; preds = %28
  %40 = load i32, i32* %6, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @gb18030ext_wctomb(i32 %40, i8* %41, i32 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @RET_ILUNI, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %5, align 4
  br label %237

50:                                               ; preds = %39
  %51 = load i32, i32* %8, align 4
  %52 = icmp sge i32 %51, 57344
  br i1 %52, label %53, label %181

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = icmp sle i32 %54, 59492
  br i1 %55, label %56, label %181

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = icmp sge i32 %57, 2
  br i1 %58, label %59, label %178

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 59238
  br i1 %61, label %62, label %109

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 58566
  br i1 %64, label %65, label %89

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %66, 57344
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = urem i32 %68, 94
  %70 = add i32 %69, 161
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  store i8 %71, i8* %73, align 1
  %74 = load i32, i32* %11, align 4
  %75 = udiv i32 %74, 94
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ult i32 %76, 6
  br i1 %77, label %78, label %81

78:                                               ; preds = %65
  %79 = load i32, i32* %11, align 4
  %80 = add i32 %79, 170
  br label %84

81:                                               ; preds = %65
  %82 = load i32, i32* %11, align 4
  %83 = add i32 %82, 242
  br label %84

84:                                               ; preds = %81, %78
  %85 = phi i32 [ %80, %78 ], [ %83, %81 ]
  %86 = trunc i32 %85 to i8
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  store i8 %86, i8* %88, align 1
  store i32 2, i32* %5, align 4
  br label %237

89:                                               ; preds = %62
  %90 = load i32, i32* %8, align 4
  %91 = sub nsw i32 %90, 58566
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = udiv i32 %92, 96
  %94 = add i32 %93, 161
  %95 = trunc i32 %94 to i8
  %96 = load i8*, i8** %7, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  store i8 %95, i8* %97, align 1
  %98 = load i32, i32* %12, align 4
  %99 = urem i32 %98, 96
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp uge i32 %101, 63
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 65, i32 64
  %105 = add i32 %100, %104
  %106 = trunc i32 %105 to i8
  %107 = load i8*, i8** %7, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  store i8 %106, i8* %108, align 1
  store i32 2, i32* %5, align 4
  br label %237

109:                                              ; preds = %59
  store i32 0, i32* %13, align 4
  store i32 32, i32* %14, align 4
  br label %110

110:                                              ; preds = %175, %109
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %14, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %114, label %176

114:                                              ; preds = %110
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %14, align 4
  %117 = add i32 %115, %116
  %118 = udiv i32 %117, 2
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32*, i32** @gb18030_pua2charset, align 8
  %121 = load i32, i32* %15, align 4
  %122 = mul i32 %121, 3
  %123 = add i32 %122, 0
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %119, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %114
  %129 = load i32, i32* %15, align 4
  store i32 %129, i32* %14, align 4
  br label %175

130:                                              ; preds = %114
  %131 = load i32, i32* %8, align 4
  %132 = load i32*, i32** @gb18030_pua2charset, align 8
  %133 = load i32, i32* %15, align 4
  %134 = mul i32 %133, 3
  %135 = add i32 %134, 1
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %132, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = icmp sgt i32 %131, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %130
  %141 = load i32, i32* %15, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %13, align 4
  br label %174

143:                                              ; preds = %130
  %144 = load i32*, i32** @gb18030_pua2charset, align 8
  %145 = load i32, i32* %15, align 4
  %146 = mul i32 %145, 3
  %147 = add i32 %146, 2
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %144, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load i32*, i32** @gb18030_pua2charset, align 8
  %153 = load i32, i32* %15, align 4
  %154 = mul i32 %153, 3
  %155 = add i32 %154, 0
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %152, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %151, %158
  %160 = add nsw i32 %150, %159
  %161 = trunc i32 %160 to i16
  store i16 %161, i16* %16, align 2
  %162 = load i16, i16* %16, align 2
  %163 = zext i16 %162 to i32
  %164 = ashr i32 %163, 8
  %165 = trunc i32 %164 to i8
  %166 = load i8*, i8** %7, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 0
  store i8 %165, i8* %167, align 1
  %168 = load i16, i16* %16, align 2
  %169 = zext i16 %168 to i32
  %170 = and i32 %169, 255
  %171 = trunc i32 %170 to i8
  %172 = load i8*, i8** %7, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  store i8 %171, i8* %173, align 1
  store i32 2, i32* %5, align 4
  br label %237

174:                                              ; preds = %140
  br label %175

175:                                              ; preds = %174, %128
  br label %110

176:                                              ; preds = %110
  br label %177

177:                                              ; preds = %176
  br label %180

178:                                              ; preds = %56
  %179 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %179, i32* %5, align 4
  br label %237

180:                                              ; preds = %177
  br label %181

181:                                              ; preds = %180, %53, %50
  %182 = load i32, i32* %6, align 4
  %183 = load i8*, i8** %7, align 8
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @gb18030uni_wctomb(i32 %182, i8* %183, i32 %184, i32 %185)
  store i32 %186, i32* %10, align 4
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* @RET_ILUNI, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %181
  %191 = load i32, i32* %10, align 4
  store i32 %191, i32* %5, align 4
  br label %237

192:                                              ; preds = %181
  %193 = load i32, i32* %9, align 4
  %194 = icmp sge i32 %193, 4
  br i1 %194, label %195, label %235

195:                                              ; preds = %192
  %196 = load i32, i32* %8, align 4
  %197 = icmp sge i32 %196, 65536
  br i1 %197, label %198, label %233

198:                                              ; preds = %195
  %199 = load i32, i32* %8, align 4
  %200 = icmp slt i32 %199, 1114112
  br i1 %200, label %201, label %233

201:                                              ; preds = %198
  %202 = load i32, i32* %8, align 4
  %203 = sub nsw i32 %202, 65536
  store i32 %203, i32* %17, align 4
  %204 = load i32, i32* %17, align 4
  %205 = urem i32 %204, 10
  %206 = add i32 %205, 48
  %207 = trunc i32 %206 to i8
  %208 = load i8*, i8** %7, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 3
  store i8 %207, i8* %209, align 1
  %210 = load i32, i32* %17, align 4
  %211 = udiv i32 %210, 10
  store i32 %211, i32* %17, align 4
  %212 = load i32, i32* %17, align 4
  %213 = urem i32 %212, 126
  %214 = add i32 %213, 129
  %215 = trunc i32 %214 to i8
  %216 = load i8*, i8** %7, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 2
  store i8 %215, i8* %217, align 1
  %218 = load i32, i32* %17, align 4
  %219 = udiv i32 %218, 126
  store i32 %219, i32* %17, align 4
  %220 = load i32, i32* %17, align 4
  %221 = urem i32 %220, 10
  %222 = add i32 %221, 48
  %223 = trunc i32 %222 to i8
  %224 = load i8*, i8** %7, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 1
  store i8 %223, i8* %225, align 1
  %226 = load i32, i32* %17, align 4
  %227 = udiv i32 %226, 10
  store i32 %227, i32* %17, align 4
  %228 = load i32, i32* %17, align 4
  %229 = add i32 %228, 144
  %230 = trunc i32 %229 to i8
  %231 = load i8*, i8** %7, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 0
  store i8 %230, i8* %232, align 1
  store i32 4, i32* %5, align 4
  br label %237

233:                                              ; preds = %198, %195
  %234 = load i32, i32* @RET_ILUNI, align 4
  store i32 %234, i32* %5, align 4
  br label %237

235:                                              ; preds = %192
  %236 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %236, i32* %5, align 4
  br label %237

237:                                              ; preds = %235, %233, %201, %190, %178, %143, %89, %84, %48, %37, %26
  %238 = load i32, i32* %5, align 4
  ret i32 %238
}

declare dso_local i32 @ascii_wctomb(i32, i8*, i32, i32) #1

declare dso_local i32 @gbk_wctomb(i32, i8*, i32, i32) #1

declare dso_local i32 @gb18030ext_wctomb(i32, i8*, i32, i32) #1

declare dso_local i32 @gb18030uni_wctomb(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
