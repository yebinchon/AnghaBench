; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_hexdump.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_hexdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"++++ %s ++++\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"++++++++++++\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"    %-50s%20s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%02x  \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hb_hexdump(i32 %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [80 x i8], align 16
  %11 = alloca [19 x i8], align 16
  %12 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = getelementptr inbounds [19 x i8], [19 x i8]* %11, i64 0, i64 18
  store i8 0, i8* %13, align 2
  %14 = getelementptr inbounds [19 x i8], [19 x i8]* %11, i64 0, i64 0
  store i8 124, i8* %14, align 16
  %15 = getelementptr inbounds [19 x i8], [19 x i8]* %11, i64 0, i64 17
  store i8 124, i8* %15, align 1
  %16 = getelementptr inbounds [19 x i8], [19 x i8]* %11, i64 0, i64 1
  %17 = call i32 @memset(i8* %16, i8 signext 46, i32 16)
  %18 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  store i8* %18, i8** %12, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* %5, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i32, i8*, ...) @hb_deep_log(i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %28

25:                                               ; preds = %4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 (i32, i8*, ...) @hb_deep_log(i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %21
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %109, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %112

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 15
  %36 = icmp eq i32 %35, 15
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load i8*, i8** %12, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i8*, i8** %12, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %12, align 8
  %48 = load i32, i32* %5, align 4
  %49 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %50 = getelementptr inbounds [19 x i8], [19 x i8]* %11, i64 0, i64 0
  %51 = call i32 (i32, i8*, ...) @hb_deep_log(i32 %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %49, i8* %50)
  %52 = getelementptr inbounds [19 x i8], [19 x i8]* %11, i64 0, i64 1
  %53 = call i32 @memset(i8* %52, i8 signext 46, i32 16)
  %54 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  store i8* %54, i8** %12, align 8
  br label %82

55:                                               ; preds = %33
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, 7
  %58 = icmp eq i32 %57, 7
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load i8*, i8** %12, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @sprintf(i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  %67 = load i8*, i8** %12, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %12, align 8
  br label %81

70:                                               ; preds = %55
  %71 = load i8*, i8** %12, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @sprintf(i8* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %76)
  %78 = load i8*, i8** %12, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %12, align 8
  br label %81

81:                                               ; preds = %70, %59
  br label %82

82:                                               ; preds = %81, %37
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @isgraph(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %82
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = trunc i32 %95 to i8
  %97 = load i32, i32* %9, align 4
  %98 = and i32 %97, 15
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [19 x i8], [19 x i8]* %11, i64 0, i64 %100
  store i8 %96, i8* %101, align 1
  br label %108

102:                                              ; preds = %82
  %103 = load i32, i32* %9, align 4
  %104 = and i32 %103, 15
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [19 x i8], [19 x i8]* %11, i64 0, i64 %106
  store i8 46, i8* %107, align 1
  br label %108

108:                                              ; preds = %102, %90
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %29

112:                                              ; preds = %29
  %113 = load i8*, i8** %12, align 8
  %114 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %115 = icmp ne i8* %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load i32, i32* %5, align 4
  %118 = getelementptr inbounds [80 x i8], [80 x i8]* %10, i64 0, i64 0
  %119 = getelementptr inbounds [19 x i8], [19 x i8]* %11, i64 0, i64 0
  %120 = call i32 (i32, i8*, ...) @hb_deep_log(i32 %117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %118, i8* %119)
  br label %121

121:                                              ; preds = %116, %112
  ret void
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @hb_deep_log(i32, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @isgraph(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
