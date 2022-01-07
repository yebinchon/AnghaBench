; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decsrtsub.c_srt_markup_to_ssa.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decsrtsub.c_srt_markup_to_ssa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"{\\i1}\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"{\\b1}\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"{\\u1}\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"{\\i0}\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"{\\b0}\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"{\\u0}\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"font color=\22%39[^\22]\22>\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"{\\1c&H%X&}\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"{\\1c&HFFFFFF&}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @srt_markup_to_ssa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @srt_markup_to_ssa(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  %7 = alloca [40 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 60
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 123
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i8* null, i8** %3, align 8
  br label %237

23:                                               ; preds = %16, %2
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 60
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i8 62, i8* %6, align 1
  br label %31

30:                                               ; preds = %23
  store i8 125, i8* %6, align 1
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 105
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = load i8, i8* %6, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32*, i32** %5, align 8
  store i32 3, i32* %46, align 4
  %47 = call i8* (i8*, ...) @hb_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %47, i8** %3, align 8
  br label %237

48:                                               ; preds = %37, %31
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 98
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = load i8, i8* %6, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32*, i32** %5, align 8
  store i32 3, i32* %63, align 4
  %64 = call i8* (i8*, ...) @hb_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %64, i8** %3, align 8
  br label %237

65:                                               ; preds = %54, %48
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 117
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = load i8, i8* %6, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i32*, i32** %5, align 8
  store i32 3, i32* %80, align 4
  %81 = call i8* (i8*, ...) @hb_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %81, i8** %3, align 8
  br label %237

82:                                               ; preds = %71, %65
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 47
  br i1 %87, label %88, label %105

88:                                               ; preds = %82
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 105
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = load i8*, i8** %4, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 3
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = load i8, i8* %6, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load i32*, i32** %5, align 8
  store i32 4, i32* %103, align 4
  %104 = call i8* (i8*, ...) @hb_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %104, i8** %3, align 8
  br label %237

105:                                              ; preds = %94, %88, %82
  %106 = load i8*, i8** %4, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 47
  br i1 %110, label %111, label %128

111:                                              ; preds = %105
  %112 = load i8*, i8** %4, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 2
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 98
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = load i8*, i8** %4, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 3
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = load i8, i8* %6, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load i32*, i32** %5, align 8
  store i32 4, i32* %126, align 4
  %127 = call i8* (i8*, ...) @hb_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i8* %127, i8** %3, align 8
  br label %237

128:                                              ; preds = %117, %111, %105
  %129 = load i8*, i8** %4, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 47
  br i1 %133, label %134, label %151

134:                                              ; preds = %128
  %135 = load i8*, i8** %4, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 2
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 117
  br i1 %139, label %140, label %151

140:                                              ; preds = %134
  %141 = load i8*, i8** %4, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 3
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = load i8, i8* %6, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %140
  %149 = load i32*, i32** %5, align 8
  store i32 4, i32* %149, align 4
  %150 = call i8* (i8*, ...) @hb_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i8* %150, i8** %3, align 8
  br label %237

151:                                              ; preds = %140, %134, %128
  %152 = load i8*, i8** %4, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 0
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 60
  br i1 %156, label %157, label %203

157:                                              ; preds = %151
  %158 = load i8*, i8** %4, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = call i32 @strncmp(i8* %159, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %203, label %162

162:                                              ; preds = %157
  %163 = load i8*, i8** %4, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  %165 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %166 = call i32 @sscanf(i8* %164, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %165)
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* %9, align 4
  %168 = icmp ne i32 %167, 1
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  store i8* null, i8** %3, align 8
  br label %237

170:                                              ; preds = %162
  br label %171

171:                                              ; preds = %180, %170
  %172 = load i8*, i8** %4, align 8
  %173 = load i32*, i32** %5, align 8
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %172, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp ne i32 %178, 62
  br i1 %179, label %180, label %184

180:                                              ; preds = %171
  %181 = load i32*, i32** %5, align 8
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  br label %171

184:                                              ; preds = %171
  %185 = load i32*, i32** %5, align 8
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 4
  %188 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %189 = load i8, i8* %188, align 16
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 %190, 35
  br i1 %191, label %192, label %196

192:                                              ; preds = %184
  %193 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %194 = getelementptr inbounds i8, i8* %193, i64 1
  %195 = call i32 @strtol(i8* %194, i32* null, i32 16)
  store i32 %195, i32* %8, align 4
  br label %199

196:                                              ; preds = %184
  %197 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %198 = call i32 @hb_rgb_lookup_by_name(i8* %197)
  store i32 %198, i32* %8, align 4
  br label %199

199:                                              ; preds = %196, %192
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @HB_RGB_TO_BGR(i32 %200)
  %202 = call i8* (i8*, ...) @hb_strdup_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %201)
  store i8* %202, i8** %3, align 8
  br label %237

203:                                              ; preds = %157, %151
  %204 = load i8*, i8** %4, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 0
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 60
  br i1 %208, label %209, label %229

209:                                              ; preds = %203
  %210 = load i8*, i8** %4, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 1
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp eq i32 %213, 47
  br i1 %214, label %215, label %229

215:                                              ; preds = %209
  %216 = load i8*, i8** %4, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 2
  %218 = call i32 @strncmp(i8* %217, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %229, label %220

220:                                              ; preds = %215
  %221 = load i8*, i8** %4, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 6
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 62
  br i1 %225, label %226, label %229

226:                                              ; preds = %220
  %227 = load i32*, i32** %5, align 8
  store i32 7, i32* %227, align 4
  %228 = call i8* (i8*, ...) @hb_strdup_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  store i8* %228, i8** %3, align 8
  br label %237

229:                                              ; preds = %220, %215, %209, %203
  br label %230

230:                                              ; preds = %229
  br label %231

231:                                              ; preds = %230
  br label %232

232:                                              ; preds = %231
  br label %233

233:                                              ; preds = %232
  br label %234

234:                                              ; preds = %233
  br label %235

235:                                              ; preds = %234
  br label %236

236:                                              ; preds = %235
  store i8* null, i8** %3, align 8
  br label %237

237:                                              ; preds = %236, %226, %199, %169, %148, %125, %102, %79, %62, %45, %22
  %238 = load i8*, i8** %3, align 8
  ret i8* %238
}

declare dso_local i8* @hb_strdup_printf(i8*, ...) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @hb_rgb_lookup_by_name(i8*) #1

declare dso_local i32 @HB_RGB_TO_BGR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
