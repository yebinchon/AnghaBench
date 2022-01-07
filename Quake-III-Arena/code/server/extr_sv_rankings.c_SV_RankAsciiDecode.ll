; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_rankings.c_SV_RankAsciiDecode.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_rankings.c_SV_RankAsciiDecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SV_RankAsciiDecode.s_inverse_encoding = internal global [256 x i8] zeroinitializer, align 16
@SV_RankAsciiDecode.s_init = internal global i8 0, align 1
@s_ascii_encoding = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @SV_RankAsciiDecode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SV_RankAsciiDecode(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x i8], align 1
  %9 = alloca [4 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i8, i8* @SV_RankAsciiDecode.s_init, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %3
  %25 = call i32 @memset(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @SV_RankAsciiDecode.s_inverse_encoding, i64 0, i64 0), i32 255, i32 256)
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %38, %24
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 64
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i32, i32* %11, align 4
  %31 = trunc i32 %30 to i8
  %32 = load i64*, i64** @s_ascii_encoding, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* @SV_RankAsciiDecode.s_inverse_encoding, i64 0, i64 %36
  store i8 %31, i8* %37, align 1
  br label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %26

41:                                               ; preds = %26
  store i8 1, i8* @SV_RankAsciiDecode.s_init, align 1
  br label %42

42:                                               ; preds = %41, %3
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %151, %42
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %154

47:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %84, %47
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %87

51:                                               ; preds = %48
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i64
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* @SV_RankAsciiDecode.s_inverse_encoding, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  br label %70

69:                                               ; preds = %51
  br label %70

70:                                               ; preds = %69, %57
  %71 = phi i32 [ %68, %57 ], [ 0, %69 ]
  %72 = trunc i32 %71 to i8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 %74
  store i8 %72, i8* %75, align 1
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %80, 255
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %156

83:                                               ; preds = %70
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %48

87:                                               ; preds = %48
  %88 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = shl i32 %90, 2
  %92 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = ashr i32 %94, 4
  %96 = or i32 %91, %95
  %97 = trunc i32 %96 to i8
  %98 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  store i8 %97, i8* %98, align 1
  %99 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = shl i32 %101, 4
  %103 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 2
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = ashr i32 %105, 2
  %107 = or i32 %102, %106
  %108 = trunc i32 %107 to i8
  %109 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 1
  store i8 %108, i8* %109, align 1
  %110 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 2
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = shl i32 %112, 6
  %114 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 3
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = or i32 %113, %116
  %118 = trunc i32 %117 to i8
  %119 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 2
  store i8 %118, i8* %119, align 1
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 3
  %122 = load i32, i32* %7, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %87
  br label %131

125:                                              ; preds = %87
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %11, align 4
  %128 = sub nsw i32 %126, %127
  %129 = mul nsw i32 %128, 3
  %130 = sdiv i32 %129, 4
  br label %131

131:                                              ; preds = %125, %124
  %132 = phi i32 [ 3, %124 ], [ %130, %125 ]
  store i32 %132, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %133

133:                                              ; preds = %147, %131
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %13, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %150

137:                                              ; preds = %133
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = load i8*, i8** %5, align 8
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %10, align 4
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  store i8 %141, i8* %146, align 1
  br label %147

147:                                              ; preds = %137
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  br label %133

150:                                              ; preds = %133
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 4
  store i32 %153, i32* %11, align 4
  br label %43

154:                                              ; preds = %43
  %155 = load i32, i32* %10, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %154, %82
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
