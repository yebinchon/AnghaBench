; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_fits.c_read_keyword_value.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_fits.c_read_keyword_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @read_keyword_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_keyword_value(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %31, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 32
  br label %19

19:                                               ; preds = %11, %8
  %20 = phi i1 [ false, %8 ], [ %18, %11 ]
  br i1 %20, label %21, label %34

21:                                               ; preds = %19
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8 %26, i8* %30, align 1
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %8

34:                                               ; preds = %19
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 61
  br i1 %43, label %44, label %184

44:                                               ; preds = %34
  store i32 10, i32* %7, align 4
  br label %45

45:                                               ; preds = %58, %44
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 80
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 32
  br label %56

56:                                               ; preds = %48, %45
  %57 = phi i1 [ false, %45 ], [ %55, %48 ]
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %45

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 80
  br i1 %63, label %64, label %183

64:                                               ; preds = %61
  %65 = load i8*, i8** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %6, align 8
  store i8 %69, i8* %70, align 1
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 39
  br i1 %81, label %82, label %110

82:                                               ; preds = %64
  br label %83

83:                                               ; preds = %104, %82
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 80
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load i8*, i8** %4, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 39
  br label %94

94:                                               ; preds = %86, %83
  %95 = phi i1 [ false, %83 ], [ %93, %86 ]
  br i1 %95, label %96, label %107

96:                                               ; preds = %94
  %97 = load i8*, i8** %4, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %6, align 8
  store i8 %101, i8* %102, align 1
  br label %104

104:                                              ; preds = %96
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %83

107:                                              ; preds = %94
  %108 = load i8*, i8** %6, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %6, align 8
  store i8 39, i8* %108, align 1
  br label %182

110:                                              ; preds = %64
  %111 = load i8*, i8** %4, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 40
  br i1 %118, label %119, label %147

119:                                              ; preds = %110
  br label %120

120:                                              ; preds = %141, %119
  %121 = load i32, i32* %7, align 4
  %122 = icmp slt i32 %121, 80
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = load i8*, i8** %4, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 41
  br label %131

131:                                              ; preds = %123, %120
  %132 = phi i1 [ false, %120 ], [ %130, %123 ]
  br i1 %132, label %133, label %144

133:                                              ; preds = %131
  %134 = load i8*, i8** %4, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = load i8*, i8** %6, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %6, align 8
  store i8 %138, i8* %139, align 1
  br label %141

141:                                              ; preds = %133
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  br label %120

144:                                              ; preds = %131
  %145 = load i8*, i8** %6, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %6, align 8
  store i8 41, i8* %145, align 1
  br label %181

147:                                              ; preds = %110
  br label %148

148:                                              ; preds = %177, %147
  %149 = load i32, i32* %7, align 4
  %150 = icmp slt i32 %149, 80
  br i1 %150, label %151, label %167

151:                                              ; preds = %148
  %152 = load i8*, i8** %4, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 32
  br i1 %158, label %159, label %167

159:                                              ; preds = %151
  %160 = load i8*, i8** %4, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 47
  br label %167

167:                                              ; preds = %159, %151, %148
  %168 = phi i1 [ false, %151 ], [ false, %148 ], [ %166, %159 ]
  br i1 %168, label %169, label %180

169:                                              ; preds = %167
  %170 = load i8*, i8** %4, align 8
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = load i8*, i8** %6, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %6, align 8
  store i8 %174, i8* %175, align 1
  br label %177

177:                                              ; preds = %169
  %178 = load i32, i32* %7, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %7, align 4
  br label %148

180:                                              ; preds = %167
  br label %181

181:                                              ; preds = %180, %144
  br label %182

182:                                              ; preds = %181, %107
  br label %183

183:                                              ; preds = %182, %61
  br label %184

184:                                              ; preds = %183, %34
  %185 = load i8*, i8** %6, align 8
  store i8 0, i8* %185, align 1
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
