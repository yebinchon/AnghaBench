; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_plist.c_markup_escape_text.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_plist.c_markup_escape_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @markup_escape_text(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @strlen(i8* %11)
  store i32 %12, i32* %6, align 4
  store i32 40, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i8* @malloc(i32 %16)
  store i8* %17, i8** %9, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %197, %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %200

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %24, 8
  %26 = icmp sgt i32 %23, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i8* @realloc(i8* %31, i32 %32)
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %9, align 8
  store i8* %41, i8** %2, align 8
  br label %202

42:                                               ; preds = %27
  %43 = load i8*, i8** %10, align 8
  store i8* %43, i8** %9, align 8
  br label %44

44:                                               ; preds = %42, %22
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  switch i32 %50, label %181 [
    i32 60, label %51
    i32 62, label %72
    i32 39, label %93
    i32 34, label %124
    i32 38, label %155
  ]

51:                                               ; preds = %44
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  store i8 38, i8* %56, align 1
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  store i8 108, i8* %61, align 1
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  store i8 116, i8* %66, align 1
  %67 = load i8*, i8** %9, align 8
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  store i8 59, i8* %71, align 1
  br label %192

72:                                               ; preds = %44
  %73 = load i8*, i8** %9, align 8
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  store i8 38, i8* %77, align 1
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  store i8 103, i8* %82, align 1
  %83 = load i8*, i8** %9, align 8
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  store i8 116, i8* %87, align 1
  %88 = load i8*, i8** %9, align 8
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  store i8 59, i8* %92, align 1
  br label %192

93:                                               ; preds = %44
  %94 = load i8*, i8** %9, align 8
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  store i8 38, i8* %98, align 1
  %99 = load i8*, i8** %9, align 8
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  store i8 97, i8* %103, align 1
  %104 = load i8*, i8** %9, align 8
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  store i8 112, i8* %108, align 1
  %109 = load i8*, i8** %9, align 8
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  store i8 111, i8* %113, align 1
  %114 = load i8*, i8** %9, align 8
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  store i8 115, i8* %118, align 1
  %119 = load i8*, i8** %9, align 8
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %5, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  store i8 59, i8* %123, align 1
  br label %192

124:                                              ; preds = %44
  %125 = load i8*, i8** %9, align 8
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  store i8 38, i8* %129, align 1
  %130 = load i8*, i8** %9, align 8
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  store i8 113, i8* %134, align 1
  %135 = load i8*, i8** %9, align 8
  %136 = load i32, i32* %5, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %5, align 4
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8, i8* %135, i64 %138
  store i8 117, i8* %139, align 1
  %140 = load i8*, i8** %9, align 8
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %5, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i8, i8* %140, i64 %143
  store i8 111, i8* %144, align 1
  %145 = load i8*, i8** %9, align 8
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i8, i8* %145, i64 %148
  store i8 116, i8* %149, align 1
  %150 = load i8*, i8** %9, align 8
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %5, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  store i8 59, i8* %154, align 1
  br label %192

155:                                              ; preds = %44
  %156 = load i8*, i8** %9, align 8
  %157 = load i32, i32* %5, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %5, align 4
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i8, i8* %156, i64 %159
  store i8 38, i8* %160, align 1
  %161 = load i8*, i8** %9, align 8
  %162 = load i32, i32* %5, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %5, align 4
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8, i8* %161, i64 %164
  store i8 97, i8* %165, align 1
  %166 = load i8*, i8** %9, align 8
  %167 = load i32, i32* %5, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %5, align 4
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i8, i8* %166, i64 %169
  store i8 109, i8* %170, align 1
  %171 = load i8*, i8** %9, align 8
  %172 = load i32, i32* %5, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %5, align 4
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i8, i8* %171, i64 %174
  store i8 112, i8* %175, align 1
  %176 = load i8*, i8** %9, align 8
  %177 = load i32, i32* %5, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %5, align 4
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i8, i8* %176, i64 %179
  store i8 59, i8* %180, align 1
  br label %192

181:                                              ; preds = %44
  %182 = load i8*, i8** %3, align 8
  %183 = load i32, i32* %4, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = load i8*, i8** %9, align 8
  %188 = load i32, i32* %5, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %5, align 4
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i8, i8* %187, i64 %190
  store i8 %186, i8* %191, align 1
  br label %192

192:                                              ; preds = %181, %155, %124, %93, %72, %51
  %193 = load i8*, i8** %9, align 8
  %194 = load i32, i32* %5, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  store i8 0, i8* %196, align 1
  br label %197

197:                                              ; preds = %192
  %198 = load i32, i32* %4, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %4, align 4
  br label %18

200:                                              ; preds = %18
  %201 = load i8*, i8** %9, align 8
  store i8* %201, i8** %2, align 8
  br label %202

202:                                              ; preds = %200, %36
  %203 = load i8*, i8** %2, align 8
  ret i8* %203
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i8* @realloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
