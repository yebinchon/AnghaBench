; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_status.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONTROL_BUFFER_SIZE = common dso_local global i32 0, align 4
@AV_BPRINT_SIZE_AUTOMATIC = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32*)* @ftp_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_status(i32* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = load i8**, i8*** %6, align 8
  %23 = icmp ne i8** %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @AV_BPRINT_SIZE_AUTOMATIC, align 4
  %26 = call i32 @av_bprint_init(i32* %16, i32 0, i32 %25)
  br label %27

27:                                               ; preds = %24, %3
  br label %28

28:                                               ; preds = %155, %27
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i1 [ true, %28 ], [ %33, %31 ]
  br i1 %35, label %36, label %156

36:                                               ; preds = %34
  %37 = load i32*, i32** %5, align 8
  %38 = trunc i64 %19 to i32
  %39 = call i32 @ftp_get_line(i32* %37, i8* %21, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i8**, i8*** %6, align 8
  %43 = icmp ne i8** %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 @av_bprint_finalize(i32* %16, i8** null)
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %164

48:                                               ; preds = %36
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @AV_LOG_DEBUG, align 4
  %51 = call i32 @av_log(i32* %49, i32 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %21)
  %52 = call i32 @strlen(i8* %21)
  store i32 %52, i32* %13, align 4
  store i32 0, i32* %8, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp sge i32 %53, 3
  br i1 %54, label %55, label %89

55:                                               ; preds = %48
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %85, %55
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 3
  br i1 %58, label %59, label %88

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %21, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp slt i32 %64, 48
  br i1 %65, label %73, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %21, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp sgt i32 %71, 57
  br i1 %72, label %73, label %74

73:                                               ; preds = %66, %59
  store i32 0, i32* %8, align 4
  br label %88

74:                                               ; preds = %66
  %75 = load i32, i32* %8, align 4
  %76 = mul nsw i32 %75, 10
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %21, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = sub nsw i32 %81, 48
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %74
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %56

88:                                               ; preds = %73, %56
  br label %89

89:                                               ; preds = %88, %48
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %121, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %8, align 4
  %94 = icmp sge i32 %93, 500
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  store i32 1, i32* %12, align 4
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %11, align 4
  br label %120

97:                                               ; preds = %92
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %116, %97
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %98
  %106 = load i32, i32* %8, align 4
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %106, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  store i32 1, i32* %12, align 4
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %11, align 4
  br label %119

115:                                              ; preds = %105
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %98

119:                                              ; preds = %113, %98
  br label %120

120:                                              ; preds = %119, %95
  br label %121

121:                                              ; preds = %120, %89
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %155

124:                                              ; preds = %121
  %125 = load i8**, i8*** %6, align 8
  %126 = icmp ne i8** %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = call i32 @av_bprintf(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %129

129:                                              ; preds = %127, %124
  %130 = load i32, i32* %13, align 4
  %131 = icmp sge i32 %130, 4
  br i1 %131, label %132, label %154

132:                                              ; preds = %129
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds i8, i8* %21, i64 3
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 45
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %10, align 4
  br label %153

142:                                              ; preds = %135, %132
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %142
  %147 = getelementptr inbounds i8, i8* %21, i64 3
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 32
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  store i32 0, i32* %10, align 4
  br label %152

152:                                              ; preds = %151, %146, %142
  br label %153

153:                                              ; preds = %152, %140
  br label %154

154:                                              ; preds = %153, %129
  br label %155

155:                                              ; preds = %154, %121
  br label %28

156:                                              ; preds = %34
  %157 = load i8**, i8*** %6, align 8
  %158 = icmp ne i8** %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i8**, i8*** %6, align 8
  %161 = call i32 @av_bprint_finalize(i32* %16, i8** %160)
  br label %162

162:                                              ; preds = %159, %156
  %163 = load i32, i32* %11, align 4
  store i32 %163, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %164

164:                                              ; preds = %162, %46
  %165 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %165)
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @av_bprint_init(i32*, i32, i32) #2

declare dso_local i32 @ftp_get_line(i32*, i8*, i32) #2

declare dso_local i32 @av_bprint_finalize(i32*, i8**) #2

declare dso_local i32 @av_log(i32*, i32, i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @av_bprintf(i32*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
