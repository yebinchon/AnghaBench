; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_eedi2.c_eedi2_post_process.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_eedi2.c_eedi2_post_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@eedi2_limlut = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eedi2_post_process(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %24 = load i32, i32* %16, align 4
  %25 = sub nsw i32 2, %24
  %26 = load i32, i32* %11, align 4
  %27 = mul nsw i32 %25, %26
  %28 = load i32*, i32** %10, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32* %30, i32** %10, align 8
  %31 = load i32, i32* %16, align 4
  %32 = sub nsw i32 2, %31
  %33 = load i32, i32* %13, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32*, i32** %12, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %12, align 8
  %38 = load i32, i32* %16, align 4
  %39 = sub nsw i32 2, %38
  %40 = load i32, i32* %15, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32*, i32** %14, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %14, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = sub i64 0, %47
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = bitcast i32* %49 to i8*
  store i8* %50, i8** %21, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = bitcast i32* %54 to i8*
  store i8* %55, i8** %22, align 8
  %56 = load i32, i32* %16, align 4
  %57 = sub nsw i32 2, %56
  store i32 %57, i32* %20, align 4
  br label %58

58:                                               ; preds = %159, %9
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* %17, align 4
  %61 = sub nsw i32 %60, 1
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %162

63:                                               ; preds = %58
  store i32 0, i32* %19, align 4
  br label %64

64:                                               ; preds = %130, %63
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* %18, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %133

68:                                               ; preds = %64
  %69 = load i32*, i32** @eedi2_limlut, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %19, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 128
  %76 = call i32 @abs(i32 %75)
  %77 = ashr i32 %76, 2
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %69, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %23, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %19, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %19, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %85, %90
  %92 = call i32 @abs(i32 %91)
  %93 = load i32, i32* %23, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %129

95:                                               ; preds = %68
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %19, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 255
  br i1 %101, label %102, label %129

102:                                              ; preds = %95
  %103 = load i32*, i32** %12, align 8
  %104 = load i32, i32* %19, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 128
  br i1 %108, label %109, label %129

109:                                              ; preds = %102
  %110 = load i8*, i8** %21, align 8
  %111 = load i32, i32* %19, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = load i8*, i8** %22, align 8
  %117 = load i32, i32* %19, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = add nsw i32 %115, %121
  %123 = add nsw i32 %122, 1
  %124 = ashr i32 %123, 1
  %125 = load i32*, i32** %14, align 8
  %126 = load i32, i32* %19, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %124, i32* %128, align 4
  br label %129

129:                                              ; preds = %109, %102, %95, %68
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %19, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %19, align 4
  br label %64

133:                                              ; preds = %64
  %134 = load i32, i32* %11, align 4
  %135 = mul nsw i32 %134, 2
  %136 = load i32*, i32** %10, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32* %138, i32** %10, align 8
  %139 = load i32, i32* %13, align 4
  %140 = mul nsw i32 %139, 2
  %141 = load i32*, i32** %12, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32* %143, i32** %12, align 8
  %144 = load i32, i32* %15, align 4
  %145 = mul nsw i32 %144, 2
  %146 = load i8*, i8** %21, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  store i8* %148, i8** %21, align 8
  %149 = load i32, i32* %15, align 4
  %150 = mul nsw i32 %149, 2
  %151 = load i32*, i32** %14, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32* %153, i32** %14, align 8
  %154 = load i32, i32* %15, align 4
  %155 = mul nsw i32 %154, 2
  %156 = load i8*, i8** %22, align 8
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  store i8* %158, i8** %22, align 8
  br label %159

159:                                              ; preds = %133
  %160 = load i32, i32* %20, align 4
  %161 = add nsw i32 %160, 2
  store i32 %161, i32* %20, align 4
  br label %58

162:                                              ; preds = %58
  ret void
}

declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
