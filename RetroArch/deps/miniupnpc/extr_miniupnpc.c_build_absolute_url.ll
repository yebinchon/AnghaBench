; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_miniupnpc.c_build_absolute_url.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_miniupnpc.c_build_absolute_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"http://[fe80:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%25\00", align 1
@IF_NAMESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i32)* @build_absolute_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @build_absolute_url(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [8 x i8], align 1
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 104
  br i1 %20, label %21, label %60

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 116
  br i1 %26, label %27, label %60

27:                                               ; preds = %21
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 116
  br i1 %32, label %33, label %60

33:                                               ; preds = %27
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 3
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 112
  br i1 %38, label %39, label %60

39:                                               ; preds = %33
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 4
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 58
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 5
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 47
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 6
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 47
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i8*, i8** %8, align 8
  %59 = call i8* @strdup(i8* %58)
  store i8* %59, i8** %5, align 8
  br label %193

60:                                               ; preds = %51, %45, %39, %33, %27, %21, %4
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i8*, i8** %7, align 8
  br label %70

68:                                               ; preds = %60
  %69 = load i8*, i8** %6, align 8
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i8* [ %67, %66 ], [ %69, %68 ]
  store i8* %71, i8** %13, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = call i32 @strlen(i8* %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp sgt i32 %74, 7
  br i1 %75, label %76, label %90

76:                                               ; preds = %70
  %77 = load i8*, i8** %13, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 7
  %79 = call i8* @strchr(i8* %78, i8 signext 47)
  store i8* %79, i8** %14, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load i8*, i8** %14, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %82, %76
  br label %90

90:                                               ; preds = %89, %70
  %91 = load i32, i32* %11, align 4
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @strlen(i8* %92)
  %94 = add nsw i32 %91, %93
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  %96 = load i8*, i8** %8, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 47
  br i1 %100, label %101, label %104

101:                                              ; preds = %90
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %101, %90
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %104
  %108 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %109 = load i32, i32* %9, align 4
  %110 = call i64 @snprintf(i8* %108, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = add nsw i64 3, %110
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %107, %104
  %117 = load i32, i32* %10, align 4
  %118 = call i64 @malloc(i32 %117)
  %119 = inttoptr i64 %118 to i8*
  store i8* %119, i8** %12, align 8
  %120 = load i8*, i8** %12, align 8
  %121 = icmp eq i8* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  store i8* null, i8** %5, align 8
  br label %193

123:                                              ; preds = %116
  %124 = load i8*, i8** %12, align 8
  %125 = load i8*, i8** %13, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @memcpy(i8* %124, i8* %125, i32 %126)
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %170

130:                                              ; preds = %123
  %131 = load i8*, i8** %12, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  store i8 0, i8* %134, align 1
  %135 = load i8*, i8** %12, align 8
  %136 = call i64 @memcmp(i8* %135, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 13)
  %137 = icmp eq i64 0, %136
  br i1 %137, label %138, label %169

138:                                              ; preds = %130
  %139 = load i8*, i8** %12, align 8
  %140 = call i8* @strchr(i8* %139, i8 signext 93)
  store i8* %140, i8** %14, align 8
  %141 = load i8*, i8** %14, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %168

143:                                              ; preds = %138
  %144 = load i8*, i8** %14, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 3
  %146 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %147 = call i32 @strlen(i8* %146)
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %145, i64 %148
  %150 = load i8*, i8** %14, align 8
  %151 = load i8*, i8** %14, align 8
  %152 = call i32 @strlen(i8* %151)
  %153 = add nsw i32 %152, 1
  %154 = call i32 @memmove(i8* %149, i8* %150, i32 %153)
  %155 = load i8*, i8** %14, align 8
  %156 = call i32 @memcpy(i8* %155, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %157 = load i8*, i8** %14, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 3
  %159 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %160 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %161 = call i32 @strlen(i8* %160)
  %162 = call i32 @memcpy(i8* %158, i8* %159, i32 %161)
  %163 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %164 = call i32 @strlen(i8* %163)
  %165 = add nsw i32 3, %164
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %11, align 4
  br label %168

168:                                              ; preds = %143, %138
  br label %169

169:                                              ; preds = %168, %130
  br label %170

170:                                              ; preds = %169, %123
  %171 = load i8*, i8** %8, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp ne i32 %174, 47
  br i1 %175, label %176, label %182

176:                                              ; preds = %170
  %177 = load i8*, i8** %12, align 8
  %178 = load i32, i32* %11, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %11, align 4
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i8, i8* %177, i64 %180
  store i8 47, i8* %181, align 1
  br label %182

182:                                              ; preds = %176, %170
  %183 = load i8*, i8** %12, align 8
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = load i8*, i8** %8, align 8
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* %11, align 4
  %190 = sub nsw i32 %188, %189
  %191 = call i32 @memcpy(i8* %186, i8* %187, i32 %190)
  %192 = load i8*, i8** %12, align 8
  store i8* %192, i8** %5, align 8
  br label %193

193:                                              ; preds = %182, %122, %57
  %194 = load i8*, i8** %5, align 8
  ret i8* %194
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
