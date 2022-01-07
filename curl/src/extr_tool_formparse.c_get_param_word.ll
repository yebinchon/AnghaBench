; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_formparse.c_get_param_word.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_formparse.c_get_param_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**, i8**, i8)* @get_param_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_param_word(i8** %0, i8** %1, i8 signext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8 %2, i8* %7, align 1
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %9, align 8
  store i8* null, i8** %11, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 34
  br i1 %18, label %19, label %131

19:                                               ; preds = %3
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %8, align 8
  br label %22

22:                                               ; preds = %126, %48, %19
  %23 = load i8*, i8** %8, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %129

26:                                               ; preds = %22
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 92
  br i1 %30, label %31, label %52

31:                                               ; preds = %26
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 92
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 34
  br i1 %42, label %43, label %51

43:                                               ; preds = %37, %31
  %44 = load i8*, i8** %11, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = load i8*, i8** %8, align 8
  store i8* %47, i8** %11, align 8
  br label %48

48:                                               ; preds = %46, %43
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  store i8* %50, i8** %8, align 8
  br label %22

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %26
  %53 = load i8*, i8** %8, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 34
  br i1 %56, label %57, label %126

57:                                               ; preds = %52
  %58 = load i8*, i8** %8, align 8
  %59 = load i8**, i8*** %6, align 8
  store i8* %58, i8** %59, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %98

62:                                               ; preds = %57
  %63 = load i8*, i8** %11, align 8
  store i8* %63, i8** %10, align 8
  store i8* %63, i8** %8, align 8
  br label %64

64:                                               ; preds = %90, %62
  %65 = load i8*, i8** %8, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 92
  br i1 %68, label %69, label %84

69:                                               ; preds = %64
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 92
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 34
  br i1 %80, label %81, label %84

81:                                               ; preds = %75, %69
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %8, align 8
  br label %84

84:                                               ; preds = %81, %75, %64
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %8, align 8
  %87 = load i8, i8* %85, align 1
  %88 = load i8*, i8** %10, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %10, align 8
  store i8 %87, i8* %88, align 1
  br label %90

90:                                               ; preds = %84
  %91 = load i8*, i8** %8, align 8
  %92 = load i8**, i8*** %6, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ult i8* %91, %93
  br i1 %94, label %64, label %95

95:                                               ; preds = %90
  %96 = load i8*, i8** %10, align 8
  %97 = load i8**, i8*** %6, align 8
  store i8* %96, i8** %97, align 8
  br label %98

98:                                               ; preds = %95, %57
  br label %99

99:                                               ; preds = %118, %98
  %100 = load i8*, i8** %8, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %99
  %105 = load i8*, i8** %8, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 59
  br i1 %108, label %109, label %116

109:                                              ; preds = %104
  %110 = load i8*, i8** %8, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = load i8, i8* %7, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %112, %114
  br label %116

116:                                              ; preds = %109, %104, %99
  %117 = phi i1 [ false, %104 ], [ false, %99 ], [ %115, %109 ]
  br i1 %117, label %118, label %121

118:                                              ; preds = %116
  %119 = load i8*, i8** %8, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %8, align 8
  br label %99

121:                                              ; preds = %116
  %122 = load i8*, i8** %8, align 8
  %123 = load i8**, i8*** %5, align 8
  store i8* %122, i8** %123, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  store i8* %125, i8** %4, align 8
  br label %159

126:                                              ; preds = %52
  %127 = load i8*, i8** %8, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %8, align 8
  br label %22

129:                                              ; preds = %22
  %130 = load i8*, i8** %9, align 8
  store i8* %130, i8** %8, align 8
  br label %131

131:                                              ; preds = %129, %3
  br label %132

132:                                              ; preds = %151, %131
  %133 = load i8*, i8** %8, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %132
  %138 = load i8*, i8** %8, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 59
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = load i8*, i8** %8, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = load i8, i8* %7, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp ne i32 %145, %147
  br label %149

149:                                              ; preds = %142, %137, %132
  %150 = phi i1 [ false, %137 ], [ false, %132 ], [ %148, %142 ]
  br i1 %150, label %151, label %154

151:                                              ; preds = %149
  %152 = load i8*, i8** %8, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %8, align 8
  br label %132

154:                                              ; preds = %149
  %155 = load i8*, i8** %8, align 8
  %156 = load i8**, i8*** %6, align 8
  store i8* %155, i8** %156, align 8
  %157 = load i8**, i8*** %5, align 8
  store i8* %155, i8** %157, align 8
  %158 = load i8*, i8** %9, align 8
  store i8* %158, i8** %4, align 8
  br label %159

159:                                              ; preds = %154, %121
  %160 = load i8*, i8** %4, align 8
  ret i8* %160
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
