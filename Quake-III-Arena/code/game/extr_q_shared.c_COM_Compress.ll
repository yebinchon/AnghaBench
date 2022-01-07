; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_shared.c_COM_Compress.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_shared.c_COM_Compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qfalse = common dso_local global i64 0, align 8
@qtrue = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @COM_Compress(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i64, i64* @qfalse, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* @qfalse, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i8*, i8** %2, align 8
  store i8* %10, i8** %4, align 8
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %174

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %172, %13
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %173

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 47
  br i1 %21, label %22, label %45

22:                                               ; preds = %19
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 47
  br i1 %27, label %28, label %45

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %41, %28
  %30 = load i8*, i8** %3, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8*, i8** %3, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 10
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i1 [ false, %29 ], [ %38, %34 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %3, align 8
  br label %29

44:                                               ; preds = %39
  br label %172

45:                                               ; preds = %22, %19
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 47
  br i1 %47, label %48, label %86

48:                                               ; preds = %45
  %49 = load i8*, i8** %3, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 42
  br i1 %53, label %54, label %86

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %75, %54
  %56 = load i8*, i8** %3, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %55
  %61 = load i8*, i8** %3, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 42
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %3, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 47
  br label %71

71:                                               ; preds = %65, %60
  %72 = phi i1 [ true, %60 ], [ %70, %65 ]
  br label %73

73:                                               ; preds = %71, %55
  %74 = phi i1 [ false, %55 ], [ %72, %71 ]
  br i1 %74, label %75, label %78

75:                                               ; preds = %73
  %76 = load i8*, i8** %3, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %3, align 8
  br label %55

78:                                               ; preds = %73
  %79 = load i8*, i8** %3, align 8
  %80 = load i8, i8* %79, align 1
  %81 = icmp ne i8 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i8*, i8** %3, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 2
  store i8* %84, i8** %3, align 8
  br label %85

85:                                               ; preds = %82, %78
  br label %171

86:                                               ; preds = %48, %45
  %87 = load i32, i32* %5, align 4
  %88 = icmp eq i32 %87, 10
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %5, align 4
  %91 = icmp eq i32 %90, 13
  br i1 %91, label %92, label %96

92:                                               ; preds = %89, %86
  %93 = load i64, i64* @qtrue, align 8
  store i64 %93, i64* %6, align 8
  %94 = load i8*, i8** %3, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %3, align 8
  br label %170

96:                                               ; preds = %89
  %97 = load i32, i32* %5, align 4
  %98 = icmp eq i32 %97, 32
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %5, align 4
  %101 = icmp eq i32 %100, 9
  br i1 %101, label %102, label %106

102:                                              ; preds = %99, %96
  %103 = load i64, i64* @qtrue, align 8
  store i64 %103, i64* %7, align 8
  %104 = load i8*, i8** %3, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %3, align 8
  br label %169

106:                                              ; preds = %99
  %107 = load i64, i64* %6, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i8*, i8** %4, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %4, align 8
  store i8 10, i8* %110, align 1
  %112 = load i64, i64* @qfalse, align 8
  store i64 %112, i64* %6, align 8
  %113 = load i64, i64* @qfalse, align 8
  store i64 %113, i64* %7, align 8
  br label %114

114:                                              ; preds = %109, %106
  %115 = load i64, i64* %7, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i8*, i8** %4, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %4, align 8
  store i8 32, i8* %118, align 1
  %120 = load i64, i64* @qfalse, align 8
  store i64 %120, i64* %7, align 8
  br label %121

121:                                              ; preds = %117, %114
  %122 = load i32, i32* %5, align 4
  %123 = icmp eq i32 %122, 34
  br i1 %123, label %124, label %160

124:                                              ; preds = %121
  %125 = load i32, i32* %5, align 4
  %126 = trunc i32 %125 to i8
  %127 = load i8*, i8** %4, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %4, align 8
  store i8 %126, i8* %127, align 1
  %129 = load i8*, i8** %3, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %3, align 8
  br label %131

131:                                              ; preds = %124, %148
  %132 = load i8*, i8** %3, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %131
  %138 = load i32, i32* %5, align 4
  %139 = icmp ne i32 %138, 34
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = load i32, i32* %5, align 4
  %142 = trunc i32 %141 to i8
  %143 = load i8*, i8** %4, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %4, align 8
  store i8 %142, i8* %143, align 1
  %145 = load i8*, i8** %3, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %3, align 8
  br label %148

147:                                              ; preds = %137, %131
  br label %149

148:                                              ; preds = %140
  br label %131

149:                                              ; preds = %147
  %150 = load i32, i32* %5, align 4
  %151 = icmp eq i32 %150, 34
  br i1 %151, label %152, label %159

152:                                              ; preds = %149
  %153 = load i32, i32* %5, align 4
  %154 = trunc i32 %153 to i8
  %155 = load i8*, i8** %4, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %4, align 8
  store i8 %154, i8* %155, align 1
  %157 = load i8*, i8** %3, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %3, align 8
  br label %159

159:                                              ; preds = %152, %149
  br label %168

160:                                              ; preds = %121
  %161 = load i32, i32* %5, align 4
  %162 = trunc i32 %161 to i8
  %163 = load i8*, i8** %4, align 8
  store i8 %162, i8* %163, align 1
  %164 = load i8*, i8** %4, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %4, align 8
  %166 = load i8*, i8** %3, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %3, align 8
  br label %168

168:                                              ; preds = %160, %159
  br label %169

169:                                              ; preds = %168, %102
  br label %170

170:                                              ; preds = %169, %92
  br label %171

171:                                              ; preds = %170, %85
  br label %172

172:                                              ; preds = %171, %44
  br label %14

173:                                              ; preds = %14
  br label %174

174:                                              ; preds = %173, %1
  %175 = load i8*, i8** %4, align 8
  store i8 0, i8* %175, align 1
  %176 = load i8*, i8** %4, align 8
  %177 = load i8*, i8** %2, align 8
  %178 = ptrtoint i8* %176 to i64
  %179 = ptrtoint i8* %177 to i64
  %180 = sub i64 %178, %179
  %181 = trunc i64 %180 to i32
  ret i32 %181
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
