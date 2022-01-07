; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/tools/extr_gcda.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/tools/extr_gcda.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"rb+\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"can't handle: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %172

18:                                               ; preds = %2
  %19 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %20 = call i32 @getcwd(i8* %19, i32 4096)
  %21 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %22 = call i32 @strlen(i8* %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 47
  br i1 %29, label %30, label %38

30:                                               ; preds = %18
  %31 = load i32, i32* %14, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %14, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 %33
  store i8 47, i8* %34, align 1
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 %36
  store i8 0, i8* %37, align 1
  br label %38

38:                                               ; preds = %30, %18
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32* @fopen(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 2, i32* %3, align 4
  br label %172

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %168
  br label %48

48:                                               ; preds = %145, %98, %71, %47
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @fread(i8* %49, i32 1, i32 1024, i32* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp sle i32 %52, 16
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %169

55:                                               ; preds = %48
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %139, %129, %55
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %168

60:                                               ; preds = %56
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = sub nsw i32 %65, %66
  %68 = call i32 @search_gcda(i8* %64, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %60
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* @SEEK_CUR, align 4
  %74 = call i32 @fseek(i32* %72, i32 -6, i32 %73)
  br label %48

75:                                               ; preds = %60
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %92, %75
  %80 = load i32, i32* %11, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load i32, i32* %11, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = call i64 @is_good_char(i8 signext %87)
  %89 = icmp ne i64 %88, 0
  br label %90

90:                                               ; preds = %82, %79
  %91 = phi i1 [ false, %79 ], [ %89, %82 ]
  br i1 %91, label %92, label %95

92:                                               ; preds = %90
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %11, align 4
  br label %79

95:                                               ; preds = %90
  %96 = load i32, i32* %11, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* @SEEK_CUR, align 4
  %101 = call i32 @fseek(i32* %99, i32 -1040, i32 %100)
  br label %48

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %116, %102
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 47
  br label %114

114:                                              ; preds = %107, %103
  %115 = phi i1 [ false, %103 ], [ %113, %107 ]
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %103

119:                                              ; preds = %114
  %120 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  store i8* %123, i8** %7, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = call i32 @strlen(i8* %124)
  store i32 %125, i32* %13, align 4
  %126 = load i8*, i8** %7, align 8
  %127 = call i32 @is_good_path(i8* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %119
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %11, align 4
  br label %56

133:                                              ; preds = %119
  %134 = load i8*, i8** %7, align 8
  %135 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %136 = load i32, i32* %14, align 4
  %137 = call i64 @strncmp(i8* %134, i8* %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = load i8*, i8** %7, align 8
  %141 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %140)
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %11, align 4
  br label %56

145:                                              ; preds = %133
  %146 = load i8*, i8** %7, align 8
  %147 = load i8*, i8** %7, align 8
  %148 = load i32, i32* %14, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %14, align 4
  %153 = sub nsw i32 %151, %152
  %154 = add nsw i32 %153, 1
  %155 = call i32 @memmove(i8* %146, i8* %150, i32 %154)
  %156 = load i32*, i32** %9, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = sub i64 1024, %158
  %160 = sub i64 0, %159
  %161 = trunc i64 %160 to i32
  %162 = load i32, i32* @SEEK_CUR, align 4
  %163 = call i32 @fseek(i32* %156, i32 %161, i32 %162)
  %164 = load i8*, i8** %7, align 8
  %165 = load i32, i32* %13, align 4
  %166 = load i32*, i32** %9, align 8
  %167 = call i32 @fwrite(i8* %164, i32 1, i32 %165, i32* %166)
  br label %48

168:                                              ; preds = %56
  br label %47

169:                                              ; preds = %54
  %170 = load i32*, i32** %9, align 8
  %171 = call i32 @fclose(i32* %170)
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %169, %45, %17
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @getcwd(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @search_gcda(i8*, i32) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @is_good_char(i8 signext) #1

declare dso_local i32 @is_good_path(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
