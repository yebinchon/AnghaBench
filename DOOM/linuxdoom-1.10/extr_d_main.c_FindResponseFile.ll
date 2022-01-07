; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_main.c_FindResponseFile.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_d_main.c_FindResponseFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@myargc = common dso_local global i32 0, align 4
@myargv = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"\0ANo such response file!\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Found response file %s!\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"%d command-line args:\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MAXARGVS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FindResponseFile() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [20 x i8*], align 16
  %10 = alloca i8*, align 8
  store i32 1, i32* %1, align 4
  br label %11

11:                                               ; preds = %207, %0
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @myargc, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %210

15:                                               ; preds = %11
  %16 = load i8**, i8*** @myargv, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 64
  br i1 %24, label %25, label %206

25:                                               ; preds = %15
  %26 = load i8**, i8*** @myargv, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = call i32* @fopen(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %32, i32** %2, align 8
  %33 = load i32*, i32** %2, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 @exit(i32 1) #3
  unreachable

38:                                               ; preds = %25
  %39 = load i8**, i8*** @myargv, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* @SEEK_END, align 4
  %48 = call i32 @fseek(i32* %46, i32 0, i32 %47)
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @ftell(i32* %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32*, i32** %2, align 8
  %52 = load i32, i32* @SEEK_SET, align 4
  %53 = call i32 @fseek(i32* %51, i32 0, i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = call i8* @malloc(i32 %54)
  store i8* %55, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %3, align 4
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @fread(i8* %56, i32 %57, i32 1, i32* %58)
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @fclose(i32* %60)
  store i32 0, i32* %5, align 4
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %78, %38
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @myargc, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load i8**, i8*** @myargv, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds [20 x i8*], [20 x i8*]* %9, i64 0, i64 %76
  store i8* %73, i8** %77, align 8
  br label %78

78:                                               ; preds = %68
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %64

81:                                               ; preds = %64
  %82 = load i8**, i8*** @myargv, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %10, align 8
  %85 = call i8* @malloc(i32 800)
  %86 = bitcast i8* %85 to i8**
  store i8** %86, i8*** @myargv, align 8
  %87 = load i8**, i8*** @myargv, align 8
  %88 = call i32 @memset(i8** %87, i32 0, i32 800)
  %89 = load i8*, i8** %10, align 8
  %90 = load i8**, i8*** @myargv, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 0
  store i8* %89, i8** %91, align 8
  %92 = load i8*, i8** %8, align 8
  store i8* %92, i8** %7, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %165, %81
  %96 = load i8*, i8** %7, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8**, i8*** @myargv, align 8
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8*, i8** %100, i64 %103
  store i8* %99, i8** %104, align 8
  br label %105

105:                                              ; preds = %129, %95
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* %3, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %127

109:                                              ; preds = %105
  %110 = load i8*, i8** %7, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp sge i32 %115, 33
  br i1 %116, label %117, label %125

117:                                              ; preds = %109
  %118 = load i8*, i8** %7, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp sle i32 %123, 122
  br label %125

125:                                              ; preds = %117, %109
  %126 = phi i1 [ false, %109 ], [ %124, %117 ]
  br label %127

127:                                              ; preds = %125, %105
  %128 = phi i1 [ false, %105 ], [ %126, %125 ]
  br i1 %128, label %129, label %132

129:                                              ; preds = %127
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %4, align 4
  br label %105

132:                                              ; preds = %127
  %133 = load i8*, i8** %7, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  store i8 0, i8* %136, align 1
  br label %137

137:                                              ; preds = %161, %132
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* %3, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %159

141:                                              ; preds = %137
  %142 = load i8*, i8** %7, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp sle i32 %147, 32
  br i1 %148, label %157, label %149

149:                                              ; preds = %141
  %150 = load i8*, i8** %7, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp sgt i32 %155, 122
  br label %157

157:                                              ; preds = %149, %141
  %158 = phi i1 [ true, %141 ], [ %156, %149 ]
  br label %159

159:                                              ; preds = %157, %137
  %160 = phi i1 [ false, %137 ], [ %158, %157 ]
  br i1 %160, label %161, label %164

161:                                              ; preds = %159
  %162 = load i32, i32* %4, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %4, align 4
  br label %137

164:                                              ; preds = %159
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* %3, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %95, label %169

169:                                              ; preds = %165
  store i32 0, i32* %4, align 4
  br label %170

170:                                              ; preds = %184, %169
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* %5, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %187

174:                                              ; preds = %170
  %175 = load i32, i32* %4, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [20 x i8*], [20 x i8*]* %9, i64 0, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = load i8**, i8*** @myargv, align 8
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %6, align 4
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i8*, i8** %179, i64 %182
  store i8* %178, i8** %183, align 8
  br label %184

184:                                              ; preds = %174
  %185 = load i32, i32* %4, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %4, align 4
  br label %170

187:                                              ; preds = %170
  %188 = load i32, i32* %6, align 4
  store i32 %188, i32* @myargc, align 4
  %189 = load i32, i32* @myargc, align 4
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %189)
  store i32 1, i32* %4, align 4
  br label %191

191:                                              ; preds = %202, %187
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* @myargc, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %205

195:                                              ; preds = %191
  %196 = load i8**, i8*** @myargv, align 8
  %197 = load i32, i32* %4, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8*, i8** %196, i64 %198
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %200)
  br label %202

202:                                              ; preds = %195
  %203 = load i32, i32* %4, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %4, align 4
  br label %191

205:                                              ; preds = %191
  br label %210

206:                                              ; preds = %15
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %1, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %1, align 4
  br label %11

210:                                              ; preds = %205, %11
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
