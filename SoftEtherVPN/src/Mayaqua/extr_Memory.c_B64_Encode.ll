; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_B64_Encode.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_B64_Encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @B64_Encode(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %176

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %171, %16
  %18 = load i64, i64* @TRUE, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %176

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %176

26:                                               ; preds = %20
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 2
  %36 = call signext i8 @B64_CodeToChar(i32 %35)
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 %36, i8* %40, align 1
  br label %41

41:                                               ; preds = %29, %26
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* %7, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %41
  %47 = load i8*, i8** %5, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %73

49:                                               ; preds = %46
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 3
  %56 = shl i32 %55, 4
  %57 = call signext i8 @B64_CodeToChar(i32 %56)
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  store i8 %57, i8* %62, align 1
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  store i8 61, i8* %67, align 1
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 3
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  store i8 61, i8* %72, align 1
  br label %73

73:                                               ; preds = %49, %46
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 4
  store i32 %75, i32* %4, align 4
  br label %176

76:                                               ; preds = %41
  %77 = load i8*, i8** %5, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %101

79:                                               ; preds = %76
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 3
  %86 = shl i32 %85, 4
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = ashr i32 %92, 4
  %94 = add nsw i32 %86, %93
  %95 = call signext i8 @B64_CodeToChar(i32 %94)
  %96 = load i8*, i8** %5, align 8
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %96, i64 %99
  store i8 %95, i8* %100, align 1
  br label %101

101:                                              ; preds = %79, %76
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 2
  %104 = load i32, i32* %7, align 4
  %105 = icmp sge i32 %103, %104
  br i1 %105, label %106, label %132

106:                                              ; preds = %101
  %107 = load i8*, i8** %5, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %129

109:                                              ; preds = %106
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 15
  %117 = shl i32 %116, 2
  %118 = call signext i8 @B64_CodeToChar(i32 %117)
  %119 = load i8*, i8** %5, align 8
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 2
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  store i8 %118, i8* %123, align 1
  %124 = load i8*, i8** %5, align 8
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 3
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  store i8 61, i8* %128, align 1
  br label %129

129:                                              ; preds = %109, %106
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 4
  store i32 %131, i32* %4, align 4
  br label %176

132:                                              ; preds = %101
  %133 = load i8*, i8** %5, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %171

135:                                              ; preds = %132
  %136 = load i32*, i32** %8, align 8
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, 15
  %143 = shl i32 %142, 2
  %144 = load i32*, i32** %8, align 8
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 2
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = ashr i32 %149, 6
  %151 = add nsw i32 %143, %150
  %152 = call signext i8 @B64_CodeToChar(i32 %151)
  %153 = load i8*, i8** %5, align 8
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 2
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %153, i64 %156
  store i8 %152, i8* %157, align 1
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 2
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, 63
  %165 = call signext i8 @B64_CodeToChar(i32 %164)
  %166 = load i8*, i8** %5, align 8
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 3
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %166, i64 %169
  store i8 %165, i8* %170, align 1
  br label %171

171:                                              ; preds = %135, %132
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, 3
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, 4
  store i32 %175, i32* %10, align 4
  br label %17

176:                                              ; preds = %15, %24, %73, %129, %17
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local signext i8 @B64_CodeToChar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
