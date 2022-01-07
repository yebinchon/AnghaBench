; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_ff_parse_key_value.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_ff_parse_key_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_parse_key_value(i8* %0, i32 (i8*, i8*, i32, i8**, i32*)* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32 (i8*, i8*, i32, i8**, i32*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 (i8*, i8*, i32, i8**, i32*)* %1, i32 (i8*, i8*, i32, i8**, i32*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %7, align 8
  br label %14

14:                                               ; preds = %181, %3
  store i8* null, i8** %9, align 8
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %34, %14
  %16 = load i8*, i8** %7, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load i8*, i8** %7, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i64 @av_isspace(i8 signext %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 44
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i1 [ true, %20 ], [ %29, %25 ]
  br label %32

32:                                               ; preds = %30, %15
  %33 = phi i1 [ false, %15 ], [ %31, %30 ]
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %7, align 8
  br label %15

37:                                               ; preds = %32
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %182

42:                                               ; preds = %37
  %43 = load i8*, i8** %7, align 8
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i8* @strchr(i8* %44, i8 signext 61)
  store i8* %45, i8** %7, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %182

48:                                               ; preds = %42
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %7, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %11, align 4
  %57 = load i32 (i8*, i8*, i32, i8**, i32*)*, i32 (i8*, i8*, i32, i8**, i32*)** %5, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 %57(i8* %58, i8* %59, i32 %60, i8** %9, i32* %12)
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = getelementptr inbounds i8, i8* %65, i64 -1
  store i8* %66, i8** %10, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 34
  br i1 %70, label %71, label %138

71:                                               ; preds = %48
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %7, align 8
  br label %74

74:                                               ; preds = %128, %71
  %75 = load i8*, i8** %7, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i8*, i8** %7, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 34
  br label %84

84:                                               ; preds = %79, %74
  %85 = phi i1 [ false, %74 ], [ %83, %79 ]
  br i1 %85, label %86, label %129

86:                                               ; preds = %84
  %87 = load i8*, i8** %7, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 92
  br i1 %90, label %91, label %113

91:                                               ; preds = %86
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = icmp ne i8 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  br label %129

97:                                               ; preds = %91
  %98 = load i8*, i8** %9, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load i8*, i8** %9, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = icmp ult i8* %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load i8, i8* %106, align 1
  %108 = load i8*, i8** %9, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %9, align 8
  store i8 %107, i8* %108, align 1
  br label %110

110:                                              ; preds = %104, %100, %97
  %111 = load i8*, i8** %7, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 2
  store i8* %112, i8** %7, align 8
  br label %128

113:                                              ; preds = %86
  %114 = load i8*, i8** %9, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %125

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = icmp ult i8* %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load i8*, i8** %7, align 8
  %122 = load i8, i8* %121, align 1
  %123 = load i8*, i8** %9, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %9, align 8
  store i8 %122, i8* %123, align 1
  br label %125

125:                                              ; preds = %120, %116, %113
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %7, align 8
  br label %128

128:                                              ; preds = %125, %110
  br label %74

129:                                              ; preds = %96, %84
  %130 = load i8*, i8** %7, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 34
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i8*, i8** %7, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %7, align 8
  br label %137

137:                                              ; preds = %134, %129
  br label %176

138:                                              ; preds = %48
  br label %139

139:                                              ; preds = %172, %138
  %140 = load i8*, i8** %7, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %139
  %145 = load i8*, i8** %7, align 8
  %146 = load i8, i8* %145, align 1
  %147 = call i64 @av_isspace(i8 signext %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %144
  %150 = load i8*, i8** %7, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 44
  br label %154

154:                                              ; preds = %149, %144
  %155 = phi i1 [ true, %144 ], [ %153, %149 ]
  %156 = xor i1 %155, true
  br label %157

157:                                              ; preds = %154, %139
  %158 = phi i1 [ false, %139 ], [ %156, %154 ]
  br i1 %158, label %159, label %175

159:                                              ; preds = %157
  %160 = load i8*, i8** %9, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %171

162:                                              ; preds = %159
  %163 = load i8*, i8** %9, align 8
  %164 = load i8*, i8** %10, align 8
  %165 = icmp ult i8* %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = load i8*, i8** %7, align 8
  %168 = load i8, i8* %167, align 1
  %169 = load i8*, i8** %9, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %9, align 8
  store i8 %168, i8* %169, align 1
  br label %171

171:                                              ; preds = %166, %162, %159
  br label %172

172:                                              ; preds = %171
  %173 = load i8*, i8** %7, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %7, align 8
  br label %139

175:                                              ; preds = %157
  br label %176

176:                                              ; preds = %175, %137
  %177 = load i8*, i8** %9, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = load i8*, i8** %9, align 8
  store i8 0, i8* %180, align 1
  br label %181

181:                                              ; preds = %179, %176
  br label %14

182:                                              ; preds = %47, %41
  ret void
}

declare dso_local i64 @av_isspace(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
