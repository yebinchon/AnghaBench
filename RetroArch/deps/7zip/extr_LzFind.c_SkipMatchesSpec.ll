; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzFind.c_SkipMatchesSpec.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzFind.c_SkipMatchesSpec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kEmptyHashValue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i8*, i32*, i32, i32, i32)* @SkipMatchesSpec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SkipMatchesSpec(i32 %0, i32 %1, i32 %2, i8* %3, i32* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %25 = load i32*, i32** %13, align 8
  %26 = load i32, i32* %14, align 4
  %27 = shl i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32* %30, i32** %17, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* %14, align 4
  %33 = shl i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32* %35, i32** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %36

36:                                               ; preds = %160, %8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %21, align 4
  %40 = load i32, i32* %16, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %16, align 4
  %42 = icmp eq i32 %40, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %21, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43, %36
  %48 = load i32, i32* @kEmptyHashValue, align 4
  %49 = load i32*, i32** %18, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %17, align 8
  store i32 %48, i32* %50, align 4
  br label %161

51:                                               ; preds = %43
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %21, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i32, i32* %21, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %15, align 4
  br label %62

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ]
  %64 = add nsw i32 %55, %63
  %65 = shl i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %52, i64 %66
  store i32* %67, i32** %22, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load i32, i32* %21, align 4
  %70 = sext i32 %69 to i64
  %71 = sub i64 0, %70
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  store i8* %72, i8** %23, align 8
  %73 = load i32, i32* %19, align 4
  %74 = load i32, i32* %20, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %62
  %77 = load i32, i32* %19, align 4
  br label %80

78:                                               ; preds = %62
  %79 = load i32, i32* %20, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  store i32 %81, i32* %24, align 4
  %82 = load i8*, i8** %23, align 8
  %83 = load i32, i32* %24, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = load i8*, i8** %12, align 8
  %89 = load i32, i32* %24, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %87, %93
  br i1 %94, label %95, label %131

95:                                               ; preds = %80
  br label %96

96:                                               ; preds = %116, %95
  %97 = load i32, i32* %24, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %24, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %96
  %102 = load i8*, i8** %23, align 8
  %103 = load i32, i32* %24, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8*, i8** %12, align 8
  %109 = load i32, i32* %24, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp ne i32 %107, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %101
  br label %117

116:                                              ; preds = %101
  br label %96

117:                                              ; preds = %115, %96
  %118 = load i32, i32* %24, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %117
  %122 = load i32*, i32** %22, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %18, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i32*, i32** %22, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %17, align 8
  store i32 %128, i32* %129, align 4
  br label %161

130:                                              ; preds = %117
  br label %131

131:                                              ; preds = %130, %80
  %132 = load i8*, i8** %23, align 8
  %133 = load i32, i32* %24, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = load i8*, i8** %12, align 8
  %139 = load i32, i32* %24, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = icmp slt i32 %137, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %131
  %146 = load i32, i32* %10, align 4
  %147 = load i32*, i32** %18, align 8
  store i32 %146, i32* %147, align 4
  %148 = load i32*, i32** %22, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  store i32* %149, i32** %18, align 8
  %150 = load i32*, i32** %18, align 8
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %24, align 4
  store i32 %152, i32* %20, align 4
  br label %160

153:                                              ; preds = %131
  %154 = load i32, i32* %10, align 4
  %155 = load i32*, i32** %17, align 8
  store i32 %154, i32* %155, align 4
  %156 = load i32*, i32** %22, align 8
  store i32* %156, i32** %17, align 8
  %157 = load i32*, i32** %17, align 8
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %24, align 4
  store i32 %159, i32* %19, align 4
  br label %160

160:                                              ; preds = %153, %145
  br label %36

161:                                              ; preds = %121, %47
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
