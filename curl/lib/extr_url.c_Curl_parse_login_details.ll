; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_Curl_parse_login_details.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_Curl_parse_login_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLE_OK = common dso_local global i64 0, align 8
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_parse_login_details(i8* %0, i64 %1, i8** %2, i8** %3, i8** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i8** %4, i8*** %10, align 8
  %20 = load i64, i64* @CURLE_OK, align 8
  store i64 %20, i64* %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %21 = load i8**, i8*** %9, align 8
  %22 = icmp ne i8** %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %5
  %24 = load i8*, i8** %6, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 58)
  store i8* %25, i8** %15, align 8
  %26 = load i8*, i8** %15, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = icmp uge i8* %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i8* null, i8** %15, align 8
  br label %32

32:                                               ; preds = %31, %23
  br label %33

33:                                               ; preds = %32, %5
  %34 = load i8**, i8*** %10, align 8
  %35 = icmp ne i8** %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i8*, i8** %6, align 8
  %38 = call i8* @strchr(i8* %37, i8 signext 59)
  store i8* %38, i8** %16, align 8
  %39 = load i8*, i8** %16, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = icmp uge i8* %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i8* null, i8** %16, align 8
  br label %45

45:                                               ; preds = %44, %36
  br label %46

46:                                               ; preds = %45, %33
  %47 = load i8*, i8** %15, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %70

49:                                               ; preds = %46
  %50 = load i8*, i8** %16, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i8*, i8** %15, align 8
  %54 = load i8*, i8** %16, align 8
  %55 = icmp ugt i8* %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i8*, i8** %16, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  br label %68

62:                                               ; preds = %52, %49
  %63 = load i8*, i8** %15, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  br label %68

68:                                               ; preds = %62, %56
  %69 = phi i64 [ %61, %56 ], [ %67, %62 ]
  br label %83

70:                                               ; preds = %46
  %71 = load i8*, i8** %16, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i8*, i8** %16, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  br label %81

79:                                               ; preds = %70
  %80 = load i64, i64* %7, align 8
  br label %81

81:                                               ; preds = %79, %73
  %82 = phi i64 [ %78, %73 ], [ %80, %79 ]
  br label %83

83:                                               ; preds = %81, %68
  %84 = phi i64 [ %69, %68 ], [ %82, %81 ]
  store i64 %84, i64* %17, align 8
  %85 = load i8*, i8** %15, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %111

87:                                               ; preds = %83
  %88 = load i8*, i8** %16, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %100

90:                                               ; preds = %87
  %91 = load i8*, i8** %16, align 8
  %92 = load i8*, i8** %15, align 8
  %93 = icmp ugt i8* %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i8*, i8** %16, align 8
  %96 = load i8*, i8** %15, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  br label %108

100:                                              ; preds = %90, %87
  %101 = load i8*, i8** %6, align 8
  %102 = load i64, i64* %7, align 8
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = load i8*, i8** %15, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  br label %108

108:                                              ; preds = %100, %94
  %109 = phi i64 [ %99, %94 ], [ %107, %100 ]
  %110 = sub i64 %109, 1
  br label %112

111:                                              ; preds = %83
  br label %112

112:                                              ; preds = %111, %108
  %113 = phi i64 [ %110, %108 ], [ 0, %111 ]
  store i64 %113, i64* %18, align 8
  %114 = load i8*, i8** %16, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %140

116:                                              ; preds = %112
  %117 = load i8*, i8** %15, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  %120 = load i8*, i8** %15, align 8
  %121 = load i8*, i8** %16, align 8
  %122 = icmp ugt i8* %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load i8*, i8** %15, align 8
  %125 = load i8*, i8** %16, align 8
  %126 = ptrtoint i8* %124 to i64
  %127 = ptrtoint i8* %125 to i64
  %128 = sub i64 %126, %127
  br label %137

129:                                              ; preds = %119, %116
  %130 = load i8*, i8** %6, align 8
  %131 = load i64, i64* %7, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  %133 = load i8*, i8** %16, align 8
  %134 = ptrtoint i8* %132 to i64
  %135 = ptrtoint i8* %133 to i64
  %136 = sub i64 %134, %135
  br label %137

137:                                              ; preds = %129, %123
  %138 = phi i64 [ %128, %123 ], [ %136, %129 ]
  %139 = sub i64 %138, 1
  br label %141

140:                                              ; preds = %112
  br label %141

141:                                              ; preds = %140, %137
  %142 = phi i64 [ %139, %137 ], [ 0, %140 ]
  store i64 %142, i64* %19, align 8
  %143 = load i8**, i8*** %8, align 8
  %144 = icmp ne i8** %143, null
  br i1 %144, label %145, label %157

145:                                              ; preds = %141
  %146 = load i64, i64* %17, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = load i64, i64* %17, align 8
  %150 = add i64 %149, 1
  %151 = call i8* @malloc(i64 %150)
  store i8* %151, i8** %12, align 8
  %152 = load i8*, i8** %12, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %156, label %154

154:                                              ; preds = %148
  %155 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %155, i64* %11, align 8
  br label %156

156:                                              ; preds = %154, %148
  br label %157

157:                                              ; preds = %156, %145, %141
  %158 = load i64, i64* %11, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %177, label %160

160:                                              ; preds = %157
  %161 = load i8**, i8*** %9, align 8
  %162 = icmp ne i8** %161, null
  br i1 %162, label %163, label %177

163:                                              ; preds = %160
  %164 = load i64, i64* %18, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %163
  %167 = load i64, i64* %18, align 8
  %168 = add i64 %167, 1
  %169 = call i8* @malloc(i64 %168)
  store i8* %169, i8** %13, align 8
  %170 = load i8*, i8** %13, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %176, label %172

172:                                              ; preds = %166
  %173 = load i8*, i8** %12, align 8
  %174 = call i32 @free(i8* %173)
  %175 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %175, i64* %11, align 8
  br label %176

176:                                              ; preds = %172, %166
  br label %177

177:                                              ; preds = %176, %163, %160, %157
  %178 = load i64, i64* %11, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %199, label %180

180:                                              ; preds = %177
  %181 = load i8**, i8*** %10, align 8
  %182 = icmp ne i8** %181, null
  br i1 %182, label %183, label %199

183:                                              ; preds = %180
  %184 = load i64, i64* %19, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %199

186:                                              ; preds = %183
  %187 = load i64, i64* %19, align 8
  %188 = add i64 %187, 1
  %189 = call i8* @malloc(i64 %188)
  store i8* %189, i8** %14, align 8
  %190 = load i8*, i8** %14, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %198, label %192

192:                                              ; preds = %186
  %193 = load i8*, i8** %13, align 8
  %194 = call i32 @free(i8* %193)
  %195 = load i8*, i8** %12, align 8
  %196 = call i32 @free(i8* %195)
  %197 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %197, i64* %11, align 8
  br label %198

198:                                              ; preds = %192, %186
  br label %199

199:                                              ; preds = %198, %183, %180, %177
  %200 = load i64, i64* %11, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %253, label %202

202:                                              ; preds = %199
  %203 = load i8*, i8** %12, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %218

205:                                              ; preds = %202
  %206 = load i8*, i8** %12, align 8
  %207 = load i8*, i8** %6, align 8
  %208 = load i64, i64* %17, align 8
  %209 = call i32 @memcpy(i8* %206, i8* %207, i64 %208)
  %210 = load i8*, i8** %12, align 8
  %211 = load i64, i64* %17, align 8
  %212 = getelementptr inbounds i8, i8* %210, i64 %211
  store i8 0, i8* %212, align 1
  %213 = load i8**, i8*** %8, align 8
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 @Curl_safefree(i8* %214)
  %216 = load i8*, i8** %12, align 8
  %217 = load i8**, i8*** %8, align 8
  store i8* %216, i8** %217, align 8
  br label %218

218:                                              ; preds = %205, %202
  %219 = load i8*, i8** %13, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %235

221:                                              ; preds = %218
  %222 = load i8*, i8** %13, align 8
  %223 = load i8*, i8** %15, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 1
  %225 = load i64, i64* %18, align 8
  %226 = call i32 @memcpy(i8* %222, i8* %224, i64 %225)
  %227 = load i8*, i8** %13, align 8
  %228 = load i64, i64* %18, align 8
  %229 = getelementptr inbounds i8, i8* %227, i64 %228
  store i8 0, i8* %229, align 1
  %230 = load i8**, i8*** %9, align 8
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 @Curl_safefree(i8* %231)
  %233 = load i8*, i8** %13, align 8
  %234 = load i8**, i8*** %9, align 8
  store i8* %233, i8** %234, align 8
  br label %235

235:                                              ; preds = %221, %218
  %236 = load i8*, i8** %14, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %238, label %252

238:                                              ; preds = %235
  %239 = load i8*, i8** %14, align 8
  %240 = load i8*, i8** %16, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 1
  %242 = load i64, i64* %19, align 8
  %243 = call i32 @memcpy(i8* %239, i8* %241, i64 %242)
  %244 = load i8*, i8** %14, align 8
  %245 = load i64, i64* %19, align 8
  %246 = getelementptr inbounds i8, i8* %244, i64 %245
  store i8 0, i8* %246, align 1
  %247 = load i8**, i8*** %10, align 8
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @Curl_safefree(i8* %248)
  %250 = load i8*, i8** %14, align 8
  %251 = load i8**, i8*** %10, align 8
  store i8* %250, i8** %251, align 8
  br label %252

252:                                              ; preds = %238, %235
  br label %253

253:                                              ; preds = %252, %199
  %254 = load i64, i64* %11, align 8
  ret i64 %254
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @Curl_safefree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
