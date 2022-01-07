; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/utils/extr_common.c_printf_decode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/utils/extr_common.c_printf_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @printf_decode(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** %7, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %166, %3
  %12 = load i8*, i8** %7, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %167

15:                                               ; preds = %11
  %16 = load i64, i64* %8, align 8
  %17 = add i64 %16, 1
  %18 = load i64, i64* %5, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %167

21:                                               ; preds = %15
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  switch i32 %24, label %158 [
    i32 92, label %25
  ]

25:                                               ; preds = %21
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %156 [
    i32 92, label %31
    i32 34, label %38
    i32 110, label %45
    i32 114, label %52
    i32 116, label %59
    i32 101, label %66
    i32 120, label %73
    i32 48, label %106
    i32 49, label %106
    i32 50, label %106
    i32 51, label %106
    i32 52, label %106
    i32 53, label %106
    i32 54, label %106
    i32 55, label %106
  ]

31:                                               ; preds = %25
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* %8, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %8, align 8
  %35 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8 92, i8* %35, align 1
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %7, align 8
  br label %157

38:                                               ; preds = %25
  %39 = load i8*, i8** %4, align 8
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %8, align 8
  %42 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8 34, i8* %42, align 1
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %7, align 8
  br label %157

45:                                               ; preds = %25
  %46 = load i8*, i8** %4, align 8
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %8, align 8
  %49 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8 10, i8* %49, align 1
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %7, align 8
  br label %157

52:                                               ; preds = %25
  %53 = load i8*, i8** %4, align 8
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %8, align 8
  %56 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 13, i8* %56, align 1
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %7, align 8
  br label %157

59:                                               ; preds = %25
  %60 = load i8*, i8** %4, align 8
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %8, align 8
  %63 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8 9, i8* %63, align 1
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %7, align 8
  br label %157

66:                                               ; preds = %25
  %67 = load i8*, i8** %4, align 8
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %8, align 8
  %70 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8 27, i8* %70, align 1
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %7, align 8
  br label %157

73:                                               ; preds = %25
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %7, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @hex2byte(i8* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %73
  %81 = load i8*, i8** %7, align 8
  %82 = load i8, i8* %81, align 1
  %83 = call i32 @hex2num(i8 signext %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %157

87:                                               ; preds = %80
  %88 = load i32, i32* %9, align 4
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %4, align 8
  %91 = load i64, i64* %8, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %8, align 8
  %93 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8 %89, i8* %93, align 1
  %94 = load i8*, i8** %7, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %7, align 8
  br label %105

96:                                               ; preds = %73
  %97 = load i32, i32* %9, align 4
  %98 = trunc i32 %97 to i8
  %99 = load i8*, i8** %4, align 8
  %100 = load i64, i64* %8, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %8, align 8
  %102 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8 %98, i8* %102, align 1
  %103 = load i8*, i8** %7, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  store i8* %104, i8** %7, align 8
  br label %105

105:                                              ; preds = %96, %87
  br label %157

106:                                              ; preds = %25, %25, %25, %25, %25, %25, %25, %25
  %107 = load i8*, i8** %7, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %7, align 8
  %109 = load i8, i8* %107, align 1
  %110 = sext i8 %109 to i32
  %111 = sub nsw i32 %110, 48
  store i32 %111, i32* %9, align 4
  %112 = load i8*, i8** %7, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp sge i32 %114, 48
  br i1 %115, label %116, label %130

116:                                              ; preds = %106
  %117 = load i8*, i8** %7, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp sle i32 %119, 55
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = load i32, i32* %9, align 4
  %123 = mul nsw i32 %122, 8
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %7, align 8
  %126 = load i8, i8* %124, align 1
  %127 = sext i8 %126 to i32
  %128 = sub nsw i32 %127, 48
  %129 = add nsw i32 %123, %128
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %121, %116, %106
  %131 = load i8*, i8** %7, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp sge i32 %133, 48
  br i1 %134, label %135, label %149

135:                                              ; preds = %130
  %136 = load i8*, i8** %7, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp sle i32 %138, 55
  br i1 %139, label %140, label %149

140:                                              ; preds = %135
  %141 = load i32, i32* %9, align 4
  %142 = mul nsw i32 %141, 8
  %143 = load i8*, i8** %7, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %7, align 8
  %145 = load i8, i8* %143, align 1
  %146 = sext i8 %145 to i32
  %147 = sub nsw i32 %146, 48
  %148 = add nsw i32 %142, %147
  store i32 %148, i32* %9, align 4
  br label %149

149:                                              ; preds = %140, %135, %130
  %150 = load i32, i32* %9, align 4
  %151 = trunc i32 %150 to i8
  %152 = load i8*, i8** %4, align 8
  %153 = load i64, i64* %8, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %8, align 8
  %155 = getelementptr inbounds i8, i8* %152, i64 %153
  store i8 %151, i8* %155, align 1
  br label %157

156:                                              ; preds = %25
  br label %157

157:                                              ; preds = %156, %149, %105, %86, %66, %59, %52, %45, %38, %31
  br label %166

158:                                              ; preds = %21
  %159 = load i8*, i8** %7, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %7, align 8
  %161 = load i8, i8* %159, align 1
  %162 = load i8*, i8** %4, align 8
  %163 = load i64, i64* %8, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %8, align 8
  %165 = getelementptr inbounds i8, i8* %162, i64 %163
  store i8 %161, i8* %165, align 1
  br label %166

166:                                              ; preds = %158, %157
  br label %11

167:                                              ; preds = %20, %11
  %168 = load i64, i64* %5, align 8
  %169 = load i64, i64* %8, align 8
  %170 = icmp ugt i64 %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load i8*, i8** %4, align 8
  %173 = load i64, i64* %8, align 8
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  store i8 0, i8* %174, align 1
  br label %175

175:                                              ; preds = %171, %167
  %176 = load i64, i64* %8, align 8
  ret i64 %176
}

declare dso_local i32 @hex2byte(i8*) #1

declare dso_local i32 @hex2num(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
