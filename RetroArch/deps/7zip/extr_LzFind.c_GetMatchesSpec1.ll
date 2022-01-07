; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzFind.c_GetMatchesSpec1.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzFind.c_GetMatchesSpec1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kEmptyHashValue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetMatchesSpec1(i32 %0, i32 %1, i32 %2, i8* %3, i32* %4, i32 %5, i32 %6, i32 %7, i32* %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32* %8, i32** %20, align 8
  store i32 %9, i32* %21, align 4
  %30 = load i32*, i32** %16, align 8
  %31 = load i32, i32* %17, align 4
  %32 = shl i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32* %35, i32** %22, align 8
  %36 = load i32*, i32** %16, align 8
  %37 = load i32, i32* %17, align 4
  %38 = shl i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  store i32* %40, i32** %23, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %41

41:                                               ; preds = %199, %10
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %13, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %26, align 4
  %45 = load i32, i32* %19, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %19, align 4
  %47 = icmp eq i32 %45, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %26, align 4
  %50 = load i32, i32* %18, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48, %41
  %53 = load i32, i32* @kEmptyHashValue, align 4
  %54 = load i32*, i32** %23, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %22, align 8
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** %20, align 8
  store i32* %56, i32** %11, align 8
  br label %200

57:                                               ; preds = %48
  %58 = load i32*, i32** %16, align 8
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %26, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load i32, i32* %26, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %18, align 4
  br label %68

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ 0, %67 ]
  %70 = add nsw i32 %61, %69
  %71 = shl i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %58, i64 %72
  store i32* %73, i32** %27, align 8
  %74 = load i8*, i8** %15, align 8
  %75 = load i32, i32* %26, align 4
  %76 = sext i32 %75 to i64
  %77 = sub i64 0, %76
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  store i8* %78, i8** %28, align 8
  %79 = load i32, i32* %24, align 4
  %80 = load i32, i32* %25, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %68
  %83 = load i32, i32* %24, align 4
  br label %86

84:                                               ; preds = %68
  %85 = load i32, i32* %25, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  store i32 %87, i32* %29, align 4
  %88 = load i8*, i8** %28, align 8
  %89 = load i32, i32* %29, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8*, i8** %15, align 8
  %95 = load i32, i32* %29, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp eq i32 %93, %99
  br i1 %100, label %101, label %170

101:                                              ; preds = %86
  %102 = load i32, i32* %29, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %29, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %143

106:                                              ; preds = %101
  %107 = load i8*, i8** %28, align 8
  %108 = load i32, i32* %29, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8*, i8** %15, align 8
  %114 = load i32, i32* %29, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp eq i32 %112, %118
  br i1 %119, label %120, label %143

120:                                              ; preds = %106
  br label %121

121:                                              ; preds = %141, %120
  %122 = load i32, i32* %29, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %29, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %142

126:                                              ; preds = %121
  %127 = load i8*, i8** %28, align 8
  %128 = load i32, i32* %29, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = load i8*, i8** %15, align 8
  %134 = load i32, i32* %29, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = icmp ne i32 %132, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %126
  br label %142

141:                                              ; preds = %126
  br label %121

142:                                              ; preds = %140, %121
  br label %143

143:                                              ; preds = %142, %106, %101
  %144 = load i32, i32* %21, align 4
  %145 = load i32, i32* %29, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %169

147:                                              ; preds = %143
  %148 = load i32, i32* %29, align 4
  store i32 %148, i32* %21, align 4
  %149 = load i32*, i32** %20, align 8
  %150 = getelementptr inbounds i32, i32* %149, i32 1
  store i32* %150, i32** %20, align 8
  store i32 %148, i32* %149, align 4
  %151 = load i32, i32* %26, align 4
  %152 = sub nsw i32 %151, 1
  %153 = load i32*, i32** %20, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %20, align 8
  store i32 %152, i32* %153, align 4
  %155 = load i32, i32* %29, align 4
  %156 = load i32, i32* %12, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %168

158:                                              ; preds = %147
  %159 = load i32*, i32** %27, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %23, align 8
  store i32 %161, i32* %162, align 4
  %163 = load i32*, i32** %27, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %22, align 8
  store i32 %165, i32* %166, align 4
  %167 = load i32*, i32** %20, align 8
  store i32* %167, i32** %11, align 8
  br label %200

168:                                              ; preds = %147
  br label %169

169:                                              ; preds = %168, %143
  br label %170

170:                                              ; preds = %169, %86
  %171 = load i8*, i8** %28, align 8
  %172 = load i32, i32* %29, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = load i8*, i8** %15, align 8
  %178 = load i32, i32* %29, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = icmp slt i32 %176, %182
  br i1 %183, label %184, label %192

184:                                              ; preds = %170
  %185 = load i32, i32* %13, align 4
  %186 = load i32*, i32** %23, align 8
  store i32 %185, i32* %186, align 4
  %187 = load i32*, i32** %27, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  store i32* %188, i32** %23, align 8
  %189 = load i32*, i32** %23, align 8
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %13, align 4
  %191 = load i32, i32* %29, align 4
  store i32 %191, i32* %25, align 4
  br label %199

192:                                              ; preds = %170
  %193 = load i32, i32* %13, align 4
  %194 = load i32*, i32** %22, align 8
  store i32 %193, i32* %194, align 4
  %195 = load i32*, i32** %27, align 8
  store i32* %195, i32** %22, align 8
  %196 = load i32*, i32** %22, align 8
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %13, align 4
  %198 = load i32, i32* %29, align 4
  store i32 %198, i32* %24, align 4
  br label %199

199:                                              ; preds = %192, %184
  br label %41

200:                                              ; preds = %158, %52
  %201 = load i32*, i32** %11, align 8
  ret i32* %201
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
