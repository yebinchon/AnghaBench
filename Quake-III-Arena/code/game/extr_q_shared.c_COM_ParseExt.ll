; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_shared.c_COM_ParseExt.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_shared.c_COM_ParseExt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qfalse = common dso_local global i64 0, align 8
@com_token = common dso_local global i8* null, align 8
@MAX_TOKEN_CHARS = common dso_local global i32 0, align 4
@com_lines = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @COM_ParseExt(i8** %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i64, i64* @qfalse, align 8
  store i64 %10, i64* %8, align 8
  %11 = load i8**, i8*** %4, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %9, align 8
  store i32 0, i32* %7, align 4
  %13 = load i8*, i8** @com_token, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 0, i8* %14, align 1
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i8**, i8*** %4, align 8
  store i8* null, i8** %18, align 8
  %19 = load i8*, i8** @com_token, align 8
  store i8* %19, i8** %3, align 8
  br label %196

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %115
  %22 = load i8*, i8** %9, align 8
  %23 = call i8* @SkipWhitespace(i8* %22, i64* %8)
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i8**, i8*** %4, align 8
  store i8* null, i8** %27, align 8
  %28 = load i8*, i8** @com_token, align 8
  store i8* %28, i8** %3, align 8
  br label %196

29:                                               ; preds = %21
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %9, align 8
  %37 = load i8**, i8*** %4, align 8
  store i8* %36, i8** %37, align 8
  %38 = load i8*, i8** @com_token, align 8
  store i8* %38, i8** %3, align 8
  br label %196

39:                                               ; preds = %32, %29
  %40 = load i8*, i8** %9, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 47
  br i1 %44, label %45, label %70

45:                                               ; preds = %39
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 47
  br i1 %50, label %51, label %70

51:                                               ; preds = %45
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  store i8* %53, i8** %9, align 8
  br label %54

54:                                               ; preds = %66, %51
  %55 = load i8*, i8** %9, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i8*, i8** %9, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 10
  br label %64

64:                                               ; preds = %59, %54
  %65 = phi i1 [ false, %54 ], [ %63, %59 ]
  br i1 %65, label %66, label %69

66:                                               ; preds = %64
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %9, align 8
  br label %54

69:                                               ; preds = %64
  br label %115

70:                                               ; preds = %45, %39
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 47
  br i1 %72, label %73, label %113

73:                                               ; preds = %70
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 42
  br i1 %78, label %79, label %113

79:                                               ; preds = %73
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  store i8* %81, i8** %9, align 8
  br label %82

82:                                               ; preds = %102, %79
  %83 = load i8*, i8** %9, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %82
  %88 = load i8*, i8** %9, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 42
  br i1 %91, label %98, label %92

92:                                               ; preds = %87
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 47
  br label %98

98:                                               ; preds = %92, %87
  %99 = phi i1 [ true, %87 ], [ %97, %92 ]
  br label %100

100:                                              ; preds = %98, %82
  %101 = phi i1 [ false, %82 ], [ %99, %98 ]
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %9, align 8
  br label %82

105:                                              ; preds = %100
  %106 = load i8*, i8** %9, align 8
  %107 = load i8, i8* %106, align 1
  %108 = icmp ne i8 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  store i8* %111, i8** %9, align 8
  br label %112

112:                                              ; preds = %109, %105
  br label %114

113:                                              ; preds = %73, %70
  br label %116

114:                                              ; preds = %112
  br label %115

115:                                              ; preds = %114, %69
  br label %21

116:                                              ; preds = %113
  %117 = load i32, i32* %6, align 4
  %118 = icmp eq i32 %117, 34
  br i1 %118, label %119, label %154

119:                                              ; preds = %116
  %120 = load i8*, i8** %9, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %9, align 8
  br label %122

122:                                              ; preds = %119, %153
  %123 = load i8*, i8** %9, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %9, align 8
  %125 = load i8, i8* %123, align 1
  %126 = sext i8 %125 to i32
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp eq i32 %127, 34
  br i1 %128, label %132, label %129

129:                                              ; preds = %122
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %129, %122
  %133 = load i8*, i8** @com_token, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  store i8 0, i8* %136, align 1
  %137 = load i8*, i8** %9, align 8
  %138 = load i8**, i8*** %4, align 8
  store i8* %137, i8** %138, align 8
  %139 = load i8*, i8** @com_token, align 8
  store i8* %139, i8** %3, align 8
  br label %196

140:                                              ; preds = %129
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %140
  %145 = load i32, i32* %6, align 4
  %146 = trunc i32 %145 to i8
  %147 = load i8*, i8** @com_token, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  store i8 %146, i8* %150, align 1
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %144, %140
  br label %122

154:                                              ; preds = %116
  br label %155

155:                                              ; preds = %180, %154
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %155
  %160 = load i32, i32* %6, align 4
  %161 = trunc i32 %160 to i8
  %162 = load i8*, i8** @com_token, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  store i8 %161, i8* %165, align 1
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %159, %155
  %169 = load i8*, i8** %9, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %9, align 8
  %171 = load i8*, i8** %9, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = icmp eq i32 %174, 10
  br i1 %175, label %176, label %179

176:                                              ; preds = %168
  %177 = load i32, i32* @com_lines, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* @com_lines, align 4
  br label %179

179:                                              ; preds = %176, %168
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %6, align 4
  %182 = icmp sgt i32 %181, 32
  br i1 %182, label %155, label %183

183:                                              ; preds = %180
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  store i32 0, i32* %7, align 4
  br label %188

188:                                              ; preds = %187, %183
  %189 = load i8*, i8** @com_token, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  store i8 0, i8* %192, align 1
  %193 = load i8*, i8** %9, align 8
  %194 = load i8**, i8*** %4, align 8
  store i8* %193, i8** %194, align 8
  %195 = load i8*, i8** @com_token, align 8
  store i8* %195, i8** %3, align 8
  br label %196

196:                                              ; preds = %188, %132, %35, %26, %17
  %197 = load i8*, i8** %3, align 8
  ret i8* %197
}

declare dso_local i8* @SkipWhitespace(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
