; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/extr_mkext.c_decompress_lzss.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/extr_mkext.c_decompress_lzss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@N = common dso_local global i32 0, align 4
@F = common dso_local global i32 0, align 4
@THRESHOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decompress_lzss(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load i32, i32* @N, align 4
  %21 = load i32, i32* @F, align 4
  %22 = add nsw i32 %20, %21
  %23 = sub nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %9, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  %27 = load i32*, i32** %5, align 8
  store i32* %27, i32** %11, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32* %31, i32** %12, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32* %35, i32** %13, align 8
  %36 = load i32*, i32** %11, align 8
  store i32* %36, i32** %5, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32* %40, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %51, %4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @N, align 4
  %44 = load i32, i32* @F, align 4
  %45 = sub nsw i32 %43, %44
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %26, i64 %49
  store i32 32, i32* %50, align 4
  br label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %14, align 4
  br label %41

54:                                               ; preds = %41
  %55 = load i32, i32* @N, align 4
  %56 = load i32, i32* @F, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %58

58:                                               ; preds = %169, %54
  %59 = load i32, i32* %19, align 4
  %60 = lshr i32 %59, 1
  store i32 %60, i32* %19, align 4
  %61 = and i32 %60, 256
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load i32*, i32** %7, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = icmp ult i32* %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %7, align 8
  %70 = load i32, i32* %68, align 4
  store i32 %70, i32* %18, align 4
  br label %72

71:                                               ; preds = %63
  br label %170

72:                                               ; preds = %67
  %73 = load i32, i32* %18, align 4
  %74 = or i32 %73, 65280
  store i32 %74, i32* %19, align 4
  br label %75

75:                                               ; preds = %72, %58
  %76 = load i32, i32* %19, align 4
  %77 = and i32 %76, 1
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %106

79:                                               ; preds = %75
  %80 = load i32*, i32** %7, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = icmp ult i32* %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %7, align 8
  %86 = load i32, i32* %84, align 4
  store i32 %86, i32* %18, align 4
  br label %88

87:                                               ; preds = %79
  br label %170

88:                                               ; preds = %83
  %89 = load i32, i32* %18, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %5, align 8
  store i32 %89, i32* %90, align 4
  %92 = load i32*, i32** %5, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = icmp uge i32* %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %171

96:                                               ; preds = %88
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %17, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %17, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %26, i64 %100
  store i32 %97, i32* %101, align 4
  %102 = load i32, i32* @N, align 4
  %103 = sub nsw i32 %102, 1
  %104 = load i32, i32* %17, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %17, align 4
  br label %169

106:                                              ; preds = %75
  %107 = load i32*, i32** %7, align 8
  %108 = load i32*, i32** %13, align 8
  %109 = icmp ult i32* %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i32*, i32** %7, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %7, align 8
  %113 = load i32, i32* %111, align 4
  store i32 %113, i32* %14, align 4
  br label %115

114:                                              ; preds = %106
  br label %170

115:                                              ; preds = %110
  %116 = load i32*, i32** %7, align 8
  %117 = load i32*, i32** %13, align 8
  %118 = icmp ult i32* %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i32*, i32** %7, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %7, align 8
  %122 = load i32, i32* %120, align 4
  store i32 %122, i32* %15, align 4
  br label %124

123:                                              ; preds = %115
  br label %170

124:                                              ; preds = %119
  %125 = load i32, i32* %15, align 4
  %126 = and i32 %125, 240
  %127 = shl i32 %126, 4
  %128 = load i32, i32* %14, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %15, align 4
  %131 = and i32 %130, 15
  %132 = load i32, i32* @THRESHOLD, align 4
  %133 = add nsw i32 %131, %132
  store i32 %133, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %134

134:                                              ; preds = %165, %124
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %15, align 4
  %137 = icmp sle i32 %135, %136
  br i1 %137, label %138, label %168

138:                                              ; preds = %134
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %16, align 4
  %141 = add nsw i32 %139, %140
  %142 = load i32, i32* @N, align 4
  %143 = sub nsw i32 %142, 1
  %144 = and i32 %141, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %26, i64 %145
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %18, align 4
  %148 = load i32, i32* %18, align 4
  %149 = load i32*, i32** %5, align 8
  %150 = getelementptr inbounds i32, i32* %149, i32 1
  store i32* %150, i32** %5, align 8
  store i32 %148, i32* %149, align 4
  %151 = load i32*, i32** %5, align 8
  %152 = load i32*, i32** %12, align 8
  %153 = icmp uge i32* %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %138
  br label %171

155:                                              ; preds = %138
  %156 = load i32, i32* %18, align 4
  %157 = load i32, i32* %17, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %17, align 4
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i32, i32* %26, i64 %159
  store i32 %156, i32* %160, align 4
  %161 = load i32, i32* @N, align 4
  %162 = sub nsw i32 %161, 1
  %163 = load i32, i32* %17, align 4
  %164 = and i32 %163, %162
  store i32 %164, i32* %17, align 4
  br label %165

165:                                              ; preds = %155
  %166 = load i32, i32* %16, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %16, align 4
  br label %134

168:                                              ; preds = %134
  br label %169

169:                                              ; preds = %168, %96
  br label %58

170:                                              ; preds = %123, %114, %87, %71
  br label %171

171:                                              ; preds = %170, %154, %95
  %172 = load i32*, i32** %5, align 8
  %173 = load i32*, i32** %11, align 8
  %174 = ptrtoint i32* %172 to i64
  %175 = ptrtoint i32* %173 to i64
  %176 = sub i64 %174, %175
  %177 = sdiv exact i64 %176, 4
  %178 = trunc i64 %177 to i32
  %179 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %179)
  ret i32 %178
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
