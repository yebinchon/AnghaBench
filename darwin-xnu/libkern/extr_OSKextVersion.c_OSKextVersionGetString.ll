; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/extr_OSKextVersion.c_OSKextVersionGetString.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/extr_OSKextVersion.c_OSKextVersionGetString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kOSKextVersionMaxLength = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"(invalid)\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"(missing)\00", align 1
@VERS_MAJOR_MULT = common dso_local global i32 0, align 4
@VERS_MAJOR_MAX = common dso_local global i32 0, align 4
@VERS_MINOR_MULT = common dso_local global i32 0, align 4
@VERS_REVISION_MULT = common dso_local global i32 0, align 4
@VERS_STAGE_MULT = common dso_local global i32 0, align 4
@VERS_STAGE_LEVEL_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@kOSKextVersionStageRelease = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OSKextVersionGetString(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i8* null, i8** %14, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @kOSKextVersionMaxLength, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %3
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %4, align 4
  br label %203

23:                                               ; preds = %17
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 1
  %28 = trunc i64 %27 to i32
  %29 = call i32 @bzero(i8* %24, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @strlcpy(i8* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* %4, align 4
  br label %203

37:                                               ; preds = %23
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @strlcpy(i8* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %4, align 4
  br label %203

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @VERS_MAJOR_MULT, align 4
  %48 = sdiv i32 %46, %47
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @VERS_MAJOR_MAX, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @strlcpy(i8* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %4, align 4
  br label %203

57:                                               ; preds = %45
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @VERS_MAJOR_MULT, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sub nsw i32 %58, %61
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* @VERS_MINOR_MULT, align 4
  %64 = load i32, i32* %10, align 4
  %65 = sdiv i32 %64, %63
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @VERS_MAJOR_MULT, align 4
  %69 = mul nsw i32 %67, %68
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @VERS_MINOR_MULT, align 4
  %72 = mul nsw i32 %70, %71
  %73 = add nsw i32 %69, %72
  %74 = sub nsw i32 %66, %73
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* @VERS_REVISION_MULT, align 4
  %76 = load i32, i32* %11, align 4
  %77 = sdiv i32 %76, %75
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @VERS_MAJOR_MULT, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @VERS_MINOR_MULT, align 4
  %84 = mul nsw i32 %82, %83
  %85 = add nsw i32 %81, %84
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @VERS_REVISION_MULT, align 4
  %88 = mul nsw i32 %86, %87
  %89 = add nsw i32 %85, %88
  %90 = sub nsw i32 %78, %89
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* @VERS_STAGE_MULT, align 4
  %92 = load i32, i32* %12, align 4
  %93 = sdiv i32 %92, %91
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @VERS_MAJOR_MULT, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @VERS_MINOR_MULT, align 4
  %100 = mul nsw i32 %98, %99
  %101 = add nsw i32 %97, %100
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @VERS_REVISION_MULT, align 4
  %104 = mul nsw i32 %102, %103
  %105 = add nsw i32 %101, %104
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @VERS_STAGE_MULT, align 4
  %108 = mul nsw i32 %106, %107
  %109 = add nsw i32 %105, %108
  %110 = sub nsw i32 %94, %109
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* @VERS_STAGE_LEVEL_MAX, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %57
  %115 = load i8*, i8** %6, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @strlcpy(i8* %115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @TRUE, align 4
  store i32 %118, i32* %4, align 4
  br label %203

119:                                              ; preds = %57
  %120 = load i8*, i8** %6, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @snprintf(i8* %120, i32 %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load i8*, i8** %6, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8 46, i8* %127, align 1
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  %130 = load i8*, i8** %6, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %8, align 4
  %136 = sub nsw i32 %134, %135
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @snprintf(i8* %133, i32 %136, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %161

143:                                              ; preds = %119
  %144 = load i8*, i8** %6, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  store i8 46, i8* %147, align 1
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %8, align 4
  %150 = load i8*, i8** %6, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %8, align 4
  %156 = sub nsw i32 %154, %155
  %157 = load i32, i32* %11, align 4
  %158 = call i32 @snprintf(i8* %153, i32 %156, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %8, align 4
  br label %161

161:                                              ; preds = %143, %119
  %162 = load i32, i32* %12, align 4
  %163 = call i8* @__OSKextVersionStringForStage(i32 %162)
  store i8* %163, i8** %14, align 8
  %164 = load i8*, i8** %14, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %171, label %166

166:                                              ; preds = %161
  %167 = load i8*, i8** %6, align 8
  %168 = load i32, i32* %7, align 4
  %169 = call i32 @strlcpy(i8* %167, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* @TRUE, align 4
  store i32 %170, i32* %4, align 4
  br label %203

171:                                              ; preds = %161
  %172 = load i8*, i8** %14, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 0
  %174 = load i8, i8* %173, align 1
  %175 = icmp ne i8 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %171
  %177 = load i8*, i8** %6, align 8
  %178 = load i8*, i8** %14, align 8
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @strlcat(i8* %177, i8* %178, i32 %179)
  %181 = load i8*, i8** %14, align 8
  %182 = call i64 @strlen(i8* %181)
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %184, %182
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %8, align 4
  br label %187

187:                                              ; preds = %176, %171
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* @kOSKextVersionStageRelease, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %201

191:                                              ; preds = %187
  %192 = load i8*, i8** %6, align 8
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* %8, align 4
  %198 = sub nsw i32 %196, %197
  %199 = load i32, i32* %13, align 4
  %200 = call i32 @snprintf(i8* %195, i32 %198, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %191, %187
  %202 = load i32, i32* @TRUE, align 4
  store i32 %202, i32* %4, align 4
  br label %203

203:                                              ; preds = %201, %166, %114, %52, %40, %32, %21
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @__OSKextVersionStringForStage(i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
