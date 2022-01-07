; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/dtmerge/extr_dtmerge.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/dtmerge/extr_dtmerge.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"--debug\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"* Unknown option '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"* failed to load '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"i2c0\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"i2c_arm\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"i2c_vc\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"i2c1\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"i2c_baudrate\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"i2c0_baudrate\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"i2c_arm_baudrate\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"i2c_vc_baudrate\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"i2c1_baudrate\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"* unknown param '%s'\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"* Exiting with error code %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %12, align 4
  store i32 100000, i32* %13, align 4
  br label %19

19:                                               ; preds = %66, %2
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 45
  br label %33

33:                                               ; preds = %23, %19
  %34 = phi i1 [ false, %19 ], [ %32, %23 ]
  br i1 %34, label %35, label %67

35:                                               ; preds = %33
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %12, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8*, i8** %36, i64 %39
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %14, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %35
  %46 = load i8*, i8** %14, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %35
  %50 = call i32 @dtoverlay_enable_debug(i32 1)
  br label %66

51:                                               ; preds = %45
  %52 = load i8*, i8** %14, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %14, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55, %51
  %60 = call i32 (...) @usage()
  br label %65

61:                                               ; preds = %55
  %62 = load i8*, i8** %14, align 8
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %62)
  %64 = call i32 (...) @usage()
  br label %65

65:                                               ; preds = %61, %59
  br label %66

66:                                               ; preds = %65, %49
  br label %19

67:                                               ; preds = %33
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 3
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 (...) @usage()
  br label %74

74:                                               ; preds = %72, %67
  %75 = load i8**, i8*** %5, align 8
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8*, i8** %75, i64 %78
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %6, align 8
  %81 = load i8**, i8*** %5, align 8
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8*, i8** %81, i64 %84
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %7, align 8
  %87 = load i8**, i8*** %5, align 8
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %12, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8*, i8** %87, i64 %90
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %8, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* %13, align 4
  %95 = call i32* @dtoverlay_load_dtb(i8* %93, i32 %94)
  store i32* %95, i32** %9, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %74
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %99)
  store i32 -1, i32* %3, align 4
  br label %225

101:                                              ; preds = %74
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @dtoverlay_set_synonym(i32* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store i32 %103, i32* %11, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = call i32 @dtoverlay_set_synonym(i32* %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store i32 %105, i32* %11, align 4
  %106 = load i32*, i32** %9, align 8
  %107 = call i32 @dtoverlay_set_synonym(i32* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  store i32 %107, i32* %11, align 4
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @dtoverlay_set_synonym(i32* %108, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  store i32 %109, i32* %11, align 4
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @dtoverlay_set_synonym(i32* %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  store i32 %111, i32* %11, align 4
  %112 = load i32*, i32** %9, align 8
  %113 = call i32 @dtoverlay_set_synonym(i32* %112, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  store i32 %113, i32* %11, align 4
  %114 = load i8*, i8** %8, align 8
  %115 = call i64 @strcmp(i8* %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %101
  %118 = load i32*, i32** %9, align 8
  store i32* %118, i32** %10, align 8
  br label %131

119:                                              ; preds = %101
  %120 = load i8*, i8** %8, align 8
  %121 = load i32, i32* %13, align 4
  %122 = call i32* @dtoverlay_load_dtb(i8* %120, i32 %121)
  store i32* %122, i32** %10, align 8
  %123 = load i32*, i32** %10, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %119
  %126 = load i32*, i32** %9, align 8
  %127 = load i32*, i32** %10, align 8
  %128 = call i32 @dtoverlay_fixup_overlay(i32* %126, i32* %127)
  store i32 %128, i32* %11, align 4
  br label %130

129:                                              ; preds = %119
  store i32 -1, i32* %11, align 4
  br label %130

130:                                              ; preds = %129, %125
  br label %131

131:                                              ; preds = %130, %117
  br label %132

132:                                              ; preds = %192, %131
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %4, align 4
  %138 = icmp slt i32 %136, %137
  br label %139

139:                                              ; preds = %135, %132
  %140 = phi i1 [ false, %132 ], [ %138, %135 ]
  br i1 %140, label %141, label %193

141:                                              ; preds = %139
  %142 = load i8**, i8*** %5, align 8
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %12, align 4
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8*, i8** %142, i64 %145
  %147 = load i8*, i8** %146, align 8
  store i8* %147, i8** %15, align 8
  %148 = load i8*, i8** %15, align 8
  %149 = load i8*, i8** %15, align 8
  %150 = call i32 @strcspn(i8* %149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  store i8* %152, i8** %16, align 8
  %153 = load i8*, i8** %16, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 61
  br i1 %156, label %157, label %160

157:                                              ; preds = %141
  %158 = load i8*, i8** %16, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %16, align 8
  store i8 0, i8* %158, align 1
  br label %161

160:                                              ; preds = %141
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8** %16, align 8
  br label %161

161:                                              ; preds = %160, %157
  %162 = load i32*, i32** %10, align 8
  %163 = load i8*, i8** %15, align 8
  %164 = call i8* @dtoverlay_find_override(i32* %162, i8* %163, i32* %18)
  store i8* %164, i8** %17, align 8
  %165 = load i8*, i8** %17, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %174

167:                                              ; preds = %161
  %168 = load i32*, i32** %10, align 8
  %169 = load i8*, i8** %15, align 8
  %170 = load i8*, i8** %17, align 8
  %171 = load i32, i32* %18, align 4
  %172 = load i8*, i8** %16, align 8
  %173 = call i32 @dtoverlay_apply_override(i32* %168, i8* %169, i8* %170, i32 %171, i8* %172)
  store i32 %173, i32* %11, align 4
  br label %192

174:                                              ; preds = %161
  %175 = load i32*, i32** %9, align 8
  %176 = load i8*, i8** %15, align 8
  %177 = call i8* @dtoverlay_find_override(i32* %175, i8* %176, i32* %18)
  store i8* %177, i8** %17, align 8
  %178 = load i8*, i8** %17, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %187

180:                                              ; preds = %174
  %181 = load i32*, i32** %9, align 8
  %182 = load i8*, i8** %15, align 8
  %183 = load i8*, i8** %17, align 8
  %184 = load i32, i32* %18, align 4
  %185 = load i8*, i8** %16, align 8
  %186 = call i32 @dtoverlay_apply_override(i32* %181, i8* %182, i8* %183, i32 %184, i8* %185)
  store i32 %186, i32* %11, align 4
  br label %191

187:                                              ; preds = %174
  %188 = load i8*, i8** %15, align 8
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i8* %188)
  %190 = load i32, i32* %18, align 4
  store i32 %190, i32* %11, align 4
  br label %191

191:                                              ; preds = %187, %180
  br label %192

192:                                              ; preds = %191, %167
  br label %132

193:                                              ; preds = %139
  %194 = load i32, i32* %11, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %206, label %196

196:                                              ; preds = %193
  %197 = load i32*, i32** %10, align 8
  %198 = load i32*, i32** %9, align 8
  %199 = icmp ne i32* %197, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %196
  %201 = load i32*, i32** %9, align 8
  %202 = load i32*, i32** %10, align 8
  %203 = call i32 @dtoverlay_merge_overlay(i32* %201, i32* %202)
  store i32 %203, i32* %11, align 4
  %204 = load i32*, i32** %10, align 8
  %205 = call i32 @dtoverlay_free_dtb(i32* %204)
  br label %206

206:                                              ; preds = %200, %196, %193
  %207 = load i32, i32* %11, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %215, label %209

209:                                              ; preds = %206
  %210 = load i32*, i32** %9, align 8
  %211 = call i32 @dtoverlay_pack_dtb(i32* %210)
  %212 = load i32*, i32** %9, align 8
  %213 = load i8*, i8** %7, align 8
  %214 = call i32 @dtoverlay_save_dtb(i32* %212, i8* %213)
  store i32 %214, i32* %11, align 4
  br label %215

215:                                              ; preds = %209, %206
  %216 = load i32*, i32** %9, align 8
  %217 = call i32 @dtoverlay_free_dtb(i32* %216)
  %218 = load i32, i32* %11, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %215
  %221 = load i32, i32* %11, align 4
  %222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0), i32 %221)
  br label %223

223:                                              ; preds = %220, %215
  %224 = load i32, i32* %11, align 4
  store i32 %224, i32* %3, align 4
  br label %225

225:                                              ; preds = %223, %98
  %226 = load i32, i32* %3, align 4
  ret i32 %226
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @dtoverlay_enable_debug(i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @dtoverlay_load_dtb(i8*, i32) #1

declare dso_local i32 @dtoverlay_set_synonym(i32*, i8*, i8*) #1

declare dso_local i32 @dtoverlay_fixup_overlay(i32*, i32*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i8* @dtoverlay_find_override(i32*, i8*, i32*) #1

declare dso_local i32 @dtoverlay_apply_override(i32*, i8*, i8*, i32, i8*) #1

declare dso_local i32 @dtoverlay_merge_overlay(i32*, i32*) #1

declare dso_local i32 @dtoverlay_free_dtb(i32*) #1

declare dso_local i32 @dtoverlay_pack_dtb(i32*) #1

declare dso_local i32 @dtoverlay_save_dtb(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
