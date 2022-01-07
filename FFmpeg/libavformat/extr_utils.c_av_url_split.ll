; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_av_url_split.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_av_url_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @av_url_split(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5, i32* %6, i8* %7, i32 %8, i8* %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  store i8* %0, i8** %11, align 8
  store i32 %1, i32* %12, align 4
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i8* %7, i8** %18, align 8
  store i32 %8, i32* %19, align 4
  store i8* %9, i8** %20, align 8
  %28 = load i32*, i32** %17, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %10
  %31 = load i32*, i32** %17, align 8
  store i32 -1, i32* %31, align 4
  br label %32

32:                                               ; preds = %30, %10
  %33 = load i32, i32* %12, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 0, i8* %37, align 1
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %14, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i8*, i8** %13, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  store i8 0, i8* %43, align 1
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %16, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i8*, i8** %15, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  store i8 0, i8* %49, align 1
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %19, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i8*, i8** %18, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 0, i8* %55, align 1
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i8*, i8** %20, align 8
  %58 = call i8* @strchr(i8* %57, i32 58)
  store i8* %58, i8** %21, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %90

60:                                               ; preds = %56
  %61 = load i8*, i8** %11, align 8
  %62 = load i8*, i8** %20, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i8*, i8** %21, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8*, i8** %20, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = call i32 (i32, i64, ...) bitcast (i32 (...)* @FFMIN to i32 (i32, i64, ...)*)(i32 %63, i64 %69)
  %71 = call i32 (i8*, i8*, i32, ...) bitcast (i32 (...)* @av_strlcpy to i32 (i8*, i8*, i32, ...)*)(i8* %61, i8* %62, i32 %70)
  %72 = load i8*, i8** %21, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %21, align 8
  %74 = load i8*, i8** %21, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 47
  br i1 %77, label %78, label %81

78:                                               ; preds = %60
  %79 = load i8*, i8** %21, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %21, align 8
  br label %81

81:                                               ; preds = %78, %60
  %82 = load i8*, i8** %21, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 47
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i8*, i8** %21, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %21, align 8
  br label %89

89:                                               ; preds = %86, %81
  br label %95

90:                                               ; preds = %56
  %91 = load i8*, i8** %18, align 8
  %92 = load i8*, i8** %20, align 8
  %93 = load i32, i32* %19, align 4
  %94 = call i32 (i8*, i8*, i32, ...) bitcast (i32 (...)* @av_strlcpy to i32 (i8*, i8*, i32, ...)*)(i8* %91, i8* %92, i32 %93)
  br label %241

95:                                               ; preds = %89
  %96 = load i8*, i8** %21, align 8
  %97 = call i8* @strchr(i8* %96, i32 47)
  store i8* %97, i8** %22, align 8
  %98 = load i8*, i8** %21, align 8
  %99 = call i8* @strchr(i8* %98, i32 63)
  store i8* %99, i8** %23, align 8
  %100 = load i8*, i8** %22, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %95
  %103 = load i8*, i8** %23, align 8
  store i8* %103, i8** %22, align 8
  br label %117

104:                                              ; preds = %95
  %105 = load i8*, i8** %22, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %116

107:                                              ; preds = %104
  %108 = load i8*, i8** %23, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i8*, i8** %22, align 8
  %112 = load i8*, i8** %23, align 8
  %113 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @FFMIN to i32 (i8*, i8*, ...)*)(i8* %111, i8* %112)
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i8*
  store i8* %115, i8** %22, align 8
  br label %116

116:                                              ; preds = %110, %107, %104
  br label %117

117:                                              ; preds = %116, %102
  %118 = load i8*, i8** %22, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i8*, i8** %18, align 8
  %122 = load i8*, i8** %22, align 8
  %123 = load i32, i32* %19, align 4
  %124 = call i32 (i8*, i8*, i32, ...) bitcast (i32 (...)* @av_strlcpy to i32 (i8*, i8*, i32, ...)*)(i8* %121, i8* %122, i32 %123)
  br label %130

125:                                              ; preds = %117
  %126 = load i8*, i8** %21, align 8
  %127 = load i8*, i8** %21, align 8
  %128 = call i64 @strlen(i8* %127)
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  store i8* %129, i8** %22, align 8
  br label %130

130:                                              ; preds = %125, %120
  %131 = load i8*, i8** %22, align 8
  %132 = load i8*, i8** %21, align 8
  %133 = icmp ne i8* %131, %132
  br i1 %133, label %134, label %241

134:                                              ; preds = %130
  %135 = load i8*, i8** %21, align 8
  store i8* %135, i8** %25, align 8
  br label %136

136:                                              ; preds = %146, %134
  %137 = load i8*, i8** %21, align 8
  %138 = call i8* @strchr(i8* %137, i32 64)
  store i8* %138, i8** %24, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load i8*, i8** %24, align 8
  %142 = load i8*, i8** %22, align 8
  %143 = icmp ult i8* %141, %142
  br label %144

144:                                              ; preds = %140, %136
  %145 = phi i1 [ false, %136 ], [ %143, %140 ]
  br i1 %145, label %146, label %160

146:                                              ; preds = %144
  %147 = load i8*, i8** %13, align 8
  %148 = load i8*, i8** %25, align 8
  %149 = load i32, i32* %14, align 4
  %150 = load i8*, i8** %24, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  %152 = load i8*, i8** %25, align 8
  %153 = ptrtoint i8* %151 to i64
  %154 = ptrtoint i8* %152 to i64
  %155 = sub i64 %153, %154
  %156 = call i32 (i32, i64, ...) bitcast (i32 (...)* @FFMIN to i32 (i32, i64, ...)*)(i32 %149, i64 %155)
  %157 = call i32 (i8*, i8*, i32, ...) bitcast (i32 (...)* @av_strlcpy to i32 (i8*, i8*, i32, ...)*)(i8* %147, i8* %148, i32 %156)
  %158 = load i8*, i8** %24, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  store i8* %159, i8** %21, align 8
  br label %136

160:                                              ; preds = %144
  %161 = load i8*, i8** %21, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 91
  br i1 %164, label %165, label %199

165:                                              ; preds = %160
  %166 = load i8*, i8** %21, align 8
  %167 = call i8* @strchr(i8* %166, i32 93)
  store i8* %167, i8** %27, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %199

169:                                              ; preds = %165
  %170 = load i8*, i8** %27, align 8
  %171 = load i8*, i8** %22, align 8
  %172 = icmp ult i8* %170, %171
  br i1 %172, label %173, label %199

173:                                              ; preds = %169
  %174 = load i8*, i8** %15, align 8
  %175 = load i8*, i8** %21, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 1
  %177 = load i32, i32* %16, align 4
  %178 = load i8*, i8** %27, align 8
  %179 = load i8*, i8** %21, align 8
  %180 = ptrtoint i8* %178 to i64
  %181 = ptrtoint i8* %179 to i64
  %182 = sub i64 %180, %181
  %183 = call i32 (i32, i64, ...) bitcast (i32 (...)* @FFMIN to i32 (i32, i64, ...)*)(i32 %177, i64 %182)
  %184 = call i32 (i8*, i8*, i32, ...) bitcast (i32 (...)* @av_strlcpy to i32 (i8*, i8*, i32, ...)*)(i8* %174, i8* %176, i32 %183)
  %185 = load i8*, i8** %27, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 1
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 58
  br i1 %189, label %190, label %198

190:                                              ; preds = %173
  %191 = load i32*, i32** %17, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %198

193:                                              ; preds = %190
  %194 = load i8*, i8** %27, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 2
  %196 = call i32 (i8*, ...) bitcast (i32 (...)* @atoi to i32 (i8*, ...)*)(i8* %195)
  %197 = load i32*, i32** %17, align 8
  store i32 %196, i32* %197, align 4
  br label %198

198:                                              ; preds = %193, %190, %173
  br label %240

199:                                              ; preds = %169, %165, %160
  %200 = load i8*, i8** %21, align 8
  %201 = call i8* @strchr(i8* %200, i32 58)
  store i8* %201, i8** %26, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %227

203:                                              ; preds = %199
  %204 = load i8*, i8** %26, align 8
  %205 = load i8*, i8** %22, align 8
  %206 = icmp ult i8* %204, %205
  br i1 %206, label %207, label %227

207:                                              ; preds = %203
  %208 = load i8*, i8** %15, align 8
  %209 = load i8*, i8** %21, align 8
  %210 = load i8*, i8** %26, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 1
  %212 = load i8*, i8** %21, align 8
  %213 = ptrtoint i8* %211 to i64
  %214 = ptrtoint i8* %212 to i64
  %215 = sub i64 %213, %214
  %216 = load i32, i32* %16, align 4
  %217 = call i32 (i64, i32, ...) bitcast (i32 (...)* @FFMIN to i32 (i64, i32, ...)*)(i64 %215, i32 %216)
  %218 = call i32 (i8*, i8*, i32, ...) bitcast (i32 (...)* @av_strlcpy to i32 (i8*, i8*, i32, ...)*)(i8* %208, i8* %209, i32 %217)
  %219 = load i32*, i32** %17, align 8
  %220 = icmp ne i32* %219, null
  br i1 %220, label %221, label %226

221:                                              ; preds = %207
  %222 = load i8*, i8** %26, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 1
  %224 = call i32 (i8*, ...) bitcast (i32 (...)* @atoi to i32 (i8*, ...)*)(i8* %223)
  %225 = load i32*, i32** %17, align 8
  store i32 %224, i32* %225, align 4
  br label %226

226:                                              ; preds = %221, %207
  br label %239

227:                                              ; preds = %203, %199
  %228 = load i8*, i8** %15, align 8
  %229 = load i8*, i8** %21, align 8
  %230 = load i8*, i8** %22, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 1
  %232 = load i8*, i8** %21, align 8
  %233 = ptrtoint i8* %231 to i64
  %234 = ptrtoint i8* %232 to i64
  %235 = sub i64 %233, %234
  %236 = load i32, i32* %16, align 4
  %237 = call i32 (i64, i32, ...) bitcast (i32 (...)* @FFMIN to i32 (i64, i32, ...)*)(i64 %235, i32 %236)
  %238 = call i32 (i8*, i8*, i32, ...) bitcast (i32 (...)* @av_strlcpy to i32 (i8*, i8*, i32, ...)*)(i8* %228, i8* %229, i32 %237)
  br label %239

239:                                              ; preds = %227, %226
  br label %240

240:                                              ; preds = %239, %198
  br label %241

241:                                              ; preds = %90, %240, %130
  ret void
}

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i32 @av_strlcpy(...) #1

declare dso_local i32 @FFMIN(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @atoi(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
