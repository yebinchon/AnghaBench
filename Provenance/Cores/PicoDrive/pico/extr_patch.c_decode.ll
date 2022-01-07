; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_patch.c_decode.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_patch.c_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.patch = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.patch*)* @decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode(i8* %0, %struct.patch* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.patch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [16 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.patch* %1, %struct.patch** %4, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.patch*, %struct.patch** %4, align 8
  %17 = getelementptr inbounds %struct.patch, %struct.patch* %16, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = load %struct.patch*, %struct.patch** %4, align 8
  %19 = getelementptr inbounds %struct.patch, %struct.patch* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 8
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i8*, i8** %3, align 8
  %24 = load %struct.patch*, %struct.patch** %4, align 8
  %25 = call i32 @genie_decode(i8* %23, %struct.patch* %24)
  br label %175

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 9
  br i1 %28, label %29, label %72

29:                                               ; preds = %26
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 4
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 45
  br i1 %34, label %35, label %72

35:                                               ; preds = %29
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  store i8 %38, i8* %39, align 16
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 1
  store i8 %42, i8* %43, align 1
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 2
  store i8 %46, i8* %47, align 2
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 3
  store i8 %50, i8* %51, align 1
  %52 = load i8*, i8** %3, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 5
  %54 = load i8, i8* %53, align 1
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 4
  store i8 %54, i8* %55, align 4
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 6
  %58 = load i8, i8* %57, align 1
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 5
  store i8 %58, i8* %59, align 1
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 7
  %62 = load i8, i8* %61, align 1
  %63 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 6
  store i8 %62, i8* %63, align 2
  %64 = load i8*, i8** %3, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 8
  %66 = load i8, i8* %65, align 1
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 7
  store i8 %66, i8* %67, align 1
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 8
  store i8 0, i8* %68, align 8
  %69 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %70 = load %struct.patch*, %struct.patch** %4, align 8
  %71 = call i32 @genie_decode(i8* %69, %struct.patch* %70)
  br label %175

72:                                               ; preds = %29, %26
  %73 = load i8*, i8** %3, align 8
  %74 = call i8* @strchr(i8* %73, i8 signext 58)
  store i8* %74, i8** %9, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  br label %170

77:                                               ; preds = %72
  %78 = load i8*, i8** %3, align 8
  store i8* %78, i8** %10, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  store i8* %80, i8** %11, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load i8*, i8** %3, align 8
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %12, align 4
  %89 = sub nsw i32 %87, %88
  %90 = sub nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %77
  %94 = load i32, i32* %12, align 4
  %95 = icmp sgt i32 %94, 6
  br i1 %95, label %102, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %13, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %13, align 4
  %101 = icmp sgt i32 %100, 4
  br i1 %101, label %102, label %103

102:                                              ; preds = %99, %96, %93, %77
  br label %170

103:                                              ; preds = %99
  store i32 0, i32* %6, align 4
  br label %104

104:                                              ; preds = %113, %103
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %12, align 4
  %107 = sub nsw i32 6, %106
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %104
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %111
  store i8 48, i8* %112, align 1
  br label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %104

116:                                              ; preds = %104
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %129, %116
  %118 = load i32, i32* %6, align 4
  %119 = icmp slt i32 %118, 6
  br i1 %119, label %120, label %134

120:                                              ; preds = %117
  %121 = load i8*, i8** %10, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %127
  store i8 %125, i8* %128, align 1
  br label %129

129:                                              ; preds = %120
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %7, align 4
  br label %117

134:                                              ; preds = %117
  store i32 6, i32* %6, align 4
  br label %135

135:                                              ; preds = %144, %134
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* %13, align 4
  %138 = sub nsw i32 10, %137
  %139 = icmp slt i32 %136, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %142
  store i8 48, i8* %143, align 1
  br label %144

144:                                              ; preds = %140
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %6, align 4
  br label %135

147:                                              ; preds = %135
  store i32 0, i32* %7, align 4
  br label %148

148:                                              ; preds = %160, %147
  %149 = load i32, i32* %6, align 4
  %150 = icmp slt i32 %149, 10
  br i1 %150, label %151, label %165

151:                                              ; preds = %148
  %152 = load i8*, i8** %11, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %158
  store i8 %156, i8* %159, align 1
  br label %160

160:                                              ; preds = %151
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %7, align 4
  br label %148

165:                                              ; preds = %148
  %166 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 10
  store i8 0, i8* %166, align 2
  %167 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %168 = load %struct.patch*, %struct.patch** %4, align 8
  %169 = call i32 @hex_decode(i8* %167, %struct.patch* %168)
  br label %175

170:                                              ; preds = %102, %76
  %171 = load %struct.patch*, %struct.patch** %4, align 8
  %172 = getelementptr inbounds %struct.patch, %struct.patch* %171, i32 0, i32 0
  store i32 -1, i32* %172, align 4
  %173 = load %struct.patch*, %struct.patch** %4, align 8
  %174 = getelementptr inbounds %struct.patch, %struct.patch* %173, i32 0, i32 1
  store i32 -1, i32* %174, align 4
  br label %175

175:                                              ; preds = %170, %165, %35, %22
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @genie_decode(i8*, %struct.patch*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @hex_decode(i8*, %struct.patch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
