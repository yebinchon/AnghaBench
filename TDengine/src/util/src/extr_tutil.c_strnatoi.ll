; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tutil.c_strnatoi.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tutil.c_strnatoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strnatoi(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @strlen(i8* %11)
  %13 = trunc i64 %12 to i32
  %14 = icmp sgt i32 %10, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 2
  br i1 %21, label %22, label %135

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 48
  br i1 %27, label %28, label %135

28:                                               ; preds = %22
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 120
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 88
  br i1 %39, label %40, label %135

40:                                               ; preds = %34, %28
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %129, %40
  %44 = load i32, i32* %7, align 4
  %45 = icmp sge i32 %44, 2
  br i1 %45, label %46, label %134

46:                                               ; preds = %43
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sge i32 %52, 48
  br i1 %53, label %54, label %70

54:                                               ; preds = %46
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sle i32 %60, 57
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load i8*, i8** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = sub nsw i32 %68, 48
  store i32 %69, i32* %8, align 4
  br label %123

70:                                               ; preds = %54, %46
  %71 = load i8*, i8** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp sge i32 %76, 97
  br i1 %77, label %78, label %95

78:                                               ; preds = %70
  %79 = load i8*, i8** %4, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp sle i32 %84, 102
  br i1 %85, label %86, label %95

86:                                               ; preds = %78
  %87 = load i8*, i8** %4, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = sub nsw i32 %92, 97
  %94 = add nsw i32 %93, 10
  store i32 %94, i32* %8, align 4
  br label %122

95:                                               ; preds = %78, %70
  %96 = load i8*, i8** %4, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp sge i32 %101, 65
  br i1 %102, label %103, label %120

103:                                              ; preds = %95
  %104 = load i8*, i8** %4, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp sle i32 %109, 70
  br i1 %110, label %111, label %120

111:                                              ; preds = %103
  %112 = load i8*, i8** %4, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = sub nsw i32 %117, 65
  %119 = add nsw i32 %118, 10
  store i32 %119, i32* %8, align 4
  br label %121

120:                                              ; preds = %103, %95
  store i32 0, i32* %3, align 4
  br label %180

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121, %86
  br label %123

123:                                              ; preds = %122, %62
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %9, align 4
  %126 = mul nsw i32 %124, %125
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %123
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %9, align 4
  %133 = mul nsw i32 %132, 16
  store i32 %133, i32* %9, align 4
  br label %43

134:                                              ; preds = %43
  br label %178

135:                                              ; preds = %34, %22, %19
  %136 = load i32, i32* %5, align 4
  %137 = sub nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %172, %135
  %139 = load i32, i32* %7, align 4
  %140 = icmp sge i32 %139, 0
  br i1 %140, label %141, label %177

141:                                              ; preds = %138
  %142 = load i8*, i8** %4, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp sge i32 %147, 48
  br i1 %148, label %149, label %165

149:                                              ; preds = %141
  %150 = load i8*, i8** %4, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp sle i32 %155, 57
  br i1 %156, label %157, label %165

157:                                              ; preds = %149
  %158 = load i8*, i8** %4, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = sub nsw i32 %163, 48
  store i32 %164, i32* %8, align 4
  br label %166

165:                                              ; preds = %149, %141
  store i32 0, i32* %3, align 4
  br label %180

166:                                              ; preds = %157
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %9, align 4
  %169 = mul nsw i32 %167, %168
  %170 = load i32, i32* %6, align 4
  %171 = add nsw i32 %170, %169
  store i32 %171, i32* %6, align 4
  br label %172

172:                                              ; preds = %166
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %9, align 4
  %176 = mul nsw i32 %175, 10
  store i32 %176, i32* %9, align 4
  br label %138

177:                                              ; preds = %138
  br label %178

178:                                              ; preds = %177, %134
  %179 = load i32, i32* %6, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %178, %165, %120
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
