; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_B64_Decode.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_B64_Decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @B64_Decode(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %13, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %169, %3
  %20 = load i64, i64* @TRUE, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %172

22:                                               ; preds = %19
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %172

27:                                               ; preds = %22
  store i32 1, i32* %14, align 4
  %28 = load i8*, i8** %13, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = call signext i8 @B64_CharToCode(i8 signext %32)
  store i8 %33, i8* %9, align 1
  %34 = load i8, i8* %9, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %37, %27
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  %42 = icmp sge i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i8 0, i8* %10, align 1
  br label %57

44:                                               ; preds = %38
  %45 = load i8*, i8** %13, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = call signext i8 @B64_CharToCode(i8 signext %50)
  store i8 %51, i8* %10, align 1
  store i32 1, i32* %15, align 4
  %52 = load i8, i8* %10, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  store i32 0, i32* %15, align 4
  br label %56

56:                                               ; preds = %55, %44
  br label %57

57:                                               ; preds = %56, %43
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 2
  %61 = icmp sge i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i8 0, i8* %11, align 1
  br label %76

63:                                               ; preds = %57
  %64 = load i8*, i8** %13, align 8
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = call signext i8 @B64_CharToCode(i8 signext %69)
  store i8 %70, i8* %11, align 1
  store i32 1, i32* %16, align 4
  %71 = load i8, i8* %11, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  store i32 0, i32* %16, align 4
  br label %75

75:                                               ; preds = %74, %63
  br label %76

76:                                               ; preds = %75, %62
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 3
  %80 = icmp sge i32 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i8 0, i8* %12, align 1
  br label %95

82:                                               ; preds = %76
  %83 = load i8*, i8** %13, align 8
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 3
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = call signext i8 @B64_CharToCode(i8 signext %88)
  store i8 %89, i8* %12, align 1
  store i32 1, i32* %17, align 4
  %90 = load i8, i8* %12, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  store i32 0, i32* %17, align 4
  br label %94

94:                                               ; preds = %93, %82
  br label %95

95:                                               ; preds = %94, %81
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %95
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %120

101:                                              ; preds = %98
  %102 = load i8*, i8** %4, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load i8, i8* %9, align 1
  %106 = sext i8 %105 to i32
  %107 = shl i32 %106, 2
  %108 = load i8, i8* %10, align 1
  %109 = sext i8 %108 to i32
  %110 = ashr i32 %109, 4
  %111 = add nsw i32 %107, %110
  %112 = trunc i32 %111 to i8
  %113 = load i8*, i8** %4, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  store i8 %112, i8* %116, align 1
  br label %117

117:                                              ; preds = %104, %101
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %117, %98, %95
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %145

123:                                              ; preds = %120
  %124 = load i32, i32* %16, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %145

126:                                              ; preds = %123
  %127 = load i8*, i8** %4, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %142

129:                                              ; preds = %126
  %130 = load i8, i8* %10, align 1
  %131 = sext i8 %130 to i32
  %132 = shl i32 %131, 4
  %133 = load i8, i8* %11, align 1
  %134 = sext i8 %133 to i32
  %135 = ashr i32 %134, 2
  %136 = add nsw i32 %132, %135
  %137 = trunc i32 %136 to i8
  %138 = load i8*, i8** %4, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  store i8 %137, i8* %141, align 1
  br label %142

142:                                              ; preds = %129, %126
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %145

145:                                              ; preds = %142, %123, %120
  %146 = load i32, i32* %16, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %169

148:                                              ; preds = %145
  %149 = load i32, i32* %17, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %169

151:                                              ; preds = %148
  %152 = load i8*, i8** %4, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %166

154:                                              ; preds = %151
  %155 = load i8, i8* %11, align 1
  %156 = sext i8 %155 to i32
  %157 = shl i32 %156, 6
  %158 = load i8, i8* %12, align 1
  %159 = sext i8 %158 to i32
  %160 = add nsw i32 %157, %159
  %161 = trunc i32 %160 to i8
  %162 = load i8*, i8** %4, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  store i8 %161, i8* %165, align 1
  br label %166

166:                                              ; preds = %154, %151
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %169

169:                                              ; preds = %166, %148, %145
  %170 = load i32, i32* %7, align 4
  %171 = add nsw i32 %170, 4
  store i32 %171, i32* %7, align 4
  br label %19

172:                                              ; preds = %26, %19
  %173 = load i32, i32* %8, align 4
  ret i32 %173
}

declare dso_local signext i8 @B64_CharToCode(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
