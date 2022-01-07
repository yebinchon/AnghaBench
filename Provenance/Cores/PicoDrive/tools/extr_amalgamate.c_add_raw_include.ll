; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/tools/extr_amalgamate.c_add_raw_include.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/tools/extr_amalgamate.c_add_raw_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"add_raw_include: failed sysinclude, len=%i\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"add_raw_include: already in root, can't go down: %s | %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"add_raw_include: can't happen\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"add_raw_include: failed with %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"add_raw_include: failed with %s, len=%i\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"add_raw_include: unhandled include: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @add_raw_include to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @add_raw_include(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %3, align 8
  store i8* %12, i8** %5, align 8
  br label %13

13:                                               ; preds = %26, %2
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @isspace(i8 signext %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i1 [ false, %13 ], [ %22, %18 ]
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %25
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %5, align 8
  br label %13

29:                                               ; preds = %23
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 60
  br i1 %33, label %34, label %73

34:                                               ; preds = %29
  store i32 1, i32* %8, align 4
  %35 = load i8*, i8** %5, align 8
  store i8* %35, i8** %6, align 8
  br label %36

36:                                               ; preds = %49, %34
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 62
  br label %46

46:                                               ; preds = %41, %36
  %47 = phi i1 [ false, %36 ], [ %45, %41 ]
  br i1 %47, label %48, label %54

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %48
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %36

54:                                               ; preds = %46
  %55 = load i8*, i8** %6, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %8, align 4
  %61 = icmp sgt i32 %60, 127
  br i1 %61, label %62, label %65

62:                                               ; preds = %59, %54
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @strncpy(i8* %66, i8* %67, i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %71
  store i8 0, i8* %72, align 1
  br label %200

73:                                               ; preds = %29
  %74 = load i8*, i8** %5, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 34
  br i1 %77, label %78, label %196

78:                                               ; preds = %73
  %79 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %80 = load i8*, i8** %4, align 8
  %81 = call i32 @strcpy(i8* %79, i8* %80)
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %5, align 8
  br label %84

84:                                               ; preds = %140, %78
  %85 = load i8*, i8** %5, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 46
  br i1 %88, label %89, label %141

89:                                               ; preds = %84
  %90 = load i8*, i8** %5, align 8
  %91 = call i64 @strncmp(i8* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %123

93:                                               ; preds = %89
  %94 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %95 = load i8, i8* %94, align 16
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i8*, i8** %5, align 8
  %100 = load i8*, i8** %3, align 8
  %101 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8* %99, i8* %100)
  br label %102

102:                                              ; preds = %98, %93
  %103 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %104 = call i8* @strrchr(i8* %103, i8 signext 47)
  store i8* %104, i8** %11, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = icmp eq i8* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %102
  %110 = load i8*, i8** %11, align 8
  store i8 0, i8* %110, align 1
  %111 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %112 = call i8* @strrchr(i8* %111, i8 signext 47)
  store i8* %112, i8** %11, align 8
  %113 = load i8*, i8** %11, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i8*, i8** %11, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  store i8 0, i8* %117, align 1
  br label %120

118:                                              ; preds = %109
  %119 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %119, align 16
  br label %120

120:                                              ; preds = %118, %115
  %121 = load i8*, i8** %5, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 3
  store i8* %122, i8** %5, align 8
  br label %131

123:                                              ; preds = %89
  %124 = load i8*, i8** %5, align 8
  %125 = call i64 @strncmp(i8* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i8*, i8** %5, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  store i8* %129, i8** %5, align 8
  br label %130

130:                                              ; preds = %127, %123
  br label %131

131:                                              ; preds = %130, %120
  br label %132

132:                                              ; preds = %137, %131
  %133 = load i8*, i8** %5, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 47
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i8*, i8** %5, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %5, align 8
  br label %132

140:                                              ; preds = %132
  br label %84

141:                                              ; preds = %84
  %142 = load i8*, i8** %5, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load i8*, i8** %3, align 8
  %148 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %147)
  br label %149

149:                                              ; preds = %146, %141
  %150 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %151 = call i32 @strlen(i8* %150)
  store i32 %151, i32* %10, align 4
  store i32 %151, i32* %9, align 4
  %152 = load i8*, i8** %5, align 8
  store i8* %152, i8** %6, align 8
  br label %153

153:                                              ; preds = %166, %149
  %154 = load i8*, i8** %6, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load i8*, i8** %6, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 34
  br label %163

163:                                              ; preds = %158, %153
  %164 = phi i1 [ false, %153 ], [ %162, %158 ]
  br i1 %164, label %165, label %171

165:                                              ; preds = %163
  br label %166

166:                                              ; preds = %165
  %167 = load i8*, i8** %6, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %6, align 8
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %9, align 4
  br label %153

171:                                              ; preds = %163
  %172 = load i8*, i8** %6, align 8
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %171
  %177 = load i32, i32* %9, align 4
  %178 = icmp sgt i32 %177, 127
  br i1 %178, label %179, label %183

179:                                              ; preds = %176, %171
  %180 = load i8*, i8** %3, align 8
  %181 = load i32, i32* %9, align 4
  %182 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %180, i32 %181)
  br label %183

183:                                              ; preds = %179, %176
  %184 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %185 = load i32, i32* %10, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  %188 = load i8*, i8** %5, align 8
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* %10, align 4
  %191 = sub nsw i32 %189, %190
  %192 = call i32 @strncpy(i8* %187, i8* %188, i32 %191)
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %194
  store i8 0, i8* %195, align 1
  br label %199

196:                                              ; preds = %73
  %197 = load i8*, i8** %5, align 8
  %198 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %197)
  br label %199

199:                                              ; preds = %196, %183
  br label %200

200:                                              ; preds = %199, %65
  %201 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %202 = call i8* @add_include(i8* %201)
  ret i8* %202
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @add_include(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
